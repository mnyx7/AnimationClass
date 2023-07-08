//
//  AppDelegate.swift
//  AnimationClass
//
//  Created by Minaya Yagubova on 15.02.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animationView: UIView!
    
    @IBOutlet weak var animationViewTopConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { _ in
//            self.showSecondController()
//        }
//    }
    
    func showSecondController() {
        let controller = storyboard?.instantiateViewController(withIdentifier: "\(SecondController.self)") as! SecondController
        controller.changeColor = { color, text in
            self.title = text
            self.view.backgroundColor = color
        }
        navigationController?.show(controller, sender: nil)
    }
    
    func animate() {
        UIView.animate(withDuration: 2) {
            self.animationView.layer.cornerRadius = 120
        } completion: { _ in
            UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.2) {
                self.animationViewTopConstraint.constant = 10
                self.view.layoutIfNeeded()
            } completion: { _ in
                UIView.animate(withDuration: 2) {
                    self.animationViewTopConstraint.constant = 200
                    self.view.layoutIfNeeded()
                } completion: { _ in
//                    self.showSecondController()
                }
            }
        }
    }
    
    @IBAction func buttonAction(_ sender: Any) {
//        showSecondController()
        animate()
    }
}
