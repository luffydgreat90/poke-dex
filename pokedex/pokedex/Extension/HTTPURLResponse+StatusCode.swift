//
//  HTTPURLResponse+StatusCode.swift
//  pokedex
//
//  Created by marlon von ansale on 17/11/2024.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
