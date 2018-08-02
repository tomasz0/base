#include "Database.hpp"
#include "Student.hpp"
#include "Employee.hpp"
#include <cassert>

int main()
{
    Database db;
    db.load("test.txt");

    db.show("after load");
    db.remove("90031112275");
    db.remove("70031112275");
    db.remove("11111111111");
    db.show("after remove");

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

    db.show("after insert");
    db.sort(SortCriteria::Salary);
    db.show("after sort");

    db.show("after remove");

    db.save("test.txt");

    delete jan;
    delete ala;
}
