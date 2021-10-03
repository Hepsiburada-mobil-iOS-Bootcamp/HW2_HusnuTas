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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // create the buttons
        addActionButton()
        
        // set the data for the buttons
        let cameraButtonData = ActionButtonData(text: "Camera", buttonType: .filled(.smooth)).setActionButtonListener(by: cameraButtonHandler)
        self.cameraButton.setData(by: cameraButtonData)
        
        let photosButtonData = ActionButtonData(text: "Photos", buttonType: .filled(.bright)).setActionButtonListener(by: photosButtonHandler)
        self.photosButton.setData(by: photosButtonData)
    }
    
    lazy var cameraButtonHandler: VoidCompletionBlock = {
        self.present(PermissionViewBuilder.build(with: .camera), animated: true) {
            print("camera permissionView presented")
        }
    }
    
    lazy var photosButtonHandler: VoidCompletionBlock = {
        self.present(PermissionViewBuilder.build(with: .photos), animated: true) {
            print("photos permissionView presented")
        }
    }
    
    private func addActionButton() {
        // create confirm button
        cameraButton = ActionButton()
        cameraButton.translatesAutoresizingMaskIntoConstraints = false
        
        // confirmButton.delegate = self
        
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
            photosButton.centerYAnchor.constraint(equalTo: cameraButton.bottomAnchor, constant: 50)
        ])
    }


}

//extension ViewController {
//    func actionButtonPressed() {
//        print("viewcontroller informed")
//    }
//}
