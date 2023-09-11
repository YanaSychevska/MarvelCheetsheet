//
//  GridItemView.swift
//  MarvelCheetsheet
//
//  Created by YanaSychevska on 08.09.23.
//

import SwiftUI

struct GridItemView: View {
    @State public var imageUrl: String?
    let charName: String?
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if let imageUrl = imageUrl {
                GeometryReader { proxy in
                    AsyncImage(url: URL(string: imageUrl)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                            .frame(
                                width: proxy.size.width,
                                height: proxy.size.width
                            )
                            .clipped()
                    } placeholder: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                                .aspectRatio(1, contentMode: .fit)
                            ProgressView()
                        }
                    }
                }
                .aspectRatio(1, contentMode: .fit)
            }
            HStack {
                Text(charName ?? "")
                    .foregroundColor(.white)
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                Spacer()
            }
            .padding(10)
            .background(LinearGradient(colors: [.black.opacity(0), .black.opacity(0.7)], startPoint: .top, endPoint: .bottom))
        }
    }
}

struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        GridItemView(imageUrl: "http://http://i.annihil.us/u/prod/marvel/i/mg/9/c0/527bb7b37ff55.jpg", charName: "3D-man")
    }
}
