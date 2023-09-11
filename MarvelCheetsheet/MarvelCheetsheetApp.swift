//
//  MarvelCheetsheetApp.swift
//  MarvelCheetsheet
//
//  Created by YanaSychevska on 08.09.23.
//

import SwiftUI

@main
struct MarvelCheetsheetApp: App {
    var body: some Scene {
        WindowGroup {
            CharactersMainScreen(characters: [MockCharacterModel().mock,
                                              MockCharacterModel().mock,
                                              MockCharacterModel().mock,
                                              MockCharacterModel().mock,
                                              MockCharacterModel().mock,
                                              MockCharacterModel().mock,
                                              MockCharacterModel().mock,
                                              MockCharacterModel().mock])
        }
    }
}
