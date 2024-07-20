//
//  OpenAIService.swift
//  JournalingApp
//
//  Created by Jonathan Kim on 7/20/24.
//

import Foundation

enum HTTPMethod: String {
    case post = "POST"
    case get = "GET"
}

class OpenAIService {
    static let shared = OpenAIService()
    
    // constructor
    private init () {}
    
    // calling the api
    private func generateURLRequest(httpMethod: HTTPMethod) throws -> URLRequest {
        // we may use a different endpoint depending on which openAI service we want to use
        guard let url = URL(string: "https://api.openai.com/v1/chat/completions") else {
            throw URLError(.badURL)
        }
        
        var urlRquest = URLRequest(url: url)
        
        return URLRequest(url: url)
    }
}
