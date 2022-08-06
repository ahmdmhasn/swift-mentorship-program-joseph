//
//  LoginRequest.swift
//  MentorshipAppV2
//
//  Created by Ahmed M. Hassan on 07/08/2022.
//

import Foundation

// MARK: - LoginRequest
struct LoginRequest: Encodable {
    let email, password: String
    let username: String = "johnd"
    let name: Name = Name()
    let address: Address = Address(city: "", street: "", number: 0, zipcode: "", geolocation: Geolocation(lat: "", long: ""))
    let phone: String = "1-570-236-7033"
}

// MARK: - Name
struct Name: Encodable {
    let firstname: String = ""
    let lastname: String = ""
}
