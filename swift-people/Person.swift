//
//  Person.swift
//  swift-people
//
//  Created by Henry Dinhofer on 7/11/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
//import Int+Ordinal.swift


class Person {
    let name : String
    var ageInYears : Int?
    var skills : [String] = []
    var qualifiedTutor : Bool = false

    
    convenience init() {
        self.init(name: "John Doe", age: nil)
    }
    
    convenience init(name: String) {
        self.init(name: name, age: nil)
    }
    
    init (name: String, age: Int?) {
        self.name = name
        self.ageInYears = age
    }
    
    func celebrateBirthday() -> String {
        var message = ""
        if let ageInYears = ageInYears {
            message = "HAPPY \(ageInYears)\(ageInYears.ordinal().uppercaseString) BIRTHDAY, \(name.uppercaseString)!!!"
        } else {
            message = "HAPPY BIRTHDAY, \(name.uppercaseString)!!!"
        }
            
        return message
    }
    
    func learnSkillBash() {
        if (!skills.contains("bash")) {
            skills.append("bash")
        }
        updateQualifications()
    }
    
    func learnSkillXcode() {
        if (!skills.contains("Xcode")) {
            skills.append("Xcode")
        }
        updateQualifications()
    }
    func learnSkillObjectiveC()	{
        if (!skills.contains("Objective-C")) {
            skills.append("Objective-C")
        }
        updateQualifications()
    }
    func learnSkillSwift()	{
        if (!skills.contains("Swift")) {
            skills.append("Swift")
        }
        updateQualifications()
    }
    func learnSkillInterfaceBuilder()	{
        if (!skills.contains("Interface Builder")) {
            skills.append("Interface Builder")
        }
        updateQualifications()
    }
    func isQualified() -> Bool {
        return skills.count >= 4
    }
    func updateQualifications () {
        qualifiedTutor = isQualified()
    }
}



