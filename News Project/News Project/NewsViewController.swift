//
//  NewsViewController.swift
//  News Project
//
//  Created by USER-MAC-GLIT-007 on 12/02/23.
//

import Foundation
import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    @IBOutlet weak var titleLabel: UILabel!
    
    private var categories: [String] = []
    private var titleCategories: String = ""
    
    convenience init(categories: [String], titleCategories: String) {
        self.init()
        
        self.categories = categories
        self.titleCategories = titleCategories
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        self.titleLabel.text = titleCategories
    }
}

extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = categories[indexPath.row]
        
        return cell
    }
}
