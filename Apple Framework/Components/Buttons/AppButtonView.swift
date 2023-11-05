//
//  AppButtonView.swift
//  Apple Framework
//
//  Created by Denis Fajar Sidik on 05/11/23.
//

import SwiftUI

struct AppButtonView: View {
    var label: String
    
    var body: some View {
        Text(label)
            .font(.title3)
            .foregroundColor(.white)
            .frame(width: 280, height: 50)
            .background(.indigo)
            .cornerRadius(10)
    }
}

#Preview {
    AppButtonView(label: "App Button")
}
