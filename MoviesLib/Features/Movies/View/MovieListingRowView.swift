//
//  MovieListingRowView.swift
//  MoviesLib
//
//  Created by Thobias Stahlschmidt on 15/02/25.
//

import SwiftUI

struct MovieListingRowView: View {
    let movie: Movie
    var body: some View {
        HStack(spacing: 23) {
            Image(movie.imageSmall)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 80)
                .cornerRadius(8)
                .shadow(radius: 4, x: 2, y: 2)

            Text(movie.title)
            
            Spacer()
        }
    }
}

#Preview {
    MovieListingRowView(movie: Movie(title: "Matrix", categories: "Action", duration: "2h", rating: 10.0, summary: "Good movie!", image: "matrix"))
}
