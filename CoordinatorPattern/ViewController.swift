//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Nazar Kopeika on 16.05.2023.
//

/* Coordinator Pattern - pattenr, where the controllers have no knowledge of each other, they just notify the coordinator of some event occured, and the coordinator coordinates the navigation between different screens and controllers. Example: VC1 tells cooridanot: "a button was tapped, go ahead and do what you gotta do with it", and the coodrinator will make a decision to show this screen. */

import UIKit

class ViewController: UIViewController, Coordinating { /* 34 add Coordinating */
    var coordinator: Coordinator? /* 35 */
    
    override func viewDidLoad() {
        super.viewDidLoad() 
        view.backgroundColor = .red /* 32 */
        title = "Home" /* 33 */
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55)) /* 43 */
        view.addSubview(button) /* 44 */
        button.center = view.center /* 45 */
        button.backgroundColor = .systemGreen /* 46 */
        button.setTitleColor(.white, for: .normal) /* 47 */
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside) /* 48 */
        button.setTitle("Tap Me", for: .normal) /* 56 */
    }
    
    @objc func didTapButton() { /* 49 */
        coordinator?.eventOccured(with: .buttonTapped) /* 50 */
    }


}

