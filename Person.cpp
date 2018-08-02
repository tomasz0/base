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

std::string Person::getLastName() const
{
    return lastName_;
}

std::string Person::getPesel() const
{
    return pesel_;
}

std::string Person::toString() const
{
    std::stringstream ss;
    ss << std::setw(12) << name_ << " "
       << std::setw(12) << lastName_ << " "
       << std::setw(12) << pesel_ << " "
       << std::setw(1) << static_cast<char>(gender_) << " "
       << std::setw(40) << address_ << " ";
    return ss.str();
}
