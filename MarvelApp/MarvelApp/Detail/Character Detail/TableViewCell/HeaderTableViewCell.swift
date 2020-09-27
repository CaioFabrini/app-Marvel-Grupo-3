//
//  headerTableViewCell.swift
//  MarvelApp
//
//  Created by Caio on 27/09/20.
//


import UIKit

class HeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var characterImage: UIImageView!
    
    @IBOutlet weak var subView: UIView!
    
    static let identifier = "HeaderTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "HeaderTableViewCell", bundle: nil)
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        self.configScreen()
       
        
        
    }
    
    func configScreen(){
        
        self.subView.clipsToBounds = true
        self.subView.backgroundColor = .white
       self.subView.roundCorners([.topLeft], radius: 55)
        
    }
   
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}


extension UIView {
    
        func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
             let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
             let mask = CAShapeLayer()
             mask.path = path.cgPath
             self.layer.mask = mask
        }
}
