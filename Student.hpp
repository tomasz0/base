#pragma once
#include <string>

class Student
{
public:
    Student(const std::string & name,
            const std::string & lastName,
            int index);
    int getIndex() const;

private:
    std::string name_;
    std::string lastName_;
    int index_;
};
