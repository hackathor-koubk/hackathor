//
//  NetworkManager.swift
//  koubk
//
//  Created by Emincan on 17.12.2022.
//

import Foundation


protocol NetworkManagerProtocol {
    
}


struct API {
   static let url = "https://test.api.amadeus.com/v1/reference-data/locations/pois?latitude=41.397158&longitude=2.160873&radius=1&page%5Blimit%5D=10&page%5Boffset%5D=0&categories=NIGHTLIFE"
}


struct NetworkManager: NetworkManagerProtocol{
    
    static let shared = NetworkManager()
    
    func getAdvice(completion: @escaping ((Result<MediasCityadviceModel,Error>) -> Void)){
        let fullUrl = "\(API.url)"
        print("servise ulaştı")
        guard let url = URL(string: fullUrl) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data , error == nil else {
                return
            }
            let officeJson = try? JSONDecoder().decode(MediasCityadviceModel.self, from: data)
            if let officeJson = officeJson {
                completion(.success(officeJson))
                print("fooo---- data çekildi")
            }
        }
        .resume()
    }
}
