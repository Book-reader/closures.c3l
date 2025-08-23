## Closures in C3

use the python script if you need to support more than 10 parameters

> [!warning]
> do not return these closures from the function that created them or use them across threads,
> all their data is allocated on the stack and will break if the function that created them returns
