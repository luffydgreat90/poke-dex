//
//  PokemonDetailScreen.swift
//  pokedex
//
//  Created by marlon von ansale on 18/11/2024.
//

import SwiftUI

struct PokemonDetailScreen: View {
    @Environment(PokemonStore.self) private var pokemonStore

    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    ImageAsyncView(url: pokemonStore.pokemonDetail?.image, width: 200, height: 200)
                    Text(pokemonStore.pokemonDetail?.name ?? "")
                }
            }
        }.task {
            do {
                try await pokemonStore.getPokemonDetail(url: nil)
            } catch {

            }
        }
    }
}

#Preview {
    PokemonDetailScreen()
        .environment(PokemonStore())
}
