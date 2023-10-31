import os
import sys
import pyperclip

# current_path = os.path.abspath(sys.argv[0])
current_path = os.getcwd()
rel_path = os.path.relpath(current_path, sys.argv[1])

path = "{}/{}".format(rel_path, os.path.basename(sys.argv[1]))
print(path)
pyperclip.copy(path)
