//
//  NewsList.swift
//  News
//
//  Created by Daniil Rassadin on 28/11/23.
//

import SwiftUI

struct NewsList: View {
    @StateObject var modelData: ModelData
    private let networkService = NetworkService()
    
    var body: some View {
        NavigationStack {
            List(modelData.news) { pieceOfNews in
                NavigationLink {
                    NewsDetail(news: pieceOfNews)
                } label: {
                    NewsRow(news: pieceOfNews)
                }
            }
            .listStyle(.plain)
            .refreshable { modelData.news = await networkService.getNews() }
            .onAppear {
                if modelData.news.isEmpty {
                    Task { modelData.news = await networkService.getNews() }
                }
            }
            .navigationTitle("100 latest news")
        }
    }
}

#Preview {
    NewsList(modelData: ModelData())
}
