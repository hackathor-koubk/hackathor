//
//  PresentingViewController.swift
//  koubk
//
//  Created by Emincan on 17.12.2022.
//

import UIKit

class PresentingViewController: UIViewController {
    
   lazy  var viewModel = PresentingViewModel()

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.getData()
        setup()
    }
    
    private func setup() {
        tableview.delegate = self
        tableview.dataSource = self
    }

   

}


extension PresentingViewController: UITableViewDelegate {

}

extension PresentingViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  10
        // viewModel.advice?.data?.count ??
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = .yellow
      //  cell.textLabel?.text = viewModel.advice?.data?[indexPath.row].name ?? "n/a"
        return cell
    }
    
    
}
