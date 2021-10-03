//
//  ActionButton.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 29.09.2021.
//

import UIKit

//protocol ActionButtonDelegate: AnyObject {
//    func actionButtonPressed()
//}

class ActionButton: GenericBaseView<ActionButtonData> {
    
//    weak var delegate: ActionButtonDelegate?
    
    private lazy var shadowContainer: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.shadowColor = UIColor.black.cgColor
        temp.layer.shadowRadius = 4
        temp.layer.shadowOpacity = 0.8
        temp.layer.cornerRadius = 6
        temp.layer.shadowOffset = CGSize(width: 0, height: 2)
        return temp
    }()
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.cornerRadius = 6
        temp.clipsToBounds = true
                temp.backgroundColor = .red
        return temp
    }()
    
    private lazy var buttonTitle: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.font = FontManager.bold(14).value
        temp.text = ""
        temp.contentMode = .center
        temp.textAlignment = .center
        return temp
    }()
    
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addContainerView()
    }
    
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        addTapGesture()
    }
    
    /// Adds shadow, container and title to the button's view
    private func addContainerView() {
        addSubview(shadowContainer)
        shadowContainer.addSubview(containerView)
        containerView.addSubview(buttonTitle)
        
        NSLayoutConstraint.activate([
            // set shadow's frames
            shadowContainer.topAnchor.constraint(equalTo: topAnchor),
            shadowContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            shadowContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            shadowContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            // set container's frames
            containerView.topAnchor.constraint(equalTo: shadowContainer.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: shadowContainer.leadingAnchor),
            containerView.bottomAnchor.constraint(equalTo: shadowContainer.bottomAnchor),
            containerView.trailingAnchor.constraint(equalTo: shadowContainer.trailingAnchor),
            // set horizontal and vertical center for button title
            buttonTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonTitle.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    /// Sets the style of the button according to selected type and theme
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        
        buttonTitle.text = data.text
        
        switch data.buttonType {
        case .filled(let theme):
            containerView.backgroundColor = theme.value
            buttonTitle.textColor = .white
        case .outlined(let theme):
            containerView.backgroundColor = .white
            containerView.layer.borderColor = theme.value.cgColor
            containerView.layer.borderWidth = 1
            buttonTitle.textColor = theme.value
        }
    }
    
    private func actionButtonPressed() {
        guard let data = returnData() else { return }
        data.actionButtonListener?()
    }
    
}

extension ActionButton: UIGestureRecognizerDelegate {
    
    private func addTapGesture() {
        let tap = UITapGestureRecognizer(target: self, action: .buttonTappedSelector)
        tap.delegate = self
        addGestureRecognizer(tap)
    }
    
    @objc fileprivate func buttonTapped(_ sender: UITapGestureRecognizer) {
        isUserInteractionEnabled = false
        startTappedAnimation { finish in
            if finish {
                self.isUserInteractionEnabled = true
                print("clicked")
                // inform viewcontroller
                // self.delegate?.actionButtonPressed()
                self.actionButtonPressed()
            }
        }
    }
    
}

fileprivate extension Selector {
    static let buttonTappedSelector = #selector(ActionButton.buttonTapped)
}
