//
//  PokemonMap.swift
//  pokedex
//
//  Created by marlon von ansale on 17/11/2024.
//

import Foundation

enum PokemonMap {

    private struct PokemonResult: Decodable {
        let results: [PokemonItem]
    }

    private struct PokemonItem: Decodable {
        let name: String
        let url: URL
    }

    private enum Error: Swift.Error {
        case invalidData
    }

    static func map(_ data: Data, from response: HTTPURLResponse) throws -> [Pokemon] {

        let decoder = JSONDecoder()

        guard response.isOK, let root = try? decoder.decode(PokemonResult.self, from: data) else {
            throw Error.invalidData
        }

        return root.results.map {
            Pokemon(
                id: UUID().uuidString,
                name: $0.name,
                url: $0.url
            )
        }
    }
}
