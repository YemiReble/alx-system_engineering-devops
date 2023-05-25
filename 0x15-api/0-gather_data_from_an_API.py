#!/usr/bin/python3
"""
Python script that, using a REST API, for a given employee
ID, returns information about his/her TODO list progress.
"""


import requests
import sys


if __name__ == '__main__':
    Id = sys.argv[1]
    webUrl = "https://jsonplaceholder.typicode.com/users"
    url = webUrl + "/" + Id

    response = requests.get(url)
    employeeName = response.json().get('name')

    todoUrl = url + "/todos"
    response = requests.get(todoUrl)
    tasks = response.json()
    done = 0
    done_tasks = []

    for task in tasks:
        if task.get('completed'):
            done_tasks.append(task)
            done += 1

    print("Employee {} is done with tasks({}/{}):"
          .format(employeeName, done, len(tasks)))

    for task in done_tasks:
        print("\t {}".format(task.get('title')))
