//
//  OnboardingViewController.swift
//  koubk
//
//  Created by Emincan on 16.12.2022.
//

import Foundation
import UIKit



class OnboardingViewCotrollerr: UIViewController {
    
    let stackView = UIStackView()
    let imageview = UIImageView()
   // let imageview = UIImageView()
    let label = UILabel()
    
    let gifname: String
    let titleText: String
    
    override func viewDidLoad() {
        view.backgroundColor = .systemBackground
        style()
        layout()
    }

    init(gifname:String, titleText: String){
        self.gifname = gifname
        self.titleText = titleText
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension OnboardingViewCotrollerr {
    func style() {
        view.backgroundColor = .systemBackground
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 10
      //  stackView.distribution = .equalCentering
        stackView.axis = .vertical
        
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .scaleAspectFit
        imageview.image = UIImage.gifImageWithName(gifname)
        

        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.text = titleText
        
        
        
        
    }
    
    func layout() {
        stackView.addArrangedSubview(imageview)
        stackView.addArrangedSubview(label)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
        ])
    }
    
}

