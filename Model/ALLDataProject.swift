//
//  DataImageCell.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import Foundation
import UIKit

let WidthScreen = UIScreen.main.bounds.width
let heightScreen = UIScreen.main.bounds.height


struct dataofCollection {
    var nameOfTableCell = String()
    var collectionImage = [UIImage]()
    
}


let defults = UserDefaults.standard

let homeTableData = [dataofCollection(nameOfTableCell: "Relaxation",
                                  collectionImage: [#imageLiteral(resourceName: "Image-3"),#imageLiteral(resourceName: "Image-4"),#imageLiteral(resourceName: "Image-5")]),
                 dataofCollection(nameOfTableCell: "Hiking",
                                  collectionImage: [#imageLiteral(resourceName: "Image-6"),#imageLiteral(resourceName: "Image-12"),#imageLiteral(resourceName: "Image-15")])]


let flightDataTable =
    [dataofCollection(nameOfTableCell: "Popular Destinations", collectionImage:[UIImage(named: "Image-16")! , UIImage(named: "Image-17")! ,UIImage(named: "Image-18")! ]),
     dataofCollection(nameOfTableCell: "Deals", collectionImage: [UIImage(named: "Image-19")! , UIImage(named: "Image-20")!]),                     
     dataofCollection(nameOfTableCell: "City Breaks", collectionImage: [UIImage(named: "Image-21")! , UIImage(named: "Image-22")! ,UIImage(named: "Image-23")! ])]



let HotelsData = [dataofCollection(nameOfTableCell: "Near You", collectionImage:[UIImage(named: "Image-24")! , UIImage(named: "Image-25")! ,UIImage(named: "Image-26")! ]),
                  
    dataofCollection(nameOfTableCell: "Deals", collectionImage: [UIImage(named: "Image-27")! , UIImage(named: "Image-28")!]),
    dataofCollection(nameOfTableCell: "World Best Hotels", collectionImage: [UIImage(named: "Image-29")! , UIImage(named: "Image-30")! ])]


let dataOfProfile = ["Language" , "Currency" ,"","Units" ,"Privacy Policy"]
let detailsOfCell = ["English" , "USD" ,"","Imperial" , ""]



let languageCell = ["Arabic" , "Chinese" ,"Danish" ,"Dutch" ,"English" ,"Finnish" ,"French" , "German","Greek" , "Indonesian"]



let resturants = [UIImage(named: "Image-43")!
                  ,UIImage(named: "Image-44")!,
                  UIImage(named: "Image-45")!]


let KindPassenger = ["Adults" ,"Teens","Children" ,"Infants"]
let yearsPassenger = ["16+ years" ,"12-15 years" ,"2-11 years" ,"under 2 yeats"]
