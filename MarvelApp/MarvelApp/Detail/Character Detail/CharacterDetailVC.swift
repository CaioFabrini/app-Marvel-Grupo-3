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
    var imageSelected:String?
    var arrayModel:[Model] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
        self.add()
    }
    
    func add(){
        self.arrayModel.append(Model(nome: "teste1", image: "Imagem 26"))
        self.arrayModel.append(Model(nome: "teste2", image: "Imagem 27"))
        self.arrayModel.append(Model(nome: "teste3", image: "Imagem 28"))
        self.arrayModel.append(Model(nome: "teste4", image: "Imagem 29"))
        self.arrayModel.append(Model(nome: "teste5", image: "Imagem 30"))
    }
    
    func configTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.separatorColor = .clear
        tableView.register(HeaderTableViewCell.nib(), forCellReuseIdentifier: HeaderTableViewCell.identifier)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailVC"{
            let detailImage = segue.destination as? DetailExpationImg
            detailImage?.imageDescription = self.imageSelected
        }
    }
    
    
    
}

extension CharacterDetailVC: SelectedCollectionHeaderTableViewCell{
    func imageSelected(image: String) {
        print(image)
        self.imageSelected = image
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
            cell.config(model:self.arrayModel)
            return cell
        }
        
        
        return UITableViewCell()
    }
}



class Model{
    var name:String?
    var image:String?
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
    
    init(nome:String,image:String){
        self.image = image
        self.name = nome
    }
}
