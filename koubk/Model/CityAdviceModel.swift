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
    let subType: MediasSubType?
    let id: String?
    let datumSelf: MediasSelf?
    let geoCode: MediasGeoCode?
    let name: String?
    let category: MediasCategory?
    let rank: Int?
    let tags: [String]?
}

enum MediasCategory: Codable {
    case nightlife
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

enum MediasSubType: Codable {
    case pointOfInterest
}

enum MediasType: Codable {
    case location
}

// MARK: - MediasMeta
struct MediasMeta: Codable {
    let count: Int?
    let links: MediasLinks?
}

// MARK: - MediasLinks
struct MediasLinks: Codable {
    let linksSelf, next, last, first: String?
    let up: String?
}


//// MARK: - MediasCityadviceModel
//struct MediasCityadviceModel: Codable {
//    let data: [MediasDatum]?
//    let meta: MediasMeta?
//}
//
//// MARK: - MediasDatum
//struct MediasDatum: Codable {
//    let type: MediasType?
//    let id: String?
//    let datumSelf: MediasSelf?
//    let name, shortDescription, datumDescription: String?
//    let geoCode: MediasGeoCode?
//    let rating: String?
//    let price: MediasPrice?
//    let pictures: [String]?
//    let bookingLink: String?
//    let minimumDuration: String?
//}
//
//// MARK: - MediasSelf
//struct MediasSelf: Codable {
//    let href: String?
//    let methods: [MediasMethod]?
//}
//
//enum MediasMethod: Codable {
//    case methodGET
//}
//
//// MARK: - MediasGeoCode
//struct MediasGeoCode: Codable {
//    let latitude, longitude: Double?
//}
//
//// MARK: - MediasPrice
//struct MediasPrice: Codable {
//    let amount: String?
//}
//
//enum MediasType: Codable {
//    case activity
//}
//
//// MARK: - MediasMeta
//struct MediasMeta: Codable {
//    let count: Int?
//    let metaSelf: String?
//}

