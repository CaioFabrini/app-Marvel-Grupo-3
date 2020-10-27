//
//  CharactersCollectionViewCell.swift
//  MarvelApp
//
//  Created by Erick Sens on 25/10/20.
//

import UIKit

class CharactersCollectionViewCell: UICollectionViewCell {
   

    @IBOutlet weak var Charecter: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var name = ""
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setupCell(Herois : Herois){
        self.label.text = Herois.nome
        self.Charecter.image = UIImage(named: Herois.image )
    }
    }


