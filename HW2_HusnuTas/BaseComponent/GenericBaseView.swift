//
//  GenericBaseView.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 1.10.2021.
//

import UIKit

class GenericBaseView<T>: BaseView {
    
    private var data: T?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(frame: CGRect = .zero, data: T? = nil) {
        self.data = data
        super.init(frame: frame)
        loadDataView()
    }
    
    func loadDataView() {}
    
    func setData(by value: T?) {
        self.data = value
        loadDataView()
    }
    
    func returnData() -> T? {
        return data
    }
    
}
