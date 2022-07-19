//
//  Type.swift
//  Translate
//
//  Created by Joseph Cha on 2022/07/18.
//

import UIKit

enum `Type` {
    case source
    case target
    
    var color: UIColor {
        switch self {
        case .source: return .label
        case .target: return UIColor.mainTintColor
        }
    }
}
