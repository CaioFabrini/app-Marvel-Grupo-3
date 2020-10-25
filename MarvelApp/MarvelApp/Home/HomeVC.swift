//
//  HomeVC.swift
//  MarvelApp
//
//  Created by Caio on 15/10/20.
//

import Foundation
import UIKit

class HomeVC: BaseViewController{
    
    @IBOutlet weak var HomeCollectionView: UICollectionView!
    
    var arrayModel : [Herois] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.arrayModel = [Herois(nome: "TESTE", descricao: "", bibiografia: "", idade: "", image: "Imagem 24.png",type:"character"),
                           Herois(nome: "Teste2", descricao: "", bibiografia: "", idade: "", image: "Imagem 25.png", type: "comic"),
                           Herois(nome: "Teste23", descricao: "", bibiografia: "", idade: "", image: "Imagem 36.png", type: "comic"),
                           Herois(nome: "Teste4", descricao: "", bibiografia: "", idade: "", image: "Imagem 26.png", type: "comic"),
                           Herois(nome: "Teste5", descricao: "", bibiografia: "", idade: "", image: "Imagem 27.png", type: "comic"),
                           Herois(nome: "Teste6", descricao: "", bibiografia: "", idade: "", image: "Imagem 28.png", type: "comic"),
                           Herois(nome: "Teste7", descricao: "", bibiografia: "", idade: "", image: "Imagem 29.png", type: "comic"),
                           Herois(nome: "Teste8", descricao: "", bibiografia: "", idade: "", image: "Imagem 30.png", type: "comic"),
                           Herois(nome: "Teste9", descricao: "", bibiografia: "", idade: "", image: "Imagem 31.png", type: "comic"),
                           Herois(nome: "Teste10", descricao: "", bibiografia: "", idade: "", image: "Imagem 38.png", type: "comic"),
                           Herois(nome: "Teste11", descricao: "", bibiografia: "", idade: "", image: "Imagem 39.png", type: "comic"),
                           Herois(nome: "Teste12", descricao: "", bibiografia: "", idade: "", image: "Imagem 40.png", type: "comic"),
                           Herois(nome: "Teste13", descricao: "", bibiografia: "", idade: "", image: "Imagem 43.png", type: "comic"),
                           Herois(nome: "Teste14", descricao: "", bibiografia: "", idade: "", image: "Imagem 45.png", type: "comic"),
                           Herois(nome: "Teste15", descricao: "", bibiografia: "", idade: "", image: "Imagem 46.png", type: "comic"),
                           Herois(nome: "Teste16", descricao: "", bibiografia: "", idade: "", image: "Imagem 47.png", type: "comic"),
                           Herois(nome: "Teste17", descricao: "", bibiografia: "", idade: "", image: "Imagem 51.png", type: "comic"),
                           Herois(nome: "Teste18", descricao: "", bibiografia: "", idade: "", image: "Imagem 52.png", type: "comic"),
                           Herois(nome: "Teste19", descricao: "", bibiografia: "", idade: "", image: "Imagem 53.png", type: "comic"),
                           Herois(nome: "Teste20", descricao: "", bibiografia: "", idade: "", image: "Imagem 54.png", type: "comic"),
                           Herois(nome: "Teste21", descricao: "", bibiografia: "", idade: "", image: "Imagem 55.png", type: "comic")
                           ]
        self.HomeCollectionView.register(UINib(nibName: "CharactersCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CharactersCollectionViewCell")
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 180, height: 200)
        self.HomeCollectionView.collectionViewLayout = layout
        self.HomeCollectionView.delegate = self
        self.HomeCollectionView.dataSource = self
    
    }
        
}

extension HomeVC:UICollectionViewDelegate ,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrayModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: CharactersCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: "CharactersCollectionViewCell", for: indexPath) as? CharactersCollectionViewCell
        
        cell?.setupCell(Herois:self.arrayModel[indexPath.item])
        return cell ?? UICollectionViewCell()
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
       
    }
}
extension HomeVC: UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 200)
        
    }
}
