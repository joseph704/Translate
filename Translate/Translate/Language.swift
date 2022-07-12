//
//  Language.swift
//  Translate
//
//  Created by Joseph Cha on 2022/07/12.
//

import Foundation

enum Language: CaseIterable {
    case ko
    case en
    case ja
    case ch
    
    var title: String {
        switch self {
        case .ko:
            return "한국어"
        case .en:
            return "영어"
        case .ja:
            return "일본어"
        case .ch:
            return "중국어"
        }
    }
}

