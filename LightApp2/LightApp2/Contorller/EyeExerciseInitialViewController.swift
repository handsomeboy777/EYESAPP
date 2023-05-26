//
//  EyeExerciseInitialViewController.swift
//  LightApp2
//
//  Created by imac-2437 on 2023/5/19.
//

import UIKit

class EyeExerciseInitialViewController: UIViewController {

    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var contentLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        continueButton.layer.cornerRadius = 5
        contentLabel.backgroundColor = UIColor(red: 201/255, green: 203/255, blue: 224/255, alpha: 1)
        contentLabel.layer.cornerRadius = 10
        contentLabel.layer.masksToBounds = true
        navigationItem.title = "護眼運動"
    }
    
    @IBAction func continueBtnClicked(_ sender: UIButton) {
        let nextVC = EyeExerciseViewController()
        navigationController?.pushViewController(nextVC, animated: true)
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
