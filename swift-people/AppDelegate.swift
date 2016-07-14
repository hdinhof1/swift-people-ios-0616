//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        /**

        * Manually test your code here.
        
        */
        
        // Do not alter
        
        let person = Person()
        person.learnSkillBash()
        person.learnSkillXcode()
        person.learnSkillObjectiveC()	
        person.learnSkillSwift()	
        person.learnSkillInterfaceBuilder()
        
        print ("Person is qualified: \(person.qualifiedTutor)")
        print ("Person knows \(person.skills)")
       
        return true  //
    }   //////////////
}       /////////////

