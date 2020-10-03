//
//  HeaderComicsTableViewCell.swift
//  MarvelApp
//
//  Created by Caio on 03/10/20.
//

import UIKit

class HeaderComicsTableViewCell: UITableViewCell {

    static let identifier = "HeaderComicsTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "HeaderComicsTableViewCell", bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
