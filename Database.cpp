#include "Database.hpp"
#include <algorithm>

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
