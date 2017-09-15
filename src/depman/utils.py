#!/bin/python

import os
import os.path

def read_file(filename):
    try:
        with open(filename) as file:
            content = file.readlines()
        return [line.strip() for line in content]
    except FileNotFoundError:
        return []

def append_line(filename, line):
    line = line + "\n"
    if not os.path.isfile(filename):
        file = open(filename, "w")
    else:
        file = open(filename, "a")

    file.write(line)
    file.close()

def delete_file(filename):
    os.remove(filename)

def get_installed_plugins():
    filepath = ".depman/installed"
    installed_plugins = read_file(filepath)
    return installed_plugins

def install_plugin(plugin_name, parent):
    filepath = parent + "/.depman/installed"
    append_line(filepath, plugin_name)


