//
//  Pokemon.swift
//  pokedex
//
//  Created by marlon von ansale on 17/11/2024.
//

import Foundation

struct Pokemon: Hashable, Identifiable {
    let id: String
    let name: String
    let url: URL
}
