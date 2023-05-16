//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Nazar Kopeika on 16.05.2023.
//

import Foundation
import UIKit /* 1 */

enum Event { /* 5 */
    case buttonTapped /* 6 */
}

protocol Coordinator { /* 2 */
    var navigationController: UINavigationController? { get set } /* 2 */
    var children: [Coordinator]? { get set } /* 57 */
    
    func eventOccured(with type: Event) /* 4 */
    func start() /* 3 */
    
}

protocol Coordinating { /* 7 */
    var coordinator: Coordinator? { get set } /* 8 */
}
