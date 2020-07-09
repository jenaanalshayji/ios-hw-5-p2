//
//  MovieDetails.swift
//  IOS-hw-5-p-2
//
//  Created by Jenaan Alshayji on 7/9/20.
//  Copyright © 2020 Jenaan Alshayji. All rights reserved.
//

import UIKit

class MovieDetails: UIViewController {
    var movie: Movie!
   
    @IBOutlet weak var movieImage2: UIImageView!
    
    @IBOutlet weak var movieReleasedYear: UILabel!
    
    @IBOutlet weak var movieRating: UILabel!
    
    @IBOutlet weak var moviePgRate: UILabel!

    override func viewDidLoad() {
            super.viewDidLoad()
        
           getMovieDetails()
            getMovieDetails()
        movieImage2.image = movie.movieImage()
        }
        
        
        func getMovieDetails()
        {
            for movie in movies
            {
                movieReleasedYear.text = "2014"
                movieRating.text = "6.5"
                moviePgRate.text = "PG-13"
                
                movieReleasedYear.text = "2015"
                movieRating.text = "6.3"
                moviePgRate.text = "PG-13"
                
                movieReleasedYear.text = "2018"
                movieRating.text = "6.2"
                moviePgRate.text = "PG-13"
                
            }
    }
}
