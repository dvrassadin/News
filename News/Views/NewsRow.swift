//
//  NewsRow.swift
//  News
//
//  Created by Daniil Rassadin on 28/11/23.
//

import SwiftUI

struct NewsRow: View {
    let news: News
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(news.title)
                .font(.headline)
            Text(news.description)
                .font(.subheadline)
            HStack {
                Spacer()
                Text(news.publicationDate.formatted())
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    NewsRow(news: News.example)
}
