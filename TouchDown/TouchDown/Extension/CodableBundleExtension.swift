//
//  CodableBundleExtension.swift
//  TouchDown
//
//  Created by Mac Pro Sam on 4/15/21.
//

import Foundation
extension Bundle {
    func decode <T: Codable>(_ file: String) -> T {
        // 1 . locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to located \(file) in bundle")
        }
        // 2 . Create a proprty for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Faild to load \(file) from bundle")
        }
        // 3 . Create a Decoder
        let decoder = JSONDecoder()
        // 4 . Create a property for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("failed tod ecode \(file) from bundle")
        }
        // 5 . Return the ready-to-use data
        return decodedData
    }
}
