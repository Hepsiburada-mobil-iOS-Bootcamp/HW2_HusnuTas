//
//  ActionButtonData.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 1.10.2021.
//

import UIKit

typealias VoidCompletionBlock = () -> Void

class ActionButtonData {
    
    private(set) var text: String
    private(set) var buttonType: ActionButtonType
    private(set) var actionButtonListener: VoidCompletionBlock?
    
    init(text: String, buttonType: ActionButtonType) {
        self.text = text
        self.buttonType = buttonType
    }
    
    func setActionButtonListener(by value: VoidCompletionBlock?) -> Self {
        actionButtonListener = value
        return self
    }
    
}
