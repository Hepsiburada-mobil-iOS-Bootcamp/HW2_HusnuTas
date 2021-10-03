//
//  ActionModuleData.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 2.10.2021.
//

import Foundation
import UIKit

class ActionModuleData {
    
    private(set) var confirmButtonData: ActionButtonData
    private(set) var declineButtonData: ActionButtonData
    
    init(confirmButtonData: ActionButtonData, declineButtonData: ActionButtonData) {
        self.confirmButtonData = confirmButtonData
        self.declineButtonData = declineButtonData
    }
    
}
