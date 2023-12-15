//
//  ModelData.swift
//  News
//
//  Created by Daniil Rassadin on 29/11/23.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var news = [News]()
}
