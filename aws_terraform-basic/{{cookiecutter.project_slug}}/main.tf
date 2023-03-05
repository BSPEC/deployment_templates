
{%- for module in cookiecutter.aws_terraform_modules['modules'] %}
{{ cookiecutter.aws_terraform_modules['modules'][module] }}
{% endfor %}