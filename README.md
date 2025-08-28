## Explicitly capturing Closures in C3

See [example/main.c3](./example/main.c3) for an example of usage and the doc comments in [closure.c3](./closure.c3) for a more detailed explanation of usage.

There is a limit of 20 total parameters that can be increased by modifying the python file [generator.py](./generator.py)

> [!WARNING]
> Currently passing structs or enough integer sized parameters will cause it to break. I'm working on fixing this but it's going to require a second rewrite to fix the jank this code is
