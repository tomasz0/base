#pragma once
#include "Person.hpp"
#include <vector>
#include <stdexcept>
#include <functional>

using People = std::vector<Person*>;

enum class SortCriteria
{
    Salary,
    Pesel,
    LastName
};

struct NotFound : public std::out_of_range
{
    NotFound(const std::string & message);
};

class Database
{
public:
    void addPerson(Person* person);
    Person* findByName(const std::string & lastName) const;
    Person* findByPesel(const std::string & pesel) const;
    void show(const std::string & info) const;
    void sort(SortCriteria criterion);
    void generate(int number);
    void save(std::string filename) const;
    void load(std::string filename);
    void remove(const std::string & pesel);
    void modifySalary(const std::string & pesel, unsigned int newSalary);
    void modifyAddress(const std::string & pesel, const std::string & newAddress);

private:
    bool isValid(const std::string & pesel);
    Person* find(std::function<bool(People::value_type)> what) const;
    void sortByName();
    void sortByPesel();
    void sortBySalary();

    People people_;
};
