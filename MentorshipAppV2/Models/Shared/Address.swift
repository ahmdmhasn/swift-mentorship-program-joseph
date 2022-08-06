//
//  Address.swift
//  MentorshipAppV2
//
//  Created by Ahmed M. Hassan on 07/08/2022.
//

import Foundation

// MARK: - Address
struct Address: Codable {
    let city: String
    let street: String
    let number: Int?
    let zipcode: String?
    let geolocation: Geolocation
}
