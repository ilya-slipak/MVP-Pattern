//
//  ViewController.swift
//  MVP
//
//  Created by Ilya Slipak on 03.10.2020.
//

import UIKit

final class CarListViewController: UIViewController, AlertShowable {
    
    // MARK: - IBOutlet Properties
    
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - Properties
    
    var presenter: CarListPresenterProtocol!
    
    // MARK: - Lifecycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
    }
}

// MARK: - CarViewProtocol

extension CarListViewController: CarViewProtocol {
    
    func setupView() {
        
        title = "Car List"
        tableView.estimatedRowHeight = UITableView.automaticDimension
        tableView.register(UINib(nibName: "CarContentTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "CarContentTableViewCell")
    }
        
    func reloadData() {
        
        tableView.reloadData()
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension CarListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return presenter.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarContentTableViewCell",
                                                 for: indexPath) as! CarContentTableViewCell
        
        let carModel = presenter.getCarModel(at: indexPath.row)
        cell.configure(with: carModel)
        
        return cell
    }
}
