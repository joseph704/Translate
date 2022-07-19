//
//  TranslateReponseModel.swift
//  Translate
//
//  Created by Joseph Cha on 2022/07/19.
//

import Foundation

struct TranslateReponseModel: Decodable {
    let message: Message
    
    var translatedText: String { message.result.translatedText }
    
    struct Message: Decodable {
        let result: Result
    }
    struct Result: Decodable {
        let translatedText: String
    }
}
