//
//  CharactersCollectionViewCell.swift
//  MarvelApp
//
//  Created by Erick Sens on 25/10/20.
//

import UIKit

class CharactersCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var LblNome: UILabel!
    @IBOutlet weak var Charecter: UIImageView!
    
    
    var name = ""
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setupCell(Herois : Herois){
        self.LblNome.text = Herois.nome
        self.Charecter.image = UIImage(named: Herois.image )
    }
    }


