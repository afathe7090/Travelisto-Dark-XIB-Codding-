//
//  DealsTabelCell.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit

class DealsTabelCell: UITableViewCell {

    @IBOutlet weak var dealName: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK:- Variables
    
    var imagwCell = [UIImage]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        collectionView.register(UINib(nibName: "DealsCollectionCell", bundle: nil), forCellWithReuseIdentifier: "DealsCollectionCell")
    }


    
    //MARK:- Functoin
    
    
    func setDataCell(image: [UIImage]){
        self.imagwCell = image
    }
    
}

//MARK:- Extintion

extension DealsTabelCell: UICollectionViewDelegate ,UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagwCell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DealsCollectionCell", for: indexPath) as! DealsCollectionCell
        
        //data cell
        cell.imageCell.image = imagwCell[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: WidthScreen - 50, height: 100)
    }
}
