/**
 * @file  test_1.cpp
 * @brief Unit test for library_1
 */

#include "library_1.h"

#include <cassert>
#include <iostream>

int main (int argc, char **argv)
{
  using namespace my_project;
  using namespace library_1;
    
  assert (sum (1, 1) == 2);
}
