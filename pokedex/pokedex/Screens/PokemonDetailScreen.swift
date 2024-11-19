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
                    Text(pokemonStore.pokemonDetail?.name ?? "")
                        .font(.largeTitle)
                    Text(pokemonStore.pokemonDetail?.id ?? "")
                        .font(.largeTitle)
                        .foregroundStyle(.gray)
                }

                HStack {
                    ImageAsyncView(
                        url: pokemonStore.pokemonDetail?.image,
                        width: 200,
                        height: 200
                    )

                    VStack {
                        Text("this is a balbasur")

                        HStack {
                            Text("Height: 0.7")
                            Text("Weight: 0.7")
                        }

                        Text("Type:")
                        HStack {
                            Text("Height: 0.7")
                            Text("Weight: 0.7")
                        }
                    }
                }

                VStack {
                    Text("Abilities:")
                    HStack {

                    }
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
