//
//  EyeExerciseViewController.swift
//  LightApp2
//
//  Created by imac-2437 on 2023/5/19.
//

import UIKit

class EyeExerciseViewController: UIViewController {
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var arrowImage: UIImageView!
    @IBOutlet weak var eyeImage: UIImageView!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var secondLabel: UILabel!
    
    var timer:Timer?
    
    let contents = ["向上看","向下看","向左看","向右看","順時針旋轉","逆時針旋轉"]
    let arrow = ["arrow.up","arrow.down","arrow.left","arrow.right","arrow.clockwise","arrow.counterclockwise"]
    var number = 0
    var count = 10
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.timer = Timer.scheduledTimer(timeInterval: 1,
                                              target: self,
                                              selector: #selector(handleTimerExecution),
                                              userInfo: nil,
                                              repeats: true)
    }
    
    @objc private func handleTimerExecution() {
        count -= 1
        secondLabel.text = String(count)
        if (count == 0) {
            count = 10
            timer?.invalidate()
        }
    }
    
    func setupUI() {
        navigationItem.title = "護眼運動"
        contentLabel.text = contents[0]
        arrowImage.image = UIImage(systemName: arrow[0])
        eyeImage.image = UIImage(systemName: "eye")
        continueButton.layer.cornerRadius = 5
    }
    
    func showAlert(title: String?, message: String?, confirmTitle: String, confirm: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: confirmTitle, style: .default) { _ in
            confirm?()
        }
        alertController.addAction(confirmAction)
        present(alertController, animated: true)
    }
    
    @IBAction func continueBTnClicked(_ sender: UIButton) {
        if (contents.count == number + 1) {
            showAlert(title: "提醒", message: "護眼運動已完成", confirmTitle: "確認") {
                let nextVC = EyeExerciseViewController()
                self.navigationController?.popViewController(animated: true)
            }
        } else {
            number = number + 1
            contentLabel.text = contents[number]
            arrowImage.image = UIImage(systemName: arrow[number])
            count = 10
            secondLabel.text = String(count)
            timer?.invalidate()
            self.timer = Timer.scheduledTimer(timeInterval: 1,
                                                  target: self,
                                                  selector: #selector(handleTimerExecution),
                                                  userInfo: nil,
                                                  repeats: true)

        }
    }
    
    
}
