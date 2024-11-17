//
//  PokedexApp.swift
//  pokedex
//
//  Created by marlon von ansale on 17/11/2024.
//

import SwiftUI

@main
struct PokedexApp: App {
    @State private var pokemonStore: PokemonStore = PokemonStore()

    var body: some Scene {
        WindowGroup {
            PokemonScreen()
            .environment(pokemonStore)
        }
    }
}
