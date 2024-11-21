//
//  ImageAsyncView.swift
//  pokedex
//
//  Created by marlon von ansale on 18/11/2024.
//

import SwiftUI

struct ImageAsyncView: View {
    let url: URL?
    let width: CGFloat
    let height: CGFloat

    var body: some View {
        AsyncImage(url: url){  result in
            result.image?
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height, alignment: .center)
        }
        .padding(8.0)
        .background(.gray.opacity(0.5))
        .cornerRadius(3.0)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
    }
}

#Preview {
    ImageAsyncView(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/1.png"),
    width: 200, height: 200)
}
