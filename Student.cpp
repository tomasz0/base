#include "Student.hpp"

Student::Student(const std::string & name,
                 const std::string & lastName,
                 int index)
    : name_(name)
    , lastName_(lastName)
    , index_(index)
{}

int Student::getIndex() const
{
    return index_;
}
