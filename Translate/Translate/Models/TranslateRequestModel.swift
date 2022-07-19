//
//  TranslateRequestModel.swift
//  Translate
//
//  Created by Joseph Cha on 2022/07/19.
//

import Foundation

struct TranslateRequestModel: Codable {
    let source: String
    let target: String
    let text: String
}
