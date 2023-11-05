//
//  FrameworkGridView.swift
//  Apple Framework
//
//  Created by Denis Fajar Sidik on 05/11/23.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkItemView(framework: framework)
                            .onTapGesture {
                                viewModel.selectFramework(framework)
                            }
                    }
                }
            }
            .padding(.top, 20)
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                FrameworkDetailScreen(isShowingDetailView: $viewModel.isShowingDetailView, framework: viewModel.selectedFramework!)
            })
            
        }
        
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(.dark)
}
