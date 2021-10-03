//
//  ViewController.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 29.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var cameraButton: ActionButton!
    private var photosButton: ActionButton!
    private var actionModule: ActionModule!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // create the buttons
        addActionButton()
        addActionModule()
        setupActionModuleData()
        
        // set data for the buttons
        let cameraButtonData = ActionButtonData(text: "Camera", buttonType: .filled(.smooth)).setActionButtonListener(by: cameraButtonHandler)
        self.cameraButton.setData(by: cameraButtonData)
        
        let photosButtonData = ActionButtonData(text: "Photos", buttonType: .filled(.bright)).setActionButtonListener(by: photosButtonHandler)
        self.photosButton.setData(by: photosButtonData)
    }
    
    lazy var cameraButtonHandler: VoidCompletionBlock = {
        print("camera")
    }
    
    lazy var photosButtonHandler: VoidCompletionBlock = {
        print("photos")
    }
    
    private func addActionButton() {
        // create confirm button
        cameraButton = ActionButton()
        cameraButton.translatesAutoresizingMaskIntoConstraints = false
        
//        confirmButton.delegate = self
        
        view.addSubview(cameraButton)
        
        NSLayoutConstraint.activate([
            cameraButton.heightAnchor.constraint(equalToConstant: 40),
            cameraButton.widthAnchor.constraint(equalToConstant: 120),
            
            cameraButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cameraButton.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 140)
        ])
        
        // create decline button
        photosButton = ActionButton()
        photosButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(photosButton)
        
        NSLayoutConstraint.activate([
            photosButton.heightAnchor.constraint(equalToConstant: 40),
            photosButton.widthAnchor.constraint(equalToConstant: 120),
            
            photosButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            photosButton.centerYAnchor.constraint(equalTo: cameraButton.bottomAnchor, constant: 60)
        ])
    }
    
    private func addActionModule() {
        actionModule = ActionModule()
        actionModule.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(actionModule)
        
        NSLayoutConstraint.activate([
            actionModule.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionModule.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200)
        ])
    }
    
    private func setupActionModuleData() {
        let confirmButton = ActionButtonData(text: "OK", buttonType: .filled(.smooth)).setActionButtonListener {
            print("confirm")
        }
        
        let declineButton = ActionButtonData(text: "Not Now", buttonType: .outlined(.smooth)).setActionButtonListener {
            print("decline")
        }
        
        actionModule.setData(by: ActionModuleData(confirmButtonData: confirmButton, declineButtonData: declineButton))
    }


}

//extension ViewController {
//    func actionButtonPressed() {
//        print("viewcontroller informed")
//    }
//}
