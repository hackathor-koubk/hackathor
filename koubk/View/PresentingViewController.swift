//
//  PresentingViewController.swift
//  koubk
//
//  Created by Emincan on 17.12.2022.
//

import UIKit

class PresentingViewController: UIViewController {
    
    lazy var viewModel = PresentingViewModel()

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    private func setup() {
        // delegate datasource
    }

   

}


extension PresentingViewModel {  // : UITableViewDelegate,UITableViewDataSource {
    
    
    
    
    
}
