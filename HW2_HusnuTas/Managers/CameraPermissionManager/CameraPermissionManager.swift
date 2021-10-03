//
//  CameraPermissionManager.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 3.10.2021.
//

import Foundation

class CameraPermissionManager: PermissionManagerProtocol {
    
    func requestPermission(with completion: @escaping VoidCompletionBlock) {
        print("request")
    }
    
    func getPermissionMainViewData() -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.camera.value, labelPackData: LabelPackComponentData(title: "Camera Permission", subTitle: "Would you please give permission to access your camera"), actionModuleData: ActionModuleData(confirmButtonData: ActionButtonData(text: "OK", buttonType: .filled(.smooth)), declineButtonData: ActionButtonData(text: "Not Now", buttonType: .outlined(.smooth))))
    }
    
    
}
