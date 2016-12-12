#include <iostream>

#include "liba.h"

#include "swig-example.h"

void swig_example_hello()
{
    std::cout << "Hello from swig-example" << std::endl;
}

void link_liba_hello()
{
    liba_hello();
}
