/**
 * @file  tool_1.cpp
 * @brief Document this tool
 */

#include "library_1.h"
#include "library_2.h"
#include <iostream>

int main (int argc, char **argv)
{
  using namespace my_project;
  std::cout << "Hello world!" << std::endl;
  std::cout << library_1::sum (1, 1) << std::endl;
  std::cout << library_2::difference (1, 1) << std::endl;
}
