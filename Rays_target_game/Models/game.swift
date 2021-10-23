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
