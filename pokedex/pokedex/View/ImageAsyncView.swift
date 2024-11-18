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
                .scaledToFill()
        }.frame(width: width, height: height)
    }
}

#Preview {
    ImageAsyncView(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/1.png"),
    width: 200, height: 200)
}
