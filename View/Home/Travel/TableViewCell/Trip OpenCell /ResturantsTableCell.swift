//
//  ResturantsCell.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 13/05/2021.
//

import UIKit

class ResturantsTableCell: UITableViewCell {
    //MARK:- Outlet
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Add Nib File of Collection
        collectionView.register(UINib(nibName: "ResturantsCell", bundle: nil), forCellWithReuseIdentifier: "ResturantsCell")
    }

}

//MARK:- Extension
extension ResturantsTableCell: UICollectionViewDelegate , UICollectionViewDataSource  , UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ResturantsCell", for: indexPath) as! ResturantsCell
        
        //Data cell
        cell.imageResturantes.image = resturants[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 175)
    }
    
}
