//
//  PermissionLocalizables.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 3.10.2021.
//

import Foundation

enum PermissionLocalizables: String, GenericValueProtocol {
    
    typealias Value = String
    
    var value: String {
        return rawValue.localize()
    }
    
    case cameraPermissionTitle = "cameraPermissionTitle"
    case cameraPermissionSubTitle = "cameraPermissionSubTitle"
    case photosPermissionTitle = "photosPermissionTitle"
    case photosPermissionSubTitle = "photosPermissionSubTitle"
    case permissionOk = "permissionOk"
    case permissionNotNow = "permissionNotNow"
    
}
