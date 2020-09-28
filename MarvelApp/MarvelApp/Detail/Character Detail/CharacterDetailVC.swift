//
//  CharacterDetailVC.swift
//  MarvelApp
//
//  Created by Caio on 27/09/20.
//

import Foundation
import UIKit

class CharacterDetailVC:BaseViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
        
    }
    
    func configTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.separatorColor = .clear
        tableView.register(HeaderTableViewCell.nib(), forCellReuseIdentifier: HeaderTableViewCell.identifier)
    }
    
    
    
}

extension CharacterDetailVC: SelectedCollectionHeaderTableViewCell{
    func imageSelected(index: Int) {
        print(index)
       self.performSegue(withIdentifier: "detailVC", sender: nil)
    }
}


extension CharacterDetailVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: HeaderTableViewCell.identifier, for: indexPath) as! HeaderTableViewCell
            cell.delegate(delegate: self)
        
            return cell
        }
        
        
    return UITableViewCell()
    }
}



class Model{
    var name:String?
    var image:UIImage?
    var detail:String?
    var isSelectedFavorite:Bool?
    var subName:String?
    var imageSelect:UIImage?
    var biografia:String?
    var height:String?
    var weight:String?
    var gender:String?
    var eyes:String?
    var hair:String?
    var universe:String?
    var otherAliases:String?
    var education:String?
    var placeOfOrigin:String?
    var identity:String?
    var knownRelatives:String?
    var powers:String?
    var groupAffiliation:String?
    
    init(image:UIImage?){
        self.image = image
    }
}
