# Groundhog Day

> Okay, campers, rise and shine...

A nice, little loop for rails console to keep your destructive changes in a transaction.

Use it like this:

    > bin/rails c
    Loading development environment (Rails 3.2.6)
    [1] pry(main)> Groundhog.day

Then, when you want to restart things, hit <code>ctrl-D</code> to abort the transaction and start a new one. If you want to break the cycle, just hit <code>ctrl-D ctrl-C</code> quickly.
