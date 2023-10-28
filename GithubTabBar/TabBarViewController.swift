//
//  TabBarViewController.swift
//  GithubTabBar
//
//  Created by MRhimi on 28/10/2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    
    func setupTabBar(){
        
        let homeViewController = ViewController()
        homeViewController.title = "Home"
        homeViewController.tabBarItem.image = UIImage(systemName: "house")
        homeViewController.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        let notificationViewController = ViewController()
        notificationViewController.title = "Notification"
        notificationViewController.tabBarItem.image = UIImage(systemName: "bell")
        notificationViewController.tabBarItem.selectedImage = UIImage(systemName: "bell.fill")
        
     
        let exploreViewController = ViewController()
        exploreViewController.title = "Explore"
        exploreViewController.tabBarItem.image = UIImage(systemName: "web.camera")
        exploreViewController.tabBarItem.selectedImage = UIImage(systemName: "web.camera.fill")
            
        let profileViewController = ViewController()
        profileViewController.title = "Profile"
        
        let imageview = UIImageView(frame: CGRect(x: 0, y: 0, width: 28, height: 28))
        imageview.image = UIImage(named: "avatar")
        imageview.setCornerRadius(radius: 14)
        
        let selectedImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 28, height: 28))
        selectedImageView.image = UIImage(named: "avatar")
        selectedImageView.setCornerRadius(radius: 14)
        selectedImageView.addBorder(width: 2, color: .systemBlue)
        
        profileViewController.tabBarItem.image = .init(view: imageview)?.withRenderingMode(.alwaysOriginal)
        profileViewController.tabBarItem.selectedImage = .init(view: selectedImageView)?.withRenderingMode(.alwaysOriginal)

        
        viewControllers = [
            UINavigationController(rootViewController: homeViewController),
            UINavigationController(rootViewController: notificationViewController),
            UINavigationController(rootViewController: exploreViewController),
            UINavigationController(rootViewController: profileViewController)
        ]
        
    }
}
