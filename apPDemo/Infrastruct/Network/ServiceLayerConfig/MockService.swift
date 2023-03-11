//
//  MockService.swift
//  apPDemo
//
//  Created by Gabriel Paschoal on 11/03/23.
//

import Foundation

class MockService {
    static func fetch<T: Decodable>(endPoint: String, response: T.Type) -> T {
        return Bundle.main.decode(file: endPoint, response: response)
    }
}
