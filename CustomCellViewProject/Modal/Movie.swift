//
//  Movie.swift
//  CustomCellViewProject
//
//  Created by kristians.tide on 18/11/2021.
//

import Foundation

struct Movie {
    let movie: String
    let year: String
    let poster: String
    let description : String
    let gerne: String
    let UrlString: String
    
    static func createMovie() -> [Movie]{
        var movies: [Movie] = []
        
        let movie = DataManager.shared.movie //acceses DataManager File
        let year = DataManager.shared.year
        let poster = DataManager.shared.poster
        let description = DataManager.shared.description
        let gerne = DataManager.shared.gerne
        let UrlString = DataManager.shared.UrlString
        
        for index in 0..<movie.count {
            let movieEnd = Movie(movie: movie[index],
                            year: year[index],
                            poster: poster[index],
                            description: description[index],
                            gerne: gerne[index],
                            UrlString: UrlString[index])
            movies.append(movieEnd)
        }
        
        return movies
    }
}
