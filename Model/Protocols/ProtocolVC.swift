//
//  ProtocolVC.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 03/05/2021.
//

import Foundation

protocol SignOut {
    func goToSignIN()
    func goToLanguageCells()
}
protocol backNav {
    func popNavigation()
}

//To Go to the Find FightVC
protocol goToFindFlights {
    func  goToFindFlights()
}

protocol getAndDismios {
    func getAndDismis()
}

protocol searchButton {
    func goToOffer()
}
