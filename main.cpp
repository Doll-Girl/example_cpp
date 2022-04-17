#include "foo.h"
#include <iostream>

int main() {

    Foo<int> *foo = new Foo<int>();
    foo->set(10);

    std::cout << foo->get() << std::endl;

    return 0;
}