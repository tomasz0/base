#pragma once
#include <string>

enum class Gender
{
    Male,
    Female
};

class Person
{
public:
    Person(const std::string & name,
           const std::string & lastName,
           const std::string & pesel,
           Gender gender,
           const std::string & address);

    std::string getLastName() const;

private:
    std::string name_;
    std::string lastName_;
    const std::string pesel_;
    const Gender gender_;
    std::string address_;
};
