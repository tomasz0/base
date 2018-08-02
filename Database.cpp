#include "Database.hpp"
#include "Student.hpp"
#include "Employee.hpp"
#include <algorithm>
#include <iostream>
#include <functional>
#include <fstream>

NotFound::NotFound(const std::string &message)
    : std::out_of_range(message)
{}

bool Database::addPerson(Person* person)
{
    people_.push_back(person);
}

Person* Database::findByName(const std::string & lastName) const
{
    return find([lastName](auto item){ return item->getLastName() == lastName; });
}

Person* Database::findByPesel(const std::string & pesel) const
{
    return find([pesel](auto item){ return item->getPesel() == pesel; });
}

Person* Database::find(std::function<bool(People::value_type)> what) const
{
    auto it = std::find_if(people_.begin(), people_.end(), what);
    if (it != people_.end())
    {
        return *it;
    }
    throw NotFound("Does not exist");
}

void Database::show() const
{
    std::cout << "=== DATABASE: ===" << std::endl;
    for(const auto & person : people_)
    {
        std::cout << person->toString();
    }
}

void Database::sort(SortCriteria criterion)
{
    switch (criterion)
    {
    case SortCriteria::LastName: { sortByName(); break; }
    case SortCriteria::Pesel:    { sortByPesel(); break; }
    case SortCriteria::Salary:   { sortBySalary(); break; }
    }
}

void Database::sortByName()
{
    std::sort(people_.begin(), people_.end(), [](Person* lhs, Person* rhs)
    {
        return lhs->getLastName() < rhs->getLastName();
    });
}
void Database::sortByPesel()
{
    std::sort(people_.begin(), people_.end(), [](Person* lhs, Person* rhs)
    {
        return lhs->getPesel() < rhs->getPesel();
    });
}

void Database::sortBySalary()
{
    std::sort(people_.begin(), people_.end(), [](Person* lhs, Person* rhs)
    {
        return lhs->getSalary() >= rhs->getSalary();
    });
}

void Database::save(std::string filename) const
{
    std::ofstream output(filename);
    for(const auto & person : people_)
    {
        output << person->toString(':');
    }
}

bool Database::load(std::string filename)
{
    std::ifstream input(filename);
    std::string line;
    while(std::getline(input, line))
    {
        if (line.find("Student:") != std::string::npos)
        {
            Person* person = new Student(line);
            addPerson(person);
        }
        else if (line.find("Employee:") != std::string::npos)
        {
            Person* person = new Employee(line);
            addPerson(person);
        }
    }
}
