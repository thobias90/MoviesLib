//
//  MovieSummaryView.swift
//  MoviesLib
//
//  Created by Thobias Stahlschmidt on 14/02/25.
//

import SwiftUI

struct MovieSummaryView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sinopse")
                .padding(.top)
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.horizontal)
            ScrollView {
                Text("Esse filme é o melhor filme de todos os tempos e nheum barra ele!!!")
            }
            .padding(.horizontal)

        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(16)
        .padding(.vertical)
    }
}

#Preview {
    MovieSummaryView()
}
