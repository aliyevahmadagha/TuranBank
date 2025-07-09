//
//  AccountsView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 02.07.25.
//

import SwiftUI

struct AccountsView: View {
    
    @StateObject var viewModel = AccountsViewModel()
    @Environment(\.dismiss) private var dismiss
    
    @State private var index: Int = 1
    @State private var accountIsActive: Bool = false
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 20) {
                
                NavigationComponent(title: "Accounts", leftIcons: [(1, "left.arrow")]) { index in
                    switch index {
                    case 1: dismiss()
                    default:
                        break
                    }
                }
                
                AccountSegment() { index in
                    viewModel.selectedIndex = index
                    self.index = index
                }
                
                VStack(spacing: 8, ) {
                    ForEach(viewModel.accountsList, id: \.self.subtitle) { model in
                        
                        AccountComponent(title: model.title, subtitle: model.subtitle, amount: "\(model.amount ?? 0.00)").onTapGesture {
                            if self.index == 1 {
                                accountIsActive = true
                            }
                        }
                    }
                }
                
                Spacer()
                ButtonComponent(name: "+ Hesab aç", bgColor: .blue) {
                    print(#function)
                }
            }
            .padding([.leading, .trailing], 16)
            .background(Color.gray.opacity(0.2))
            
            .navigationDestination(isPresented: $accountIsActive) {
                AvailableAccountsView()
            }
            
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    AccountsView()
}
