//
//  PhotosPermissionManager.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 3.10.2021.
//

import Foundation

class PhotosPermissionManager: PermissionManagerProtocol {
    
    func requestPermission(with completion: @escaping VoidCompletionBlock) {
        print("request")
    }
    
    func getPermissionMainViewData(confirmWith confirmListener: @escaping VoidCompletionBlock, declineWith declineListener: @escaping VoidCompletionBlock) -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.photos.value, labelPackData: LabelPackComponentData(title: PermissionLocalizables.photosPermissionTitle.value, subTitle: PermissionLocalizables.photosPermissionSubTitle.value), actionModuleData: ActionModuleData(confirmButtonData: ActionButtonData(text: PermissionLocalizables.permissionOk.value, buttonType: .filled(.bright)).setActionButtonListener(by: confirmListener), declineButtonData: ActionButtonData(text: PermissionLocalizables.permissionNotNow.value, buttonType: .outlined(.bright)).setActionButtonListener(by: declineListener)))
    }
    
}
