//
//  PokemonStore.swift
//  pokedex
//
//  Created by marlon von ansale on 17/11/2024.
//

import Foundation
import Observation

@Observable
class PokemonStore {
    private(set) var pokemons: [Pokemon] = []

    func getPokemonList() async throws {

        pokemons = [
            Pokemon(
                id: "1",
                name: "bulbasaur",
                url: URL(
                    string: "https://pokeapi.co/api/v2/pokemon/1/"
                )!
            ),
            Pokemon(
                id: "2",
                name: "ivysaur",
                url: URL(
                    string: "https://pokeapi.co/api/v2/pokemon/2/"
                )!
            )
        ]
    }
}
