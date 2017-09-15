#!/bin/python

import utils

def command_list(_):
    installed_plugins = utils.get_installed_plugins()
    installed_plugins.sort()
    if len(installed_plugins) > 0: 
        print("List of installed plugins:")
        for plugin in installed_plugins:
            print ("> " + plugin)
    else:
        print("No plugins installed")

def command_install(arguments):
    if len(arguments) < 2:
        print("Missing argument: plugin_name .depman_parent")
        return

    plugin_name = arguments[0]
    parent_folder = arguments[1]
    utils.install_plugin(plugin_name, parent_folder)
