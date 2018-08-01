#include "Employee.hpp"

Employee::Employee(const std::string & name,
                 const std::string & lastName,
                 const std::string & pesel,
                 Gender gender,
                 const std::string & address,
                 int salary)
    : Person(name, lastName, pesel, gender, address)
    , salary_(salary)
{}

int Employee::getSalary() const
{
    return salary_;
}
