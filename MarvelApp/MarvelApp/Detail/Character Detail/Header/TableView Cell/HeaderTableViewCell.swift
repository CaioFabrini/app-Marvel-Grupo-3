//
//  headerTableViewCell.swift
//  MarvelApp
//
//  Created by Caio on 27/09/20.
//


import Foundation
import UIKit

protocol SelectedCollectionHeaderTableViewCell: class{
    func imageSelected(index:Int)
}


class HeaderTableViewCell: UITableViewCell{
    
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var nameCharacterLabel: UILabel!
    @IBOutlet weak var subNameLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var favoriteLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var collectionController: UICollectionView!
    
    
    weak var delegate:SelectedCollectionHeaderTableViewCell?
    
    func delegate(delegate:SelectedCollectionHeaderTableViewCell){
        self.delegate = delegate
    }
    
    
    static let identifier = "HeaderTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "HeaderTableViewCell", bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.configScreen()
        self.collectionController.delegate = self
        self.collectionController.dataSource = self

        self.collectionController.register(HeaderCollectionViewCell.nib(), forCellWithReuseIdentifier: HeaderCollectionViewCell.identifier)
        
    }
    
    func configScreen(){
        self.subView.clipsToBounds = true
        self.subView.backgroundColor = .white
        self.subView.roundCorners([.topLeft], radius: 55)
        
    }
    
    
    @IBAction func tappedFavoriteButton(_ sender: UIButton) {
        print("tappedFavoriteButton")
    }
    
}


extension HeaderTableViewCell:UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HeaderCollectionViewCell.identifier, for: indexPath) as? HeaderCollectionViewCell
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        self.delegate?.imageSelected(index:indexPath.row)
    }
    
    
}



