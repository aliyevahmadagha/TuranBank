//
//  EnrollFromSheetView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import SwiftUI

struct EnrollFromSheetView: View {
    
    @StateObject private var viewModel: EnrollFromSheetViewModel
    
    init(viewModel: EnrollFromSheetViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Enroll From").font(.system(size: 24, weight: .bold))
                
                Picker("Select", selection: $viewModel.selectedSegment) {
                    ForEach(0..<viewModel.segments.count, id: \.self) { index in
                        Text(viewModel.segments[index])
                            .tag(index)
                    }
                }
                .pickerStyle(.segmented)
                
                ForEach(viewModel.enrollFromArray) { dto in
                    AddDepoositComponent(leftIcon: dto.leftIcon, title: dto.title, subtitle: dto.subtitle, rightIcon: dto.rightIcon)
                    
                }
                
            }.padding([.leading, .trailing], 12)
                .padding(.top, 20)
            
            Spacer()
        }.background(Color.yellow)
    }
}

#Preview {
    EnrollFromSheetView(viewModel: .init())
}
