#!/usr/bin/python3
"""
A python script that create an API using the below url
"""


import csv
import json
import sys
import urllib.request

if __name__ == '__main__':
    employeeId = sys.argv[1]
    baseUrl = "https://jsonplaceholder.typicode.com/users"
    url = baseUrl + "/" + employeeId

    with urllib.request.urlopen(url) as response:
        data = json.loads(response.read().decode())
        userName = data.get('username')

    todoUrl = url + "/todos"
    with urllib.request.urlopen(todoUrl) as response:
        tasks = json.loads(response.read().decode())

    output = {employeeId: []}
    for task in tasks:
        output[employeeId].append({
            'task': task.get('title'),
            'completed': task.get('completed'),
            'username': userName
        })

    with open('{}.json'.format(employeeId), mode='w') as file:
        json.dump(output, file)
