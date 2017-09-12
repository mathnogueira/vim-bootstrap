#!/bin/bash

tasks_logged=0
tasks=()
total_tasks=0

function set_log_tasks () {
    tasks=$1
    total_tasks=${#tasks[@]}
    ((total_tasks--))
}

function log_task () {
    ((tasks_logged++))
    echo "(${tasks_logged}/${total_tasks}) ${tasks[$tasks_logged]}"
}
