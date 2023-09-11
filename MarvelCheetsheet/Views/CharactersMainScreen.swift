//
//  CharactersMainScreen.swift
//  MarvelCheetsheet
//
//  Created by YanaSychevska on 08.09.23.
//

import SwiftUI

struct CharactersMainScreen: View {
    @State var characters: [CharacterModel]?
    private let columns = [GridItem(.adaptive(minimum: 100, maximum: 200), spacing: 1)]
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                if let characters = characters {
                    LazyVGrid(columns: columns, spacing: 1) {
                        ForEach(0..<characters.count, id: \.self) { i in
                            NavigationLink {
                                //
                            } label: {
                                GridItemView(imageUrl: characters[i].stringUrl,
                                             charName: characters[i].name)
                            }
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct CharactersMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        CharactersMainScreen(characters: [MockCharacterModel().mock, MockCharacterModel().mock, MockCharacterModel().mock])
    }
}
