import os.path
import os
import shutil

print("**********Post Project Hook**************")

BASE_DIR = os.path.dirname(os.getcwd())

copy_from_dist = False if "{{cookiecutter.copy_from_platform_dist}}" == "NO" else True

if copy_from_dist:
    platform_dist_dir = r"{{cookiecutter.platform_dist_dir|string}}".strip()

    platform_dist_dir_type = True
    if "{{cookiecutter.platform_dist_dir_type}}" == "Absolute":
        platform_dist_dir_type = False

    if platform_dist_dir_type:
        platform_dist_dir_path = os.path.join(BASE_DIR, platform_dist_dir)
    else:
        platform_dist_dir_path = os.path.join("", platform_dist_dir)

    print(f"Copy platform dist folder from: '{platform_dist_dir_path}'")

    deployment_dist_dir = "{{cookiecutter.project_slug}}/dist"
    deployment_dist_dir_path = os.path.join(BASE_DIR, deployment_dist_dir)

    shutil.copytree(platform_dist_dir_path, deployment_dist_dir_path, dirs_exist_ok=True)
