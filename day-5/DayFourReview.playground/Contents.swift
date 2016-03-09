//: Playground - noun: a place where people can play

import UIKit

//During this exercise, build on this Course class. Each additional task will be adding to the same class.

class Course {
    
    var teacher: String
    var roster: [String]
    var name: String
    var description: String
    
    init(teacher: String, roster: [String], name: String, description: String) {
        self.teacher = teacher
        self.roster = roster
        self.name = name
        self.description = description
    }
    
    func addStudent(student: String) {
        roster += [student]
    }
    
    func removeStudent(student: String) {
        roster = roster.filter() {$0 != student}
    }
    
    func printDescription() {
        print("Teacher: \(teacher)\nCourse: \(name)\nDescription: \(description)")
        print("Roster:")
        for (index, student) in roster.enumerate() {
            print("\(index + 1). \(student)")
        }
    }
}

//1. Give the class four properties: teacher (String), roster ([String]), name (String), and description (String). Give it an init method that initializes each instance with values for each property.

//uncomment the lines below to test the init method
//let english = Course(teacher: "Mr. Morris", roster: ["Doug Culcher", "Luke Arickson", "Kate Gebsun", "Albert Vang", "Randall Potter", "Leia Sestina", "Kevin Hubris", "Douglas Healey"], name: "Honors English 1", description: "A literature-focused course covering topics such as Shakespeare, Homer, Steinbeck, Orwell, and Austen.")
//english.teacher //returns "Mr. Morris"
//english.roster //returns ["Doug Culcher", "Luke Arickson", "Kate Gebsun", "Albert Vang", "Randall Potter", "Leia Sestina", "Kevin Hubris", "Douglas Healey"]
//english.name //returns "Honors English 1"
//english.description //returns "A literature-focused course covering topics such as Shakespeare, Homer, Steinbeck, Orwell, and Austen."








//2. Add an instance method called addStudent to the Course class. Give it one parameter, student: String. The method should add that student to the roster.

//uncomment the lines below to test the init method
//english.addStudent("James Taylor")
//english.roster //returns ["Doug Culcher", "Luke Arickson", "Kate Gebsun", "Albert Vang", "Randall Potter", "Leia Sestina", "Kevin Hubris", "Douglas Healey", "James Taylor"]








//3. Add an instance method called removeStudent to the Course class. Give it one parameter, student: String. The method should remove that student from the roster.

//uncomment the lines below to test the init method
//english.removeStudent("Randall Potter")
//english.roster //returns ["Doug Culcher", "Luke Arickson", "Kate Gebsun", "Albert Vang", "Randall Potter", "Leia Sestina", "Kevin Hubris", "Douglas Healey", "James Taylor"]








//4. Add an instance method called printDescription to the Course class. The method should print a multiline description of the course, displaying its teacher, name, description, and complete roseter.

//uncomment the line below to test the init method
//english.printDescription()
//prints:
//Teacher: Mr. Morris
//Course: Honors English 1
//Description: A literature-focused course covering topics such as Shakespeare, Homer, Steinbeck, Orwell, and Austen.
//Roster:
//1. Doug Culcher
//2. Luke Arickson
//3. Kate Gebsun
//4. Albert Vang
//5. Leia Sestina
//6. Kevin Hubris
//7. Douglas Healey
//8. James Taylor

















