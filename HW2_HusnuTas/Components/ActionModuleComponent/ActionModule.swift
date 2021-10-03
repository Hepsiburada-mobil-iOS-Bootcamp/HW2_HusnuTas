//
//  ActionModule.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 2.10.2021.
//

import UIKit

class ActionModule: GenericBaseView<ActionModuleData> {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.cornerRadius = 6
        temp.clipsToBounds = true
        //        temp.backgroundColor = .red
        return temp
    }()
    
    private lazy var mainStackView: UIView = {
        let temp = UIStackView(arrangedSubviews: [declineButton, confirmButton])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.alignment = .center
        temp.distribution = .fill
        temp.axis = .horizontal
        temp.spacing = 20
        return temp
    }()
    
    private lazy var confirmButton: ActionButton = {
        let temp = ActionButton()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.heightAnchor.constraint(equalToConstant: 40).isActive = true
        temp.widthAnchor.constraint(equalToConstant: 150).isActive = true
        return temp
    }()
    
    private lazy var declineButton: ActionButton = {
        let temp = ActionButton()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.heightAnchor.constraint(equalToConstant: 40).isActive = true
        temp.widthAnchor.constraint(equalToConstant: 150).isActive = true
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
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10)
        ])
    }
    
    /// Loads and sets the data for the buttons
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        confirmButton.setData(by: data.confirmButtonData)
        declineButton.setData(by: data.declineButtonData)
    }
    
}
