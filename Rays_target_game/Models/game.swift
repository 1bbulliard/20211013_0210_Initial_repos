//
//  game.swift
//  Rays_target_game
//
//  Created by Robert Bulliard on 10/14/21.
//

import Foundation
import SwiftUI
struct Game
{
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    var diff: Int = 0
    var awardedpoints = 0
    mutating func points(slidervalue: Int) -> Int {
        // **** test array stuff
        var teststring = ["Bob", "Tom", "Gabe", "henry"]
        print(teststring[0])
        print("Yooo there \(teststring[1])") 
        
        var employee =
        [
            "name":  "Taylor Swift",
            "job":   "Singer",
            "location":  "Nashville",
         
        ]
        
        print(employee["name"])
        print(employee["job"])
        print(employee["location"])
 
        
        let olympics =
        [
            2012: "London",
            2016: "Rio de janeiro",
            2021: "Tokyo"
        ]
        print (olympics[2012, default: "unknown"])
        print (olympics[2021, default: "unknown"])
        
        let names = ["Arthur", "Ford", "Trillian", "Zaphod", "Marvin"]
// each iteration loads the variable banana from names(0), names(1), names(2),etc
        for banana in names
        {
            print(banana)
        }
        // ****** test array end
        
        diff = abs(slidervalue - self.target)
        if  slidervalue > self.target
           {diff = slidervalue - self.target}
        else if self.target > slidervalue
           { diff = self.target - slidervalue}
        else
           {diff = 0}
        
        let awardedpoints: Int = 100 - diff
        return awardedpoints
        
                                         }
}
