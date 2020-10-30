//
//  Search.swift
//  MarvelApp
//
//  Created by Erick Sens on 25/10/20.
//

import UIKit

class Search :UIViewController {
    
    @IBOutlet weak var SearchBar: UISearchBar!
    
    
    var arraySearch = [String]()
    var searching = false
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func prepare( for segue: UIStoryboardSegue, sender: AnyObject?){
           SearchBar.resignFirstResponder()
           let  vc = segue.destination as! CollectionSearch
           vc.name = SearchBar.text
   }
                
    }
    
    @IBAction func CharacterButton(_ sender: Any) {
        self.performSegue(withIdentifier: "result", sender: nil)
    }
    @IBAction func ComicButton(_ sender: Any) {
    }
}

//extension Search: UICollectionViewDelegate , UICollectionViewDataSource{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        if searching{
//             return arraySearch.count
//
//        }else{
//            return arraySearchName.count
//        }
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell: CharactersCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: "CharactersCollectionViewCell", for: indexPath) as? CharactersCollectionViewCell
//        if searching{
//            cell?.LblNome?.text = arraySearch[indexPath.row]
//        }
//
//        else {
//            cell?.setupCell(Personagem:self.arraySearchName[indexPath.item])
//
//        }
//        return cell!
//
//    }
//}
//extension Search: UISearchBarDelegate{
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//    //    arraySearch = arraySearchName.filter({$0.nome == searchText.lowercased()})
//        searching = true
//    //    SearchCollectionView.reloadData()
//    }
//}

