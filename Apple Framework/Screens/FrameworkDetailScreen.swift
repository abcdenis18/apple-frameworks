//
//  FrameworkDetailView.swift
//  Apple Framework
//
//  Created by Denis Fajar Sidik on 05/11/23.
//

import SwiftUI

struct FrameworkDetailScreen: View {
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView: Bool = false
    
    var framework: Framework
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
            }
        }
        .padding()
        
        Spacer()
        
        FrameworkItemView(framework: framework)
        
        Text(framework.description)
            .padding()
        
        Spacer()
        
        Button {
            isShowingSafariView = true
        } label: {
            AppButtonView(label: "Learn More")
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

#Preview {
    FrameworkDetailScreen(isShowingDetailView: .constant(false), framework: MockData.frameworks[0])
        .preferredColorScheme(.dark)
}
