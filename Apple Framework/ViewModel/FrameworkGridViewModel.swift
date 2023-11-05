//
//  FrameworkGridViewModel.swift
//  Apple Framework
//
//  Created by Denis Fajar Sidik on 05/11/23.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    func selectFramework(_ framework: Framework) {
        selectedFramework = framework
    }
}
