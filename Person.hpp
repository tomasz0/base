#pragma once
#include <string>

enum class Gender : const char
{
    Male = 'M',
    Female = 'F'
};

class Person
{
public:
    Person(const std::string & name,
           const std::string & lastName,
           const std::string & pesel,
           Gender gender,
           const std::string & address);
    virtual ~Person() = default;

    virtual void show() const;
    std::string getLastName() const;
    std::string getPesel() const;

private:
    std::string name_;
    std::string lastName_;
    const std::string pesel_;
    const Gender gender_;
    std::string address_;
};
