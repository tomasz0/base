#include "Person.hpp"
#include <sstream>
#include <iomanip>

Person::Person(const std::string & name,
               const std::string & lastName,
               const std::string & pesel,
               Gender gender,
               const std::string & address)
    : name_(name)
    , lastName_(lastName)
    , pesel_(pesel)
    , gender_(gender)
    , address_(address)
{}

Person::Person(const std::string &packedData)
    : name_(packedData.substr(10, 12))
    , lastName_(packedData.substr(23, 12))
    , pesel_(packedData.substr(36, 11))
    , gender_(packedData.substr(48, 1) == "M" ? Gender::Male : Gender::Female)
    , address_(packedData.substr(50, 40))
{}

std::string Person::getLastName() const
{
    return lastName_;
}

std::string Person::getPesel() const
{
    return pesel_;
}

int Person::getSalary() const
{
    return 0;
}

void Person::setSalary(unsigned int)
{}

std::string Person::toString(char delimeter) const
{
    std::stringstream ss;
    ss << std::setw(12) << name_ << delimeter
       << std::setw(12) << lastName_ << delimeter
       << std::setw(11) << pesel_ << delimeter
       << std::setw(1) << static_cast<char>(gender_) << delimeter
       << std::setw(40) << address_ << delimeter;
    return ss.str();
}
