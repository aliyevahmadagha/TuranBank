//
//  AddDepositView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import SwiftUI

struct AddDepositView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var amount: String = ""
    
    var isInvalidAmount: Bool {
        if let value = Int(amount), value < 50 {
            return true
        }
        return false
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(spacing: 0) {
                Image("left.arrow").onTapGesture {
                    dismiss()
                }
                Spacer()
                Text("Əmanətin artırılması")
                Spacer()
                Spacer().frame(width: 24)
            }
            
            HStack(spacing: 12) {
                VStack(alignment: .leading) {
                    Text("Amount").font(.system(size: 12, weight: .regular)).foregroundStyle(.color757575).padding(.leading, 4)
                    TextField("50", text: $amount).padding(.leading, 4)
                        .keyboardType(.numberPad)
                        .overlay(
                            Rectangle()
                                .stroke(
                                    isInvalidAmount ? Color.red : Color.clear,
                                    lineWidth: isInvalidAmount ? 1 : 0
                                )
                        )
                }.frame(height: 68).padding([.leading, .trailing], 8).background(.white).clipShape(RoundedRectangle(cornerRadius: 8))
                
                VStack {
                    Text("Currency").font(.system(size: 12, weight: .regular)).foregroundStyle(.color757575)
                    Text("AZN").font(.system(size: 16, weight: .regular))
                    
                }.frame(width: 68, height: 68).background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }.padding(.top, 16)
            
            Text("Min: 50 AZN").font(.system(size: 12, weight: .regular)).foregroundStyle(.color757575)
            
            Spacer()
            
            ButtonComponent(buttonName: "Continue")
        }
        .padding([.top, .leading, .trailing], 16)
            .background(Color.yellow)
            .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    AddDepositView()
}
