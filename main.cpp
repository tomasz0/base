#include "Database.hpp"
#include "Student.hpp"
#include <cassert>

int main()
{
    Database db;
    Person* jan = new Student("Jan",
                              "Kowalski",
                              "90031112275",
                              Gender::Male,
                              "ul. Wróblewskiego, 51-627 Wrocław",
                              123456);
    db.addPerson(jan);

    auto kowalski = db.findByName("Kowalski");
    assert(kowalski == jan);

    kowalski = db.findByPesel("90031112275");
    assert(kowalski == jan);

    delete jan;
}
