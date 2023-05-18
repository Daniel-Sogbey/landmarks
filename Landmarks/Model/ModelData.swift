//
//  ModelData.swift
//  Landmarks
//
//  Created by DaN SoGbEy on 18/05/2023.
//

import Foundation


var landmarks: [Landmark] = load("landmarkData.json")


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    print("FILE : \(file)")
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    print("DATA : \(data)")
    
    do {
        let decoder = JSONDecoder()
        print("DECODER \(T.self)")
        let landmarkData = try decoder.decode(T.self, from: data) 
        return landmarkData;
    } catch {
        print("ERROR \(error)")
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
