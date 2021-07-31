//
//  PupolarTableCell.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit

class PupolarTableCell: UITableViewCell {
    //MARK:- outLet
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var titleLBLCell: UILabel!
    
    
    //MARK:- variables
    var imageCell = [UIImage] ()

    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(UINib(nibName: "pupolarCollectionCell", bundle: nil), forCellWithReuseIdentifier: "pupolarCollectionCell")
    }

    
    

    @IBAction func showMoreButtonPressed(_ sender: UIButton) {
    }
    
    
    
    //MARK:- Function
    
    func getData(Image: [UIImage]){
        self.imageCell = Image
    }
}

//MARK:- Extention

extension PupolarTableCell: UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageCell.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pupolarCollectionCell", for: indexPath) as! pupolarCollectionCell
        
        //data cell 
        cell.ImageCell.image = imageCell[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 200)
    }
}
