//
//  NewsDetail.swift
//  News
//
//  Created by Daniil Rassadin on 28/11/23.
//

import SwiftUI

struct NewsDetail: View {
    let news: News
    
    var body: some View {
        ScrollView {
            Text(news.title)
                .font(.title)
                .padding()

            if let imageURL = news.imageURL {
                AsyncImage(url: imageURL) { image in
                    image.resizable().aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
            } else {
                Divider()
            }

            Text(news.bodyText)
                .font(.body)
                .padding()
        }
    }
}

#Preview {
    NewsDetail(news: News.example)
}
