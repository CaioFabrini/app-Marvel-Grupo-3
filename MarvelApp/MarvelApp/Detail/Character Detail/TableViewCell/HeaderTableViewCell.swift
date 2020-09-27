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
        self.subView.backgroundColor = .clear
        self.subView.addShadow(shadowColor: .clear, offSet: CGSize(width: 2.6, height: 2.6), opacity: 0.0, shadowRadius: 5.0, cornerRadius: 50.0, corners:[.topLeft], fillColor: .white)
       
    }
   
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}


extension UIView {
    
    func addShadow(shadowColor: UIColor, offSet: CGSize, opacity: Float, shadowRadius: CGFloat, cornerRadius: CGFloat, corners: UIRectCorner, fillColor: UIColor = .white) {
        
        let shadowLayer = CAShapeLayer()
        let size = CGSize(width: cornerRadius, height: cornerRadius)
        let cgPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size).cgPath //1
        shadowLayer.path = cgPath //2
        shadowLayer.fillColor = fillColor.cgColor //3
        shadowLayer.shadowColor = shadowColor.cgColor //4
        shadowLayer.shadowPath = cgPath
        shadowLayer.shadowOffset = offSet //5
        shadowLayer.shadowOpacity = opacity
        shadowLayer.shadowRadius = shadowRadius
        self.layer.addSublayer(shadowLayer)
    }
}
