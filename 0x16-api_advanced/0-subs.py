#!/usr/bin/python3
""" API """

import requests


def number_of_subscribers(subreddit):
    """
    Returns the number of subscribers for a given subreddit.

    Args:
        subreddit: The name of the subreddit.

    Returns:
        The number of subscribers, or 0 if the subreddit is invalid.
    """

    # Make sure the subreddit is valid.
    if not subreddit:
        return 0

    # Create the URL for the API request.
    url = "https://api.reddit.com/r/{}/about.json".format(subreddit)

    # Declaring User Agent
    browser = {'User-Agent': 'Google Chrome Version 114.0.5735.90'}

    # Make the request.
    response = requests.get(url, headers=browser)

    # Checking the response status code (Testing).
    # if response.status_code != 200:
    # return 0

    # Parse the response JSON.
    data = response.json()

    try:
        # Return the number of subscribers.
        return data.get("data").get("subscribers")

    except Exception:
        return 0
