//
//  ProfileViewController.swift
//  MarvelApp
//
//  Created by Amanda Nolasco on 14/10/20.
//

import UIKit

struct ProfileViewItem {
    
    var imageName: String
    
}

class ProfileViewController: UIViewController {
    

    @IBOutlet weak var profileCollectionView: UICollectionView!
    
    
    @IBOutlet weak var scCharactersComics: UISegmentedControl!
    
    private var collectionViewFlowLayout: UICollectionViewFlowLayout!
    var segmentedItems:Int = 0
    var items:Int = 0
    var cellIdentifier = "ItemCollectionViewCell"
    var arrayCharactersItems: [ProfileViewItem] = [ProfileViewItem(imageName: "26"),
                                                   ProfileViewItem(imageName: "55"),
                                                   ProfileViewItem(imageName: "84"),
                                                   ProfileViewItem(imageName: "85")]
    
    var arrayComicsItems: [ProfileViewItem] = [ProfileViewItem(imageName:  "28"),
                                                ProfileViewItem(imageName: "29"),
                                                ProfileViewItem(imageName: "51"),
                                                ProfileViewItem(imageName: "52")]
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupCollectionView()
    
    }
    
    @IBAction func showSettingsButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "configProfile" , sender: nil)
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        collectionViewItemSize()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        self.profileCollectionView.reloadData()
        
    }
    

    func setupCollectionView(){
        
        profileCollectionView.delegate = self
        profileCollectionView.dataSource = self
        
        let nib = UINib(nibName: "ItemCollectionViewCell", bundle: nil)
        
        profileCollectionView.register( nib, forCellWithReuseIdentifier: cellIdentifier )
        
    }
    
    func collectionViewItemSize(){
        
        if collectionViewFlowLayout == nil{
    
        let itemsPerRow: CGFloat = 2
        let lineSpacing: CGFloat = 5
        let internItemSpacing: CGFloat = 5
        let width = (profileCollectionView.frame.width - (itemsPerRow - 1) * internItemSpacing) / itemsPerRow
        let height = width
        
        collectionViewFlowLayout = UICollectionViewFlowLayout()
        collectionViewFlowLayout.itemSize = CGSize(width: width, height: height)
        collectionViewFlowLayout.sectionInset = UIEdgeInsets.zero
        collectionViewFlowLayout.scrollDirection = .vertical
        collectionViewFlowLayout.minimumLineSpacing = lineSpacing
        collectionViewFlowLayout.minimumInteritemSpacing = internItemSpacing
        profileCollectionView.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
        }
    }

    @IBAction func changeCollectionView(_ sender: UISegmentedControl) {
        
      /*  if sender.selectedSegmentIndex == 0 {
            items = arrayCharactersItems.count
        } else {
            
            items = arrayComicsItems.count
        }
        
        segmentedItems = sender.selectedSegmentIndex
        setupCollectionView()
        profileCollectionView.reloadData()
*/
    }
}

extension ProfileViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCharactersItems.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        guard let cell = profileCollectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as? ItemCollectionViewCell else{
            return UICollectionViewCell()
        }
        
        cell.ivItemCell.image = UIImage(named:arrayCharactersItems[indexPath.item].imageName)
       /* if segmentedItems == 0 {
            cell.ivItemCell.image = UIImage(named:arrayCharactersItems[indexPath.item].imageName)
        } else {
            cell.ivItemCell.image = UIImage(named:arrayComicsItems[indexPath.item].imageName)
        
    } */
        return cell

}
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("ok")
    }
    
}
