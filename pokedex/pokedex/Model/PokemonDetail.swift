//
//  PokemonDetail.swift
//  pokedex
//
//  Created by marlon von ansale on 18/11/2024.
//

import Foundation

struct PokemonDetail: Hashable, Identifiable {
    let id: String
    let name: String
    let image: URL?
    let type: [PokemonType]
    let description: String
    let abilities: [PokeAbility]
}

struct PokemonType: Hashable, Identifiable {
    let id: String
    let type: String
    let url: URL?
}

struct PokeAbility: Hashable, Identifiable {
    let id: String
    let name: String
    let url: URL?
}
