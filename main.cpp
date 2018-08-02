#include "Database.hpp"
#include "Student.hpp"
#include "Employee.hpp"
#include <cassert>

int main()
{
    Database db;
    Person* jan = new Student("Jan",
                              "Kowalski",
                              "90031112275",
                              Gender::Male,
                              "ul. Wróblewskiego 12, 51-627 Wrocław",
                              123456);
    db.addPerson(jan);

    Person* ala = new Employee("Ala",
                               "Kowalska",
                               "70031112275",
                               Gender::Female,
                               "plac Wróblewskiego 13, 50-626 Wrocław",
                               5000);
    db.addPerson(ala);

    auto kowalski = db.findByName("Kowalski");
    assert(kowalski == jan);

    auto kowalska = db.findByPesel("70031112275");
    assert(kowalska == ala);

    db.show();
    db.sort(SortCriteria::Salary);
    db.show();

    delete jan;
    delete ala;
}
