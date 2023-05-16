//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Nazar Kopeika on 16.05.2023.
//

import UIKit

class SecondViewController: UIViewController, Coordinating { /* 41 add Coordinating */
    var coordinator: Coordinator? /* 42 */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second" /* 39 */
        view.backgroundColor = .systemBlue /* 40 */
        
    }
   

}
