//
//  ViewController.swift
//  TabBarApp
//
//  Created by Konstantin on 08.04.2025.
//

import UIKit

final class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach { viewController in
            if let firstVC = viewController as? FirstViewController {
                firstVC.view.backgroundColor = .systemOrange
            } else if let secondVC = viewController as? SecondViewController {
                secondVC.view.backgroundColor = .systemMint
            } else if let navigationVC = viewController as? UINavigationController {
                let thirdVC = navigationVC.topViewController as? ThirdViewController
                thirdVC?.title = "Third screen"
                thirdVC?.view.backgroundColor = .systemCyan
            }
        }
    }
}

