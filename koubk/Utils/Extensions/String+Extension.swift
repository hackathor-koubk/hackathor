//
//  String+Extension.swift
//  koubk
//
//  Created by Toygun Çil on 16.12.2022.
//

import Foundation

//MARK: - Extensions
extension String {
    func localized() -> String {
        return NSLocalizedString(self,tableName: "Localizable",bundle: .main,value: self,comment: self)
    }
}
