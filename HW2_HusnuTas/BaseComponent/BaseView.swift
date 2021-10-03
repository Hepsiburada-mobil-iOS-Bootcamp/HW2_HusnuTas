//
//  BaseView.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 29.09.2021.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addMajorViewComponents()
        setupViewConfigurations()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addMajorViewComponents() {}
    
    func setupViewConfigurations() {}
    
}
