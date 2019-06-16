#include "Database.hpp"
#include "Student.hpp"
#include "Employee.hpp"
#include "PeselValidation.hpp"
#include <cassert>

int main()
{
    assert(not isPeselValid("1234567a901", Gender::Female) && "not a digit");
    assert(not isPeselValid("12345678901", Gender::Female) && "invalid month");
    assert(not isPeselValid("12325678901", Gender::Female) && "invalid day");
    assert(not isPeselValid("03222978901", Gender::Female) && "not leap year");
    assert(not isPeselValid("04222978911", Gender::Female) && "not a female");
    assert(not isPeselValid("04222978901", Gender::Male) && "not a male");
    assert(not isPeselValid("04222978901", Gender::Female) && "invalid checksum");
    assert(isPeselValid("04222978907", Gender::Female) && "valid");

    Database db;
    db.load("test.txt");
    db.show("after load");

    db.remove("90031112275");
    db.remove("70031112275");
    db.remove("80031112275");
    db.remove("11111111111");
    db.show("after remove");

    Person* jan = new Student("Jan",
                              "Kowalski",
                              "90031112275",
                              Gender::Male,
                              "ul. Wroblewskiego 12, 51-627 Wroclaw",
                              123456);
    Person* ala = new Employee("Ala",
                               "Kowalska",
                               "70031112275",
                               Gender::Female,
                               "plac Wroblewskiego 13, 50-626 Wroclaw",
                               5000);
    Person* mietek = new Employee("Mietek",
                                  "Kowalski",
                                  "80031112275",
                                  Gender::Male,
                                  "ul. Wroblewskiego 13, 51-627 Wroclaw",
                                  5500);
    db.addPerson(jan);
    db.addPerson(ala);
    db.addPerson(mietek);
    db.show("after insert");

    auto kowalscy = db.findByName("Kowalski");
    assert(kowalscy[0] == jan);
    assert(kowalscy[1] == mietek);

    auto kowalska = db.findByPesel("70031112275");
    assert(kowalska == ala);

    db.sort(SortCriteria::Salary);
    db.show("after sort");

    db.modifySalary("70031112275", 6000);
    db.show("after modifySalary");

    db.modifyAddress("90031112275", "Lotnicza 11, 50-001 Wrocław");
    db.show("after modifyAddress");

    db.save("test.txt");

    delete jan;
    delete ala;
}
