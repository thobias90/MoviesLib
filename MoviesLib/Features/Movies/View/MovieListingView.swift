//
//  MovieListingView.swift
//  MoviesLib
//
//  Created by Thobias Stahlschmidt on 15/02/25.
//

import SwiftUI

struct MovieListingView: View {
    var movies: [Movie] = {
        
        guard let url = Bundle.main.url(forResource: "movies", withExtension: "json") else {
            return []
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let movies = try decoder.decode([Movie].self , from: data)
            return movies
        } catch {
            print(error)
        }
        
        
        return []
    }()
    
    var body: some View {
        List {
            ForEach(movies) { movie in
                MovieListingRowView(movie: movie)
            }
        }
    }
}

#Preview {
    MovieListingView()
}
