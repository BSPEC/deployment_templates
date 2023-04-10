import pprint

from jinja2 import Template

print("**********Pre Project Hook**************")

vars_template = """
{% raw %}
# {{module_name}} Vars{% for key in vars %}
{% if vars[key] is mapping %}
{{module_name}}_{{key}} = { 
{% for nested_key in vars[key] %}{{nested_key}} = "{{vars[key][nested_key]}}"
{% endfor %}}
{% elif vars[key].__class__.__name__ == 'list' %}
{{module_name}}_{{key}} = [{% for nested_obj in vars[key] %}
  {% if nested_obj is mapping %}{
    {% for nested_obj_key in nested_obj %}{{nested_obj_key}} = "{{nested_obj[nested_obj_key]}}"
    {% endfor %}
  }{% if not loop.last %},{% endif %}
  {% else %}{{nested_obj}}{% endif %}{% endfor %}]
{% else %}{{module_name}}_{{key}} = "{{vars[key]}}"{% endif %}{% endfor %}
{% endraw %}
"""


dynamodb_template = """
{% raw %}
module "{{ module_name }}" {
  source = "./module_dynamodb"

  region = var.{{module_name}}_region

  table_name     = var.{{module_name}}_table_name
  billing_mode   = var.{{module_name}}_billing_mode
  read_capacity  = var.{{module_name}}_read_capacity
  write_capacity = var.{{module_name}}_write_capacity

  attribute = var.{{module_name}}_attribute

  key_schema = var.{{module_name}}_key_schema
}
{% endraw %}
"""

ec2_template = """
{% raw %}
module "{{ module_name }}" {
  source = "./module_ec2"

  region = var.{{module_name}}_region

  instance_type       = var.{{module_name}}_instance_type
  ami                 = var.{{module_name}}_ami
  vpc_security_group  = var.{{module_name}}_vpc_security_group
  subnet_id           = var.{{module_name}}_subnet_id
  associate_public_ip = var.{{module_name}}_associate_public_ip
  key_name            = var.{{module_name}}_key_name
  user_data           = file("${var.{{module_name}}_userdata}")
}
{% endraw %}
"""

lambda_template = """
{% raw %}
module "{{ module_name }}" {
  source = "./modules/module_lambda"

  region = var.{{module_name}}_region

  function_name         = var.{{module_name}}_function_name
  handler               = var.{{module_name}}_handler
  runtime               = var.{{module_name}}_runtime
  filename              = var.{{module_name}}_filename
  environment_variables = var.{{module_name}}_environment_variables
  iam_role_name         = var.{{module_name}}_iam_role_name
}
{% endraw %}
"""

s3_template = """
{% raw %}
module "{{ module_name }}" {
  source = "./modules/module_s3"

  region      = var.{{module_name}}_region
  bucket_name = var.{{module_name}}_bucket_name
}
{% endraw %}
"""

jinja_templates = {
    "dynamodb": Template(dynamodb_template),
    "ec2": Template(ec2_template),
    "lambda": Template(lambda_template),
    "s3": Template(s3_template),
    "vars": Template(vars_template),
}

modules = {{cookiecutter.aws_terraform_modules["modules"]}}

pprint.pprint(modules)

processed_aws_terraform_modules = []
processed_aws_terraform_module_vars = []
for module in modules:
    processed_aws_terraform_modules.append(
        jinja_templates[module["module_type"]].render(module)
    )
    processed_aws_terraform_module_vars.append(jinja_templates["vars"].render(module))


with open("main.tf", "w+") as f:
    f.seek(0)
    f.write("".join(processed_aws_terraform_modules))
    f.truncate()


with open("terraform.tfvars", "w+") as f:
    f.seek(0)
    f.write("".join(processed_aws_terraform_module_vars))
    f.truncate()
