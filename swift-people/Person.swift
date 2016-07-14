//
//  Person.swift
//  swift-people
//
//  Created by Henry Dinhofer on 7/11/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Person {
    let name : String
    private(set) var ageInYears : Int?
    //private(set) var skills : [String] = [] {
    private(set) var skills : Set<String> = [] {
    didSet {
            updateQualifications()
        }
    }
    lazy var qualifiedTutor : Bool = false
       
    
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
        skills.insert("bash")
//        if (!skills.contains("bash")) {
//            skills.append("bash")
//        }
    }
    
    func learnSkillXcode() {
        skills.insert("Xcode")
//        if (!skills.contains("Xcode")) {
//            skills.append("Xcode")
//        }
    }
    func learnSkillObjectiveC()	{
        skills.insert("Objective-C")
//        if (!skills.contains("Objective-C")) {
//            skills.append("Objective-C")
//        }
    }
    func learnSkillSwift()	{
        skills.insert("Swift")
//        if (!skills.contains("Swift")) {
//            skills.append("Swift")
//        }
    }
    func learnSkillInterfaceBuilder()	{
        skills.insert("Interface Builder")
//        if (!skills.contains("Interface Builder")) {
//            skills.append("Interface Builder")
//        }
    }
    func isQualified() -> Bool {
        return skills.count >= 4
    }
    func updateQualifications () {
        qualifiedTutor = isQualified()
    }
}



