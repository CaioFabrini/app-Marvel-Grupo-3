//
//  ComicsDetailVC.swift
//  MarvelApp
//
//  Created by Caio on 03/10/20.
//

import Foundation
import UIKit

class ComicsDetailVC:BaseViewController{
    
    @IBOutlet weak var tableViewController: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
        
        
        
    }
    
    
    func configTableView(){
        self.tableViewController.delegate = self
        self.tableViewController.dataSource = self
        self.tableViewController.register(HeaderComicsTableViewCell.nib(), forCellReuseIdentifier: HeaderComicsTableViewCell.identifier)
    }
    
}

extension ComicsDetailVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HeaderComicsTableViewCell.identifier, for: indexPath)
        
        return cell
    }
    
    
    
    
}
