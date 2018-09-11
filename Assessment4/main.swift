//
//  main.swift
//  Assessment4
//
//  Created by Ryan Brashear on 9/10/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation

//1. Create a class called School. Give it properties to model:
// -the name of the school
// -the number of students that attend
// -if it is a public or private school
// -the year it was built
//
// Add a function called schoolDescription to the School class that will print out "\(name of school) was founded in \(the year it was built) and has \(number of students) currently in attendance"

// Create an instance of school and then call it's schoolDescription function

class School{
    let name: String
    var numberOfStudents: Int
    let publicOrPrivate: String
    let yearBuilt: Int
    
    init(name: String, numberOfStudents: Int, publicOrPrivate: String, yearBuilt: Int){
        self.name = name
        self.numberOfStudents = numberOfStudents
        self.publicOrPrivate = publicOrPrivate
        self.yearBuilt = yearBuilt
    }
    
    func schoolDescription(){
        print("\(name) was founded in \(yearBuilt) and has \(numberOfStudents) currently in attendance")
    }
}

let bchs = School(name: "Barren County High School", numberOfStudents: 1200, publicOrPrivate: "Public", yearBuilt: 1974)

bchs.schoolDescription()

//2. Create a HighSchool class that inherits from our base school class. Add a property that will represent a rival highschool. Additionally, add a property that will represent the school mascot.
//
// Add a function called pepRally that will print "\(school name) is the best! \(rival school name) is awful!"
//
// Override the schoolDescription function to make it print "\(school name) is the best in the state since \(the year it was built)! Go \(school mascot)'s!!!"
//
// Create an instance of a highschool and call both the schoolDescription and the pepRally functions.

class HighSchool: School{
    let rival: String
    let mascot: String
    init(name: String, numberOfStudents: Int, publicOrPrivate: String, yearBuilt: Int, rival: String, mascot: String) {
        self.rival = rival
        self.mascot = mascot
        super.init(name: name, numberOfStudents: numberOfStudents, publicOrPrivate: publicOrPrivate, yearBuilt: yearBuilt)
    }
    func pepRally(){
        print("\(name) is the best! \(rival) is awful!")
    }
    
    override func schoolDescription() {
        print("\(name) is the best in the state since \(yearBuilt)! Go \(mascot)'s!!!")
    }
}

let barrenCounty = HighSchool(name: "Barren County High School", numberOfStudents: 1200, publicOrPrivate: "Public", yearBuilt: 1974, rival: "Glasgow", mascot: "Trojans")

barrenCounty.pepRally()
barrenCounty.schoolDescription()

//3.Create a new class called MagicalHighSchool (think Hogwarts from Harry Potter) that inherits from our HighSchool class. Add new properties for the size of the castle in square feet and the number of secret passages it contains.
//
// Override the pepRally function to make it print "\(school name) is the most magical school on earth! It's castle is (\castle size) square feet, and it has \(number of secret passages) secret passageways! Hurray!"
//
// Create a new function called quidditchMatch that will print "Time for the big quidditch game!"
//
// Create an instance of a magical highschool. Then call all 3 of the functions that it contains/inherits.

class MagicalHighSchool: HighSchool{
    let sizeOfCastle: Int
    var secretPassages: Int
    init(name: String, numberOfStudents: Int, publicOrPrivate: String, yearBuilt: Int, rival: String, mascot: String, sizeOfCastle: Int, secretPassages: Int) {
        self.sizeOfCastle = sizeOfCastle
        self.secretPassages = secretPassages
        super.init(name: name, numberOfStudents: numberOfStudents, publicOrPrivate: publicOrPrivate, yearBuilt: yearBuilt, rival: rival, mascot: mascot)
    }
    
    func quidditchMatch() {
        print("Time for the big quidditch match")
    }
}

let hogwarts = MagicalHighSchool(name: "Hogwarts", numberOfStudents: 280, publicOrPrivate: "private", yearBuilt: 1872, rival: "Durmstrang", mascot: "Lion, Badger, Eagle, Serpent", sizeOfCastle: 51000, secretPassages: 7)

hogwarts.quidditchMatch()
hogwarts.pepRally()
hogwarts.schoolDescription()

//BONUS: Create a new Date() object that represents the current date. Create a date formatter and set the custom date format for it. Use the date formatter to create a formatted String from the date object, and print the formatted String.

let date = Date()
var dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MM/dd/yyyy"
print(dateFormatter.string(from: date))
