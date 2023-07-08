//
//  AppDelegate.swift
//  AnimationClass
//
//  Created by Minaya Yagubova on 15.02.23.
//

import UIKit

class SecondController: UIViewController {

//    var buttonActionCallback: (()->())?
    var changeColor: ((UIColor, String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func updateColor(color: UIColor) {
        changeColor?(color, "Renk deyisdi")
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        updateColor(color: UIColor(red: 155.0/255.0,
                                   green: 234.0/255.0,
                                   blue: 205.0/255.0, alpha: 0.2))
    }
}
