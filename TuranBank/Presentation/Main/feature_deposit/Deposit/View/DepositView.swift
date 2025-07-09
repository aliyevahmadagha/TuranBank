//
//  DepositView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 14.06.25.
//

import SwiftUI

struct DepositView: View {
    
    @State private var switchDepositOrder: Bool = false
    var body: some View {
        
        NavigationStack {
            VStack {
                Button {
                    switchDepositOrder = true
                } label: {
                    Image(systemName: "arrow.right").tint(.red)
                }
            }
            .navigationDestination(isPresented: $switchDepositOrder) {
                DepositOrderView(viewModel: .init())
            }
            
        }
    }
}

#Preview {
    DepositView()
}
