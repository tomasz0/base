#include "Student.hpp"
#include <sstream>
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

Student::Student(const std::string & packedData)
    : Person(packedData)
    , index_(std::stoi(packedData.substr(92, 7)))
{}

std::string Student::toString(char delimeter) const
{
    std::stringstream ss;
    ss << "Student:  "
       << Person::toString(delimeter)
       << std::setw(7) << index_ << std::endl;
    return ss.str();
}

int Student::getIndex() const
{
    return index_;
}

int Student::getSalary() const
{
    return 0;
}
