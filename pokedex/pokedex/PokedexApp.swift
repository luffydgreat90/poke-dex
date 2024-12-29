//
//  PokedexApp.swift
//  pokedex
//
//  Created by marlon von ansale on 17/11/2024.
//

import SwiftUI

@main
struct PokedexApp: App {
    @State private var pokemonStore: PokemonStore

    init() {
        let httpClient: HTTPClient = HTTPClient(session: URLSession(configuration: .ephemeral))
        self.pokemonStore = PokemonStore(getData: httpClient.load)
    }

    var body: some Scene {
        WindowGroup {
            PokemonScreen()
            .environment(pokemonStore)
        }
    }
}

