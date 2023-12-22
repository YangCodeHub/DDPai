//
//  TabBarController.swift
//  DDPai
//
//  Created by DDPai on 2023/12/20.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let onRoadVC = ViewController()
        onRoadVC.title = "在路上"
        
        let mineVC = UIViewController()
        mineVC.title = "我"
        
        if #available(iOS 15.0, *) {
            let tabBarAppear = UITabBarAppearance()
            tabBarAppear.backgroundColor = .white
            tabBar.scrollEdgeAppearance = tabBarAppear
        } else {
            tabBar.backgroundColor = .white
        }
        
        self.addChild(UINavigationController(rootViewController: onRoadVC))
        self.addChild(UINavigationController(rootViewController: mineVC))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
