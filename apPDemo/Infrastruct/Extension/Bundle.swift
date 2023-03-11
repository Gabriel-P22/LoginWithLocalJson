//
//  Bundle.swift
//  apPDemo
//
//  Created by Gabriel Paschoal on 11/03/23.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(file: String, response: T.Type) -> T {
        guard let sourcesURL = Bundle.main.url(forResource: file, withExtension: "json") else {
            fatalError("Could not find a file... Look the endPoint name: \(file)")
        }
        
        guard let data = try? Data(contentsOf: sourcesURL) else {
            fatalError("Could not conver a data... data: \(file)")
        }
        
        let decoder = JSONDecoder()
        
        guard let fileDecoded = try? decoder.decode(response.self, from: data) else {
            fatalError("Could not decode a data... Look the parser")
        }
        
        return fileDecoded
    }
}
