//
//  CollectionSearch.swift
//  MarvelApp
//
//  Created by Erick Sens on 29/10/20.
//

import UIKit

class CollectionSearch : UIViewController {
    
    var dataSource : [Personagem] = []
    var name : String?

    @IBOutlet weak var collectionViewSearch: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionViewSearch.register(UINib(nibName: "CharactersCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CharactersCollectionViewCell")
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 170, height: 200)
        self.collectionViewSearch.collectionViewLayout = layout
        self.collectionViewSearch.reloadData()

    }
}

extension CollectionSearch: UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count

    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CharactersCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: "CharactersCollectionViewCell", for: indexPath) as? CharactersCollectionViewCell
        cell?.setupCell(Personagem: self.dataSource[indexPath.item])
        return cell ?? UICollectionViewCell()
    }
}





