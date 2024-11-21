//
//  PokemonScreen.swift
//  pokedex
//
//  Created by marlon von ansale on 17/11/2024.
//

import SwiftUI

struct PokemonScreen: View {
    @Environment(PokemonStore.self) private var pokemonStore

    var body: some View {
        List(pokemonStore.pokemons) { product in
            Text(product.name)
        }.task {
            do {
                try await pokemonStore.getPokemonList()
            } catch {

            }
        }
    }
}

#Preview {
    PokemonScreen()
        .environment(PokemonStore())
}
