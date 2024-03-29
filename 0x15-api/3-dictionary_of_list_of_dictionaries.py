#!/usr/bin/python3
"""
A python script that create an API using the below url
"""


import csv
import json
import urllib.request

if __name__ == '__main__':

    url = "https://jsonplaceholder.typicode.com/users"

    with urllib.request.urlopen(url) as response:
        data = json.loads(response.read().decode())

    employees = {}
    for user in data:
        userId = user.get('id')
        userName = user.get('username')
        new_url = "https://jsonplaceholder.typicode.com/users/{}".format(
            userId)

        todoUrl = new_url + "/todos"
        with urllib.request.urlopen(todoUrl) as response:
            tasks = json.loads(response.read().decode())

        employees[userId] = []
        for task in tasks:
            employees[userId].append({
                'task': task.get('title'),
                'completed': task.get('completed'),
                'username': userName
            })

    with open('todo_all_employees.json'.format(userId), mode='w') as file:
        json.dump(employees, file)
