import os
import sys
import pyperclip

current_path = os.getcwd()

rel_path = os.path.relpath(sys.argv[1], current_path)
print(rel_path)
pyperclip.copy(rel_path)
