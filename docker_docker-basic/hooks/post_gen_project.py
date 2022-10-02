import os.path
import os
import shutil

print("**********Post Project Hook**************")

BASE_DIR = os.path.dirname(os.getcwd())

copy_from_dist = False if "{{cookiecutter.copy_from_package_dist}}" == "NO" else True

if copy_from_dist:
    package_dist_dir = r"{{cookiecutter.package_dist_dir|string}}".strip()

    package_dist_dir_type = True
    if "{{cookiecutter.package_dist_dir_type}}" == "Absolute":
        package_dist_dir_type = False

    if package_dist_dir_type:
        package_dist_dir_path = os.path.join(BASE_DIR, package_dist_dir)
    else:
        package_dist_dir_path = os.path.join("", package_dist_dir)

    print(f"Copy package dist folder from: '{package_dist_dir_path}'")

    deployment_dist_dir = "{{cookiecutter.project_slug}}/dist"
    deployment_dist_dir_path = os.path.join(BASE_DIR, deployment_dist_dir)

    shutil.copytree(package_dist_dir_path, deployment_dist_dir_path, dirs_exist_ok=True)
