//
//  HTTPClient.swift
//  pokedex
//
//  Created by marlon von ansale on 17/11/2024.
//

import Foundation

enum HTTPError: Error {
    case invalidURL
}

typealias GetResult = (URL?,  @escaping (Result<(Data, HTTPURLResponse), Error>) -> Void) -> URLSessionTask?

final class HTTPClient {
    private let session: URLSession

    init(session: URLSession) {
        self.session = session
    }

    func load(url: URL?, completion: @escaping (Result<(Data, HTTPURLResponse), Error>) -> Void) -> URLSessionTask? {
        guard let url else {
            completion (
                Result {
                    throw HTTPError.invalidURL
                }
            )

            return nil
        }

        let task = session.dataTask(with: URLRequest(url: url)) { data, response, error in
            completion(
                Result {
                    if let data = data, let response = response as? HTTPURLResponse {
                        return (data,response)
                    } else if let error = error {
                        throw error
                    } else {
                        throw HTTPError.invalidURL
                    }
                }
            )
        }

        return task
    }
}
