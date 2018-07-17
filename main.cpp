#include "Database.hpp"
#include "Student.hpp"
#include <cassert>

int main()
{
    Database db;

    Student jan("Jan", "Kowalski", 166666);
    db.addStudent(jan);
    Student alicja("Alicja", "Nowak", 112233);
    db.addStudent(alicja);
    Student adam("Adam", "Adamski", 222222);
    db.addStudent(adam);

    assert(db.getStudent(0).getIndex() == 166666);
    assert(db.getStudent(1).getIndex() == 112233);
    assert(db.getStudent(2).getIndex() == 222222);

    db.sortByIndex();
    
    assert(db.getStudent(0).getIndex() == 112233);
    assert(db.getStudent(1).getIndex() == 166666);
    assert(db.getStudent(2).getIndex() == 222222);
    
    db.removeStudent(111111);
    db.removeStudent(166666);
    
    assert(db.getStudent(0).getIndex() == 112233);
    assert(db.getStudent(1).getIndex() == 222222);
}
