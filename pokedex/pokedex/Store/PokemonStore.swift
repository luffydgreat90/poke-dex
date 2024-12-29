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
    private(set) var pokemonDetail: PokemonDetail? = nil
    private let getData: GetResult

    init(getData: @escaping GetResult) {
        self.getData = getData
    }

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

    func getPokemonDetail(url: URL?) async throws {
        pokemonDetail = PokemonDetail(id: "#0001", name: "bulbasaur", image: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/1.png"), type: [PokemonType(id: "#0001", type: "Grass", url: nil)], description: "bulbasaur bulbasaur bulbasaur", abilities: [])
    }
}
