#!/usr/bin/python3
""" Reddit API """

import requests
after = None


def recurse(subreddit, hot_list=[]):
    """Returning a list containing the titles of all hot articles for a given
    subreddit"""
    global after

    # Declaring User Agent
    browser = {'User-Agent': 'Google Chrome Version 114.0.5735.90'}

    # Get url
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    parameters = {'after': after}

    # Getting response
    response = requests.get(url, params=parameters, headers=browser,
                            allow_redirects=False)

    # Checking status and proceeding with data extraction
    if response.status_code == 200:
        data = response.json().get("data").get("after")
        if data is not None:
            after = data
            recurse(subreddit, hot_list)
        all_titles = response.json().get("data").get("children")
        for title_ in all_titles:
            hot_list.append(title_.get("data").get("title"))
        return hot_list
    else:
        return (None)
