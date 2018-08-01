#include "Database.hpp"
#include <algorithm>

NotFound::NotFound(const std::string &message)
    : std::out_of_range(message)
{}

bool Database::addPerson(Person* person)
{
    people_.push_back(person);
}

Person* Database::findByName(const std::string & lastName)
{
    auto it = std::find_if(people_.begin(), people_.end(), [lastName](auto item)
    {
        return item->getLastName() == lastName;
    });
    if (it != people_.end())
    {
        return *it;
    }
    throw NotFound(lastName + " does not exist");
}
