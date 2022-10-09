import sys
import platform


print("**********Pre Project Hook**************")
my_os = platform.system()
valid_os_names = ["Linux"]

if my_os not in valid_os_names:
    print("ERROR: you must be on a Linux machine to build for Linux")

    # exits with status 1 to indicate failure
    sys.exit(1)
