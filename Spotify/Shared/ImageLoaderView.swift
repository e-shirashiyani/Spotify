//
//  ImageLoaderView.swift
//  Spotify
//
//  Created by e.shirashiyani on 4/14/24.
//

import SwiftUI
import SDWebImageSwiftUI
struct ImageLoaderView: View {
    
    var urlString: String = Constants.randomImage
    var resizingMode: ContentMode = .fill
    
    var body: some View {
        Rectangle()
            .opacity(0.001)
            .overlay(
                WebImage(url: URL(string: urlString))
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: resizingMode)
                    .allowsTightening(false)
            )
            .clipped()
    }
}

#Preview {
    ImageLoaderView()
}
