//
//  OnboardingViewController.swift
//  koubk
//
//  Created by Emincan on 16.12.2022.
//

import Foundation
import UIKit
import Lottie


class OnboardingViewCotrollerr: UIViewController {
    
    let stackView = UIStackView()
    let animationView = LottieAnimationView()
    let label = UILabel()
    
    let anmimationJson: String
    let titleText: String
    
    override func viewDidLoad() {
        view.backgroundColor = .systemBackground
        style()
        layout()
    }

    init(anmimationJson: String, titleText: String) {
        self.anmimationJson = anmimationJson
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
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.contentMode = .scaleAspectFit
        animationView.animation = LottieAnimation.named(anmimationJson)
        
        animationView.loopMode = .loop
        animationView.play()

        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.text = titleText
        
        
        
        
    }
    
    func layout() {
        stackView.addArrangedSubview(animationView)
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

