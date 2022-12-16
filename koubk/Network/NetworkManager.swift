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
   static let url = ""
}


struct NetworkManager: NetworkManagerProtocol{
    
    static let shared = NetworkManager()
    
    func getAdvice(completion: @escaping ((Result<MediasCityadviceModel,Error>) -> Void)){
        let fullUrl = "\(API.url)"
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
