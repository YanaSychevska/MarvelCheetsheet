//
//  CharacterModel.swift
//  MarvelCheetsheet
//
//  Created by YanaSychevska on 10.09.23.
//

import Foundation

struct CharacterModel {
    let id: Int?
    let name: String?
    let thumbnail: Thumbnail?
    
    var stringUrl: String? {
        if let path = thumbnail?.path, let extention = thumbnail?.extention {
            return "\(path).\(extention)"
        } else {
            return nil
        }
    }
}

struct Thumbnail {
    let path: String?
    let extention: String?
}
