//
//  ActionButtonTheme.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 1.10.2021.
//

import UIKit

enum ActionButtonTheme: GenericValueProtocol {
    typealias Value = UIColor
    
    var value: UIColor {
        switch self {
        case .smooth:
            return .orange
        case .bright:
            return .systemYellow
        }
    }
    
    case smooth
    case bright
}
