//
//  Search.swift
//  MarvelApp
//
//  Created by Erick Sens on 25/10/20.
//

import UIKit

class Search :UIViewController {
    
    var arraySearchName : [Personagem] = []
    
    @IBOutlet var SearchBar: UISearchBar!
    
    @IBOutlet var SearchCollectionView: UICollectionView!
    
   
    
    var arraySearch = [String]()
    var searching = false
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.arraySearchName  = [Personagem(nome: "TESTE", descricao: "", bibiografia: "", idade: "", image: "Imagem 24.png",type:"character"),
                               Personagem(nome: "Teste2", descricao: "", bibiografia: "", idade: "", image: "Imagem 25.png", type: "comic"),
                               Personagem(nome: "Teste23", descricao: "", bibiografia: "", idade: "", image: "Imagem 36.png", type: "comic"),
                               Personagem(nome: "Teste4", descricao: "", bibiografia: "", idade: "", image: "Imagem 26.png", type: "comic"),
                               Personagem(nome: "Teste5", descricao: "", bibiografia: "", idade: "", image: "Imagem 27.png", type: "comic"),
                               Personagem(nome: "Teste6", descricao: "", bibiografia: "", idade: "", image: "Imagem 28.png", type: "comic"),
                               Personagem(nome: "Teste7", descricao: "", bibiografia: "", idade: "", image: "Imagem 29.png", type: "comic"),
                               Personagem(nome: "Teste8", descricao: "", bibiografia: "", idade: "", image: "Imagem 30.png", type: "comic"),
                               Personagem(nome: "Teste9", descricao: "", bibiografia: "", idade: "", image: "Imagem 31.png", type: "comic"),
                               Personagem(nome: "Teste10", descricao: "", bibiografia: "", idade: "", image: "Imagem 38.png", type: "comic"),
                               Personagem(nome: "Teste11", descricao: "", bibiografia: "", idade: "", image: "Imagem 39.png", type: "comic"),
                               Personagem(nome: "Teste12", descricao: "", bibiografia: "", idade: "", image: "Imagem 40.png", type: "comic"),
                               Personagem(nome: "Teste13", descricao: "", bibiografia: "", idade: "", image: "Imagem 43.png", type: "comic"),
                               Personagem(nome: "Teste14", descricao: "", bibiografia: "", idade: "", image: "Imagem 45.png", type: "comic"),
                               Personagem(nome: "Teste15", descricao: "", bibiografia: "", idade: "", image: "Imagem 46.png", type: "comic"),
                               Personagem(nome: "Teste16", descricao: "", bibiografia: "", idade: "", image: "Imagem 47.png", type: "comic"),
                               Personagem(nome: "Teste17", descricao: "", bibiografia: "", idade: "", image: "Imagem 51.png", type: "comic"),
                               Personagem(nome: "Teste18", descricao: "", bibiografia: "", idade: "", image: "Imagem 52.png", type: "comic"),
                               Personagem(nome: "Teste19", descricao: "", bibiografia: "", idade: "", image: "Imagem 53.png", type: "comic"),
                               Personagem(nome: "Teste20", descricao: "", bibiografia: "", idade: "", image: "Imagem 54.png", type: "comic"),
                               Personagem(nome: "Teste21", descricao: "", bibiografia: "", idade: "", image: "Imagem 55.png", type: "comic")
                               ]
        
        self.SearchCollectionView.register(UINib(nibName: "CharactersCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CharactersCollectionViewCell")
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 170, height: 200)
        self.SearchCollectionView.collectionViewLayout = layout
       self.SearchCollectionView.delegate = self
        self.SearchCollectionView.dataSource = self
    }
    
}

extension Search: UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if searching{
             return arraySearch.count

        }else{
            return arraySearchName.count
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CharactersCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: "CharactersCollectionViewCell", for: indexPath) as? CharactersCollectionViewCell
        if searching{
            cell?.LblNome?.text = arraySearch[indexPath.row]
        }
        
        else {
            cell?.setupCell(Personagem:self.arraySearchName[indexPath.item])

        }
        return cell!
       
    }
}
extension Search: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    //    arraySearch = arraySearchName.filter({$0.nome == searchText.lowercased()})
        searching = true
        SearchCollectionView.reloadData()
    }
}

