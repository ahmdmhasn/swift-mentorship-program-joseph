//
//  LoginResponse.swift
//  MentorshipAppV2
//
//  Created by Ahmed M. Hassan on 07/08/2022.
//

import Foundation

// MARK: - LoginResponse
struct LoginResponse: Decodable {
    let address: Address
    let id: String
    let loginResponseID: Int
    let email, username, password, phone: String

    enum CodingKeys: String, CodingKey {
        case address
        case id = "_id"
        case loginResponseID = "id"
        case email, username, password, phone
    }
}
