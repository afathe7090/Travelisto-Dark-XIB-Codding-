//
//  TravelingPalceingCell.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit

class TravelingPalceingCell: UITableViewCell {
    //MARK:- Outlet
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var categuresLBL: UILabel!
    
    
    
    //MARK:- Variables

    var imageCollection = [UIImage]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(UINib(nibName: "palceingCell", bundle: nil), forCellWithReuseIdentifier: "palceingCell")
    }

    
    
    //MARK:- Action
    @IBAction func showMoreButtonPressed(_ sender: UIButton) {
    }
    
    
    
    
    //MARK:- Function
    func getDataCell(image: [UIImage]){
        self.imageCollection = image
    }
    
}


//MARK:- Extention


extension TravelingPalceingCell: UICollectionViewDelegate , UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "palceingCell", for: indexPath) as! palceingCell
        cell.imageView.image = imageCollection[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize (width: 150, height: 200)
    }
    
    
    
}
