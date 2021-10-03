//
//  PermissionManagerProtocol.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 3.10.2021.
//

import Foundation

enum PermissionType {
    case camera
    case photos
}

protocol PermissionManagerProtocol {
    
    func requestPermission(with completion: @escaping VoidCompletionBlock)
    
    func getPermissionMainViewData(confirmWith confirmListener: @escaping VoidCompletionBlock, declineWith declineListener: @escaping VoidCompletionBlock) -> PermissionMainViewData
    
}
