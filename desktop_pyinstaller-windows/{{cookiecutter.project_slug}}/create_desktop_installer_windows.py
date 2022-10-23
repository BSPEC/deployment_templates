
import os, shutil
import secrets

import PyInstaller.__main__


workdir = os.getcwd()

name = "{{cookiecutter.project_name}}"
key = secrets.token_urlsafe(256)
devdir = os.getcwd()
distdir = os.path.join(devdir, "./desktop_windows/dist",name)
builddir = os.path.join(devdir, "./desktop_windows/build")

# call pyinstaller directly
PyInstaller.__main__.run([
    '{{ cookiecutter.desktop_entrypoint }}',
    '--distpath', distdir,
    '--workpath', builddir,
    {% if cookiecutter.desktop_onefile == 'YES' %}'--onefile',{% endif %}
    {% if cookiecutter.desktop_noconsole == 'YES' %}'--noconsole',{% endif %}
    {% if cookiecutter.desktop_windowed == 'YES' %}'--windowed',{% endif %}
    {% if cookiecutter.desktop_noconfirm == 'YES' %}'--noconfirm',{% endif %}
    {% if cookiecutter.desktop_clean == 'YES' %}'--clean',{% endif %}
    {%- for data in cookiecutter.desktop_add_data_points['add_data'] %}
    '--add-data', '{{data}}',{% endfor %}
    '--additional-hooks-dir', 'hooks',
    {%- for hidden_import in cookiecutter.desktop_hidden_imports['hidden_import'] %}
    '--hidden-import', '{{hidden_import}}',{% endfor %}
    '--icon', '{{ cookiecutter.desktop_icon_ico }}',
    '--key', key
    '--name', name,
    ])

{%- for file_or_folder in cookiecutter.desktop_copy_files_and_folders_to_local_foler['files_or_folders'] %}
copy_to_dir = f'{distdir}/{{file_or_folder}}'
shutil.copy2("{{file_or_folder}}", copy_to_dir, dirs_exist_ok=True)
{% endfor %}

