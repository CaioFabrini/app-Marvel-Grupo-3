//
//  OtherTableViewCell.swift
//  MarvelApp
//
//  Created by Caio on 03/10/20.
//

import UIKit

class OtherTableViewCell: UITableViewCell {

    @IBOutlet weak var otherLabel: UILabel!
    @IBOutlet weak var collectionViewController: UICollectionView!
    static let identifier = "OtherTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "OtherTableViewCell", bundle: nil)
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
