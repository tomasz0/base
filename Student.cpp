#include "Student.hpp"
#include <iostream>
#include <iomanip>

Student::Student(const std::string & name,
                 const std::string & lastName,
                 const std::string & pesel,
                 Gender gender,
                 const std::string & address,
                 int index)
    : Person(name, lastName, pesel, gender, address)
    , index_(index)
{}

void Student::show() const
{
    std::cout << "Student:  ";
    Person::show();
    std::cout << std::setw(7) << index_ << std::endl;
}

int Student::getIndex() const
{
    return index_;
}
