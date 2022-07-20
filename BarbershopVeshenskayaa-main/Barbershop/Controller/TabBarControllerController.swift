//
//  TabBarControllerController.swift
//  Barbershop
//
//  Created by mac on 20.07.2022.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        configure()
    }
    
    private func configure() {
        tabBar.tintColor = Resourse.Color.activ
        tabBar.barTintColor = Resourse.Color.inactiv
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resourse.Color.seporator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: DetailViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        vc2.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        
        vc1.title = "Contacnts"
        vc2.title = "Contacnts"
      
        tabBar.tintColor = .label
        setViewControllers([vc1,vc2], animated: true)
    }
    
}

