//
//  PermissionViewBuilder.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 3.10.2021.
//

import UIKit

class PermissionViewBuilder {
    
    class func build(with type: PermissionType) -> UIViewController {
        
        let manager = PermissionViewFactory.getManager(with: type)
        let viewModel = PermissionViewModel(manager: manager)
        return PermissionViewController(viewModel: viewModel)
        
    }
    
}
