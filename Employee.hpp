#pragma once
#include "Person.hpp"
#include <string>

class Employee : public Person
{
public:
    Employee(const std::string & name,
             const std::string & lastName,
             const std::string & pesel,
             Gender gender,
             const std::string & address,
             int salary);
    Employee(const std::string & packedData);
    std::string toString(char delimeter = ' ') const override;
    int getSalary() const;

private:
    int salary_;
};
