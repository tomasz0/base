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

std::string Employee::toString() const
{
    std::stringstream ss;
    ss << "Employee: "
       << Person::toString()
       << std::setw(7) << salary_ << " PLN" << std::endl;
    return ss.str();
}

int Employee::getSalary() const
{
    return salary_;
}
