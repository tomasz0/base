#include "Employee.hpp"
#include <sstream>
#include <iomanip>

Employee::Employee(const std::string & name,
                 const std::string & lastName,
                 const std::string & pesel,
                 Gender gender,
                 const std::string & address,
                 int salary)
    : Person(name, lastName, pesel, gender, address)
    , salary_(salary)
{}

Employee::Employee(const std::string & packedData)
    : Person(packedData)
    , salary_(std::stoi(packedData.substr(92, 7)))
{}

std::string Employee::toString(char delimeter) const
{
    std::stringstream ss;
    ss << "Employee: "
       << Person::toString(delimeter)
       << std::setw(7) << salary_ << " PLN" << std::endl;
    return ss.str();
}

int Employee::getSalary() const
{
    return salary_;
}
