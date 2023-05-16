//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Nazar Kopeika on 16.05.2023.
//

import Foundation
import UIKit /* 9 */

class MainCoordinator: Coordinator { /* 10 */
    var navigationController: UINavigationController? /* 11 */
    
    var children: [Coordinator]? = nil /* 58 */
    
    func eventOccured(with type: Event) { /* 12 */
        switch type { /* 51 */
        case .buttonTapped: /* 52 */
            var vc: UIViewController & Coordinating = SecondViewController() /* 53 */
            vc.coordinator = self /* 54 */
            navigationController?.pushViewController(vc, animated: true) /* 55 */
        }
    }
    
    func start() { /* 13 */
        var vc: UIViewController & Coordinating = ViewController() /* 36 */
        
        vc.coordinator = self /* 38 */
        
        navigationController?.setViewControllers([vc],
                                                 animated: false) /* 37 */
    }
    
}
