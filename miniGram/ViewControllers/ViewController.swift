//
//  ViewController.swift
//  miniGram
//
//  Created by Emran Ahmed on 8/4/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        
        
         // self.assignmentOneQuestionOneSolution_1("Hello")
         // self.assignmentOneQuestionOneSolution_2("Hello")
        
        
    
        
        //let add_ly = self.add_suffix("ly")
        
        let add_less = self.add_suffix_2("less")
        
        //print(add_ly("hopeless"))
        
        print(add_less("fear"))
   
    
    }
    
    
    /*
     1. Write a function that
     
     -> takes a String as parameter and returns nothing.
     -> The function calculates and prints the frequency of each character in the given string, that means, how many times each character came up in the given string.
     
     Example input:
     let string = "Hello"
     Example Output:
     H = 1
     e = 1
     l = 2
     o = 1
     
     -> NOTE: I am not happy with this function body. I think it can be more simplified.
     */
    
    func assignmentOneQuestionOneSolution_1(_ string: String){
        
        var items: [String : Int] = [ : ]
        
        
        for str in string {
            
    
            let key = String(str) // I checked the type and found Character Type. Thats why I Convert 'Character' to String
            
            let value = items[key] ?? 0
            
            
            items[key] = value + 1
            
        }
        
        
        for (key, value) in items {
            print("\(key) = \(value)")
        }

    }
    
    
    /*
     1. Write a function that
     
     -> takes a String as parameter and returns nothing.
     -> The function calculates and prints the frequency of each character in the given string, that means, how many times each character came up in the given string.
     
     Example input:
     let string = "Hello"
     Example Output:
     H = 1
     e = 1
     l = 2
     o = 1
     
     
     -> NOTE: I am not happy with this function body. I think it can be more simplified.
     */
    
    func assignmentOneQuestionOneSolution_2(_ string: String){
       
        var items: [ Character: Int] = [:]
        
        
        for str in string {
            
            let count = items[str] ?? 0
            
            let item = count + 1
            
            items.updateValue(item, forKey: str)
            
        }
        
        for (key, value) in items {
            print("\(key) = \(value)")
        }
        
    }
    
    
    /*
     
     2. Write a function that returns a closure, which transforms its input by adding a particular suffix at the end.
     Example:
     let add_ly = add_suffix("ly")
     
     add_ly("hopeless") ➞ "hopelessly"
     add_ly("total") ➞ "totally"
     
     let add_less = add_suffix("less")
     
     add_less("fear") ➞ "fearless"
     add_less("ruth") ➞ "ruthless"
     
     */
    
    
    func add_suffix(_ suffix: String) -> (String) -> String {
        
        return {
            (contents: String) -> String in
            return contents + suffix;
        }
    }
    
    func add_suffix_2(_ suffix: String) -> (String) -> String {
        
        return { $0 + suffix }
        
    }


}

