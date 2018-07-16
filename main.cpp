#include "Database.hpp"
#include "Student.hpp"

int main()
{
    Database db;
    Student jan("Jan", "Kowalski", 166666);
    db.addStudent(jan);
    Student adam("Adam", "Adamski", 222222);
    db.addStudent(adam);
    db.sortByIndex();
    db.removeStudent(111111);
    db.removeStudent(222222);
}
