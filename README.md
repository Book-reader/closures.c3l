## Closures in C3

use the python script if you need to support more than 10 parameters

> [!warning]
> do not return these closures from the function that created them or use them across threads. They store a `&&` pointer to what you pass them which always breaks as soon as you exit the function.
