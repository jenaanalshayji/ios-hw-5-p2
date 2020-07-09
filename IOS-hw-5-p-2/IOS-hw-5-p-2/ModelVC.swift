//
//  ModelVC.swift
//  IOS-hw-5-p-2
//
//  Created by Jenaan Alshayji on 7/9/20.
//  Copyright © 2020 Jenaan Alshayji. All rights reserved.
//

import Foundation
import UIKit

struct Movie{
    let name : String
    let cardName: String
    
    func cardImage () -> UIImage
    {
        return UIImage(named: cardName)!
    }
       
    
    func movieImage () -> UIImage
    {
        let movieName = cardName
        return UIImage(named: movieName)!
    }
    
    
}


var movies :[Movie] = [
    Movie(name: "theMazeRunner", cardName: "theMazeRunner"),
    Movie(name: "scorchTrials", cardName: "scorchTrials"),
    Movie(name: "deathCure", cardName: "deathCure")
    
]
