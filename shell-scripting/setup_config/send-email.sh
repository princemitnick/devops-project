#!/usr/bin/env bash

recipient="ingjeanbaptiste@gmail.com"
subject="Task completed"
message="Your task has been completed successfully"

echo "$message" | sendmail -s "$subject" "$recipient"