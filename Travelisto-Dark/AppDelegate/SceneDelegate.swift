//
//  SceneDelegate.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        //2
        window?.windowScene = windowScene
        //3
        let homeXIB = TutorialVC()
        window?.rootViewController = homeXIB
        //4
        window?.makeKeyAndVisible()

        guard let _ = (scene as? UIWindowScene) else { return }
    }

    
    //MARK:- Function


}

