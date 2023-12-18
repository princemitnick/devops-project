import os

USER = os.getenv('USER')
SHELL = os.getenv('SHELL')

print(f"User : {USER} - SHELL : {SHELL}")