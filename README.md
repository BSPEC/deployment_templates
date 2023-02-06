# Deployment Templates
Deployment Templates for multiple platforms and strategies per platform. Each platform strategy is it's own template, that can then automatically be used for specific deployments and is intended to be used with [BSPEC Project Template](https://github.com/BSPEC/project_template).

Each template is a `cookiecutter` template that is intended to be used with a `cookiecutter directory` parameter allowing you to create multiple deployment platforms.

## Notes:
This is part of the natural progression from the Flask-BDA project found here: [https://github.com/RyanJulyan/Flask-BDA](https://github.com/RyanJulyan/Flask-BDA) and should be considered it's successor.

## Requirements
------------
Install `cookiecutter` command line: 
```shell
pip install cookiecutter
pip install jinja2-ansible-filters

```

## Quickstart
------------
```shell
cookiecutter https://github.com/BSPEC/deployment_templates --directory='docker_docker-basic'

```
