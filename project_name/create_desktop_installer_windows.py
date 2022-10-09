
import os, shutil
import secrets

import PyInstaller.__main__


def copytree(src, dst, symlinks=False, ignore=None):
    for item in os.listdir(src):
        s = os.path.join(src, item)
        d = os.path.join(dst, item)
        if os.path.isdir(s):
            shutil.copytree(s, d, symlinks, ignore)
        else:
            shutil.copy2(s, d)

# my spec file in "dev\config" dir
workdir = os.getcwd()
# fn_msi_spec = os.path.join(workdir, 'main_msi.spec')

# define the "dev\dist" and "dev\build" dirs
# os.chdir("..")
name = "Project_name"
key = secrets.token_urlsafe(256)
devdir = os.getcwd()
distdir = os.path.join(devdir, "./desktop_windows/dist",name)
builddir = os.path.join(devdir, "./desktop_windows/build")

# call pyinstaller directly
PyInstaller.__main__.run([
    'run_desktop.py',
    '--distpath', distdir,
    '--workpath', builddir,
    '--onefile',
    '--noconsole',
    '--windowed',
    '--noconfirm',
    '--clean',
    '--add-data', app;app,
    
    '--additional-hooks-dir', 'hooks',
    '--hidden-import', engineio.async_drivers,
    
    '--icon', './dist/app/static/images/icon.ico',
    '--key', key
    '--name', name,
    ])
copy_to_dir = f'{distdir}/config.py'
shutil.copy2("config.py", copy_to_dir, dirs_exist_ok=True)

copy_to_dir = f'{distdir}/engineio.async_drivers'
shutil.copy2("engineio.async_drivers", copy_to_dir, dirs_exist_ok=True)


