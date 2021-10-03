//
//  PermissionViewFactory.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 3.10.2021.
//

import UIKit

class PermissionViewFactory {
    
    class func getManager(with type: PermissionType) -> PermissionManagerProtocol {
        
        switch type {
        case .camera:
            return CameraPermissionManager()
        case .photos:
            return PhotosPermissionManager()
        }
        
    }
    
}
