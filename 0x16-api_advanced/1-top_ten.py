#!/usr/bin/python3
""" API """

import requests


def top_ten(subreddit):
    """
    Returns the top ten hot post for a given subreddit.

    Args:
        subreddit: The name of the subreddit.

    Returns:
        only on some exceptions.
    """

    # Make sure the subreddit is valid.
    if not subreddit:
        return 0

    # Create the URL for the API request.
    url = "https://api.reddit.com/r/{}/hot.json".format(subreddit)

    # Declaring User Agent
    browser = {'User-Agent': 'Google Chrome Version 114.0.5735.90'}

    # Make the request.
    response = requests.get(url, headers=browser)

    # Checking the response status code (Testing).
    # if response.status_code != 200:
    # return 0

    # Parse the response JSON.
    data = response.json()

    # Get the data of child-subreddit
    hot_post = data['data']['children']

    try:
        if hot_post:
            # Return the top ten hot topics.
            for post in range(10):
                print(hot_post[post]['data']['title'])
        else:
            print(None)

    except Exception:
        return 0
