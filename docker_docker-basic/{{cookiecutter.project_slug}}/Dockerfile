
FROM {{ cookiecutter.docker_image }}

LABEL vendor="{{cookiecutter.vendor}}"
LABEL Created="{{cookiecutter.developer_name}} <{{cookiecutter.developer_email}}>"
LABEL maintainer="{{cookiecutter.developer_name}}"
LABEL version="{{ cookiecutter.version }}"
LABEL description="{{ cookiecutter.project_short_description }}"

# load dependancies from template docker_pre_copy_dependencies

{%- for dependency in cookiecutter.docker_pre_copy_dependencies['dependencies'] %}
{{ cookiecutter.docker_pre_copy_dependencies['dependencies'][dependency] }}
{% endfor %}

COPY ./dist .

EXPOSE {{ cookiecutter.docker_port }}
ENTRYPOINT {{ cookiecutter.docker_entrypoint["entrypoint"] }}
CMD {{ cookiecutter.docker_cmd["cmd"] }}
