//
//  FrameworkItemView.swift
//  Apple Framework
//
//  Created by Denis Fajar Sidik on 05/11/23.
//

import SwiftUI

struct FrameworkItemView: View {
    let framework: Framework
    
    var body: some View {
        
        VStack ( alignment: .center, spacing: 10, content: {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 85, height: 85)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        })
        
    }
}

#Preview {
    FrameworkItemView(framework: MockData.frameworks[0])
}
