//
//  DepositInfoView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import SwiftUI

struct DepositInfoView: View {
    
    @StateObject private var viewModel: DepositInfoViewModel
    
    init(viewModel: DepositInfoViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Text("Yığım əmanəti").font(.system(size: 24, weight: .bold))
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(viewModel.depositInfoArray) { dto in
                        InfoComponent(title: dto.title, subtitle: dto.subtitle)
                    }
                    
                    Spacer().frame(maxWidth: .infinity)
                }
            }.scrollIndicators(.hidden)
        }
        .padding([.leading, .trailing], 16)
        .padding(.top, 20)
    }
}

#Preview {
    DepositInfoView(viewModel: .init())
}
