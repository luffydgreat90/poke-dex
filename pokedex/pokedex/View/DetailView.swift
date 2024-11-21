//
//  DetailView.swift
//  pokedex
//
//  Created by marlon von ansale on 21/11/2024.
//

import SwiftUI

struct DetailView: View {
    let header: String
    let value: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(header)
                .foregroundStyle(.black)
                .fontWeight(.bold)
            Text(value)
                .foregroundStyle(.black)
                .fontWeight(.regular)
        }
    }
}

#Preview {
    DetailView(header: "Height", value: "0.7m")
}
