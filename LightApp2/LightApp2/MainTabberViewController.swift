//
//  MainTabberViewController.swift
//  LightApp2
//
//  Created by imac-2437 on 2023/5/19.
//

import UIKit

class MainTabberViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabbar()
        // Do any additional setup after loading the view.
    }
    
    func setupTabbar() {
        let mainNC = UINavigationController(rootViewController: MainViewController())
        let recordNC = UINavigationController(rootViewController: RecordViewController())
        let EyeExerciseNC = UINavigationController(rootViewController: EyeExerciseInitialViewController())
        mainNC.tabBarItem.image = UIImage(systemName: "house")
        recordNC.tabBarItem.image = UIImage(systemName: "list.bullet")
        EyeExerciseNC.tabBarItem.image = UIImage(systemName: "eye")
        
        setViewControllers([mainNC, recordNC,EyeExerciseNC], animated: true)
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
