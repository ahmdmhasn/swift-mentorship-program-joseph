//
//  NetworkService.swift
//  MentorshipAppV2
//
//  Created by Ahmed M. Hassan on 07/08/2022.
//

import Foundation

class NetworkService {
    private static let baseUrl = "https://fakestoreapi.com"
    
    private func sendRequest<Model: Decodable>(path: String, httpMethod: String, body: Encodable?) async throws -> Model {
        let url = URL(string: "\(NetworkService.baseUrl)/\(path)")!
        var request = URLRequest(url: url)
        request.httpMethod = httpMethod
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        if let body = body {
            request.httpBody = try JSONEncoder().encode(body)
        }
        
        let (data, _) = try await URLSession.shared.data(for: request)
        return try JSONDecoder().decode(Model.self, from: data)
    }
    
    func sendLoginRequest(email: String, password: String) async throws -> LoginResponse {
        let loginRequestModel = LoginRequest(email: email, password: password)
        return try await sendRequest(path: "users", httpMethod: "POST", body: loginRequestModel)
    }
    
    func getUserWithId(_ id: Int) async throws -> LoginResponse {
        return try await sendRequest(path: "users/\(id)", httpMethod: "GET", body: nil)
    }
}
