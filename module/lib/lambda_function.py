import random
from datetime import datetime
import requests


def lambda_handler(event, context):
    now = datetime.now()
    month = now.month
    day = now.day

    url = f"https://byabbe.se/on-this-day/{month}/{day}/events.json"

    response = requests.get(url).json()
    event = random.choice(response["events"])

    return f"On this day in {event['year']}: {event['description']}"
