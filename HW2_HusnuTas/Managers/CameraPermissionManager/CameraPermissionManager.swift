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
    
    func getPermissionMainViewData(confirmWith confirmListener: @escaping VoidCompletionBlock, declineWith declineListener: @escaping VoidCompletionBlock) -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.camera.value, labelPackData: LabelPackComponentData(title: PermissionLocalizables.cameraPermissionTitle.value, subTitle: PermissionLocalizables.cameraPermissionSubTitle.value), actionModuleData: ActionModuleData(confirmButtonData: ActionButtonData(text: PermissionLocalizables.permissionOk.value, buttonType: .filled(.smooth)).setActionButtonListener(by: confirmListener), declineButtonData: ActionButtonData(text: PermissionLocalizables.permissionNotNow.value, buttonType: .outlined(.smooth)).setActionButtonListener(by: declineListener)))
    }
    
}
