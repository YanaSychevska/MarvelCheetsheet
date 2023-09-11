//
//  MockCharacterModel.swift
//  MarvelCheetsheet
//
//  Created by YanaSychevska on 10.09.23.
//

import Foundation

struct MockCharacterModel {
    init() {}
    
    private var testThumbnail: Thumbnail {
        Thumbnail(path: "http://i.annihil.us/u/prod/marvel/i/mg/9/c0/527bb7b37ff55", extention: "jpg")
    }
    
    public var mock: CharacterModel {
        CharacterModel(id: 1011334, name: "3-D Man", thumbnail: testThumbnail)
    }
}
