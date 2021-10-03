//
//  PermissionMainViewComponent.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 3.10.2021.
//

import UIKit

class PermissionMainView: GenericBaseView<PermissionMainViewData> {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clipsToBounds = true
        temp.backgroundColor = .white
        temp.layer.cornerRadius = 10
        temp.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        return temp
    }()
    
    private lazy var mainStackView: UIView = {
        let temp = UIStackView(arrangedSubviews: [permissionImage, permissionInfoView, permissionActionModule])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.alignment = .center
        temp.distribution = .fill
        temp.axis = .vertical
        temp.spacing = 20
        return temp
    }()
    
    private lazy var permissionImage: UIImageView = {
        let temp = UIImageView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.contentMode = .scaleAspectFill
        return temp
    }()
    
    private lazy var permissionInfoView: LabelPackComponent = {
        let temp = LabelPackComponent()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    private lazy var permissionActionModule: ActionModule = {
        let temp = ActionModule()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addUserComponents()
    }
    
    /// Adds containerView and mainStackView to base view
    private func addUserComponents() {
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            // set container's frames
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            // set main stack's frames
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 40),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -60),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
        ])
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        permissionImage.image = data.image
        permissionInfoView.setData(by: data.labelPackData)
        permissionActionModule.setData(by: data.actionModuleData)
    }
    
}
