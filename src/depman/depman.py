#!/bin/python

import sys
import commands

def get_command(args):
    if len(args) >= 2:
        return args[1]

    return "default"

def get_arguments(args):
    if len(args) >= 3:
        return args[2:]
    
    return []

def print_command_not_found(arguments):
    print("Command not found")

def get_command_by_name(command_name):
    command_name = "command_" + command_name

    if hasattr(commands, command_name):
        return getattr(commands, command_name)
    return print_command_not_found

if __name__ == "__main__":
    command_name = get_command(sys.argv)
    arguments = get_arguments(sys.argv)
    command = get_command_by_name(command_name)

    command(arguments)
