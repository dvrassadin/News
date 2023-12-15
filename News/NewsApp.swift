//
//  NewsApp.swift
//  News
//
//  Created by Daniil Rassadin on 28/11/23.
//

import SwiftUI

@main
struct NewsApp: App {
    var body: some Scene {
        WindowGroup {
            NewsList(modelData: ModelData())
        }
    }
}
