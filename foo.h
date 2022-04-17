#pragma once

template <typename T> class Foo {
  public:
    void set(T t);
    T get();

  private:
    T t;
};