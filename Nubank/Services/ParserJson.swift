//
//  ParserJson.swift
//  Nubank
//
//  Created by Zewu Chen on 27/12/20.
//

import Foundation

class ParserJson {

    // MARK: - Properties
    static let shared = ParserJson()

    // MARK: Initialization
    private init() {}
    
    func fromFile<T: Codable>(file name: String, expecting type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        do {
            if let path = Bundle.main.path(forResource: name, ofType: "json", inDirectory: nil) {
                let url = URL(fileURLWithPath: path)
                let jsonData = try Data(contentsOf: url)
                let data = try JSONDecoder().decode(type, from: jsonData)
                completion(.success(data))
            }
        } catch (let error) {
            completion(.failure(error))
        }
    }
}
