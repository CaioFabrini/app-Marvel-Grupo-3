//
//  Search.swift
//  MarvelApp
//
//  Created by Erick Sens on 25/10/20.
//

import UIKit

class Search :UIViewController {
    

    
    @IBOutlet var SearchBar: UISearchBar!
    
    @IBOutlet var SearchCollectionView: UICollectionView!
    
   
    
    var arraySearch = [String]()
    var searching = false
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.SearchCollectionView.register(UINib(nibName: "CharactersCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CharactersCollectionViewCell")
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 170, height: 200)
        self.SearchCollectionView.collectionViewLayout = layout
//        self.SearchCollectionView.delegate = self
//        self.SearchCollectionView.dataSource = self
    }
    
}

//extension Search: UICollectionViewDelegate , UICollectionViewDataSource{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        if searching{
//             return arraySearch.count
//
//        }else{
//            return arraarraySearchName.count
//        }
//
//    }
    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell: CharactersCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: "CharactersCollectionViewCell", for: indexPath) as? CharactersCollectionViewCell
//        if searching{
//            cell?.LblNome?.text = arraySearch[indexPath.row]
//        }
//        }
//        else {
//            cell?.setupCell(Model: self.arraarraySearchName[indexPath.item])
//
//        }
//        return cell!
//        }
//
//extension Search: UISearchBarDelegate{
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
////        arraySearch = arraySearchName.filter({$0.prefix(searchText.count) == searchText.lowercased()})
//        searching = true
//        SearchCollectionView.reloadData()
//    }
//}

