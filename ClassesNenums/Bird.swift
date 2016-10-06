//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



// Use enum associated with raw value like (Int) when needing to do comparison with Enums

enum Speed: Int {
    case slow = 1
    case medium = 2
    case fast = 3
    
    
    
    func isFaster(thanSpeed: Speed ) -> Bool {
        if (thanSpeed.rawValue < self.rawValue) || (thanSpeed.rawValue == self.rawValue) {
            return true
        }else{
          return false
                }
        }
    }



enum Diet {

    case meatEater
    case Vegetarian
}

enum Sex {
    case male
    case female
}


class Trex {
    
    var speed: Speed = Speed.fast
    var diet: Diet = Diet.meatEater
    var name: String
    var sex: Sex
    var isAlive: Bool = true
    
    init(name: String, sex: Sex) {
        
        self.name = name
        self.sex = sex
    }
    
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
 // It should return true if the instance of Trex which is calling on this method is faster than the parameter passed in.
    
    func isFaster(thanTrex: Trex) -> Bool {
        if thanTrex.speed.rawValue < self.speed.rawValue {
            return true
        }else{
           return false
        }
    
    }

 
    
    func eat(otherTrex: Trex) -> Bool {
        if otherTrex.speed.rawValue < self.speed.rawValue {
            otherTrex.isAlive = false
            return true
        }else{
            otherTrex.isAlive = false
            return false
        }
    }
        
        
        
    }
    
    
    
    
    









