#include "foo.h"

template <typename T> void Foo<T>::set(T t){
    this->t = t;
}

template <typename T> T Foo<T>::get(){
    return this->t;
}