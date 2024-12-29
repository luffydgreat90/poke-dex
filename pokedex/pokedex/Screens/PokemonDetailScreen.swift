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
                        .fontWeight(.bold)
                    Text(pokemonStore.pokemonDetail?.id ?? "")
                        .font(.largeTitle)
                        .foregroundStyle(.gray)
                        .fontWeight(.bold)
                }

                HStack(alignment: .top) {
                    ImageAsyncView(
                        url: pokemonStore.pokemonDetail?.image,
                        width: 180,
                        height: 180
                    )

                    VStack {
                        Text("this is a balbasur")
                            .padding(8.0)
                            .frame(maxWidth: .infinity)
                            .background(.gray.opacity(0.5))
                            .frame(maxWidth: .infinity)
                            .cornerRadius(3.0)

                        HStack {
                            DetailView(
                                header: "Height",
                                value: "0.7m"
                            )

                            DetailView(
                                header: "Weight",
                                value: "6.9kg"
                            )
                        }
                        .frame(maxWidth: .infinity)
                        .padding(8.0)
                        .background(.blue.opacity(0.5))
                        .cornerRadius(3.0)

                    }
                }.padding(8.0)
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
        .environment(PokemonStore(getData: { _, _ in
            return nil
        }))
}
