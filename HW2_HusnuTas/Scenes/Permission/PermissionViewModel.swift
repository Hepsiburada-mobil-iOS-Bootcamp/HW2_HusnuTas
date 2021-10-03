//
//  PermissionViewModel.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 3.10.2021.
//

import Foundation
import UIKit

class PermissionViewModel {
    
    private let manager: PermissionManagerProtocol
    private var permissionViewDismissActionBlock: VoidCompletionBlock?
    
    init(manager: PermissionManagerProtocol) {
        self.manager = manager
    }
    
    func listenManagerActions(with completion: @escaping VoidCompletionBlock) {
        permissionViewDismissActionBlock = completion
    }
    
    func getPermissionMainViewData() -> PermissionMainViewData {
        return manager.getPermissionMainViewData(confirmWith: confirmListenerHandler, declineWith: declineListenerHandler)
    }
    
    lazy var confirmListenerHandler: VoidCompletionBlock = { [weak self] in
        print("confirmed")
    }
    
    lazy var declineListenerHandler: VoidCompletionBlock = { [weak self] in
        print("declined")
        self?.permissionViewDismissActionBlock?()
    }
    
}
