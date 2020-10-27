//
//  CharactersCollectionViewCell.swift
//  MarvelApp
//
//  Created by Erick Sens on 26/10/20.
//

import UIKit

class CharactersCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var Character: UIImageView!
    
    @IBOutlet weak var LblNome: UILabel!
  
    var name = ""
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setupCell(Personagem : Personagem){
        self.LblNome.text = Personagem.nome
        self.Character.image = UIImage(named: Personagem.image)
    }
}

