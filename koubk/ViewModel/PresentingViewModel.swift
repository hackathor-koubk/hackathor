//
//  PresentingViewModel.swift
//  koubk
//
//  Created by Emincan on 17.12.2022.
//

import Foundation


class PresentingViewModel {
    
    
    var advice: MediasCityadviceModel?
    var manager = NetworkManager()
    
  weak   var view = PresentingViewController()
    
    
    
    func getData() {
        NetworkManager().getAdvice { data in
            switch data {
            case .success(let success):
                self.advice = success
             //   self.view.tableview.reloadData()
                print(success)
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
}
