//
//  Rays_target_gameTests.swift
//  Rays_target_gameTests
//
//  Created by Robert Bulliard on 10/21/21.
//

import XCTest

@testable import Rays_target_game


class Rays_target_gameTests: XCTestCase {
    
    var game: Game!
    override func setUpWithError() throws {
        game = Game()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let guess = game.target + 5
        XCTAssertEqual(game.points(slidervalue:guess), 95)
    }

  
  

}
