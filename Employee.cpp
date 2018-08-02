#include "Employee.hpp"
#include <iostream>
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

void Employee::show() const
{
    std::cout << "Employee: ";
    Person::show();
    std::cout << std::setw(7) << salary_ << " PLN" << std::endl;
}

int Employee::getSalary() const
{
    return salary_;
}
