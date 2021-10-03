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
    
    func getPermissionMainViewData() -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.photos.value, labelPackData: LabelPackComponentData(title: "Photos Permission", subTitle: "Would you please give permission to access your photos"), actionModuleData: ActionModuleData(confirmButtonData: ActionButtonData(text: "OK", buttonType: .filled(.bright)), declineButtonData: ActionButtonData(text: "Not Now", buttonType: .outlined(.bright))))
    }
    
    
}
