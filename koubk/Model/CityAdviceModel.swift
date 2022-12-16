//
//  model.swift
//  koubk
//
//  Created by Fatih Bilgin on 16.12.2022.
//



import Foundation

// MARK: - MediasCityadviceModel
struct MediasCityadviceModel: Codable {
    let data: [MediasDatum]?
    let meta: MediasMeta?
}

// MARK: - MediasDatum
struct MediasDatum: Codable {
    let type: MediasType?
    let id: String?
    let datumSelf: MediasSelf?
    let name, shortDescription, datumDescription: String?
    let geoCode: MediasGeoCode?
    let rating: String?
    let price: MediasPrice?
    let pictures: [String]?
    let bookingLink: String?
    let minimumDuration: String?
}

// MARK: - MediasSelf
struct MediasSelf: Codable {
    let href: String?
    let methods: [MediasMethod]?
}

enum MediasMethod: Codable {
    case methodGET
}

// MARK: - MediasGeoCode
struct MediasGeoCode: Codable {
    let latitude, longitude: Double?
}

// MARK: - MediasPrice
struct MediasPrice: Codable {
    let amount: String?
}

enum MediasType: Codable {
    case activity
}

// MARK: - MediasMeta
struct MediasMeta: Codable {
    let count: Int?
    let metaSelf: String?
}

