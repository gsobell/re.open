#!/usr/bin/env python
# This is the pseudo code from the example

applications1 = get_applications()
while True:
    time.sleep(3)
    applications2 = get_applications()
    closed = [app for app in applications1 if not app in applications2]
    if closed:
        most_recent = closed[0]
        # store the process in a file, to be available to run as most recently closed
        open(f, "wt").write(most_recent)
    application1 = application2
