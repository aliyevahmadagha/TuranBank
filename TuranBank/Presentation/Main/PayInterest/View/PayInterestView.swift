//
//  PayInterestView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import SwiftUI

struct PayInterestView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @ViewBuilder
    func tableCell(_ text: String) -> some View {
        Text(text)
            .font(.system(size: 14, weight: .medium))
            .frame(maxWidth: .infinity)
            .multilineTextAlignment(.center)
            .foregroundColor(.color222222)
    }
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image("left.arrow").onTapGesture {
                    dismiss()
                }
                Spacer()
                Text("Ödənilmiş faizlər").font(.system(size: 16, weight: .medium))
                Spacer()
                Spacer().frame(width: 24)
            }
            
            HStack(spacing: 0) {
                tableCell("Tarix")
                tableCell("Məbləğ")
                tableCell("Valyuta")
            }.padding(.vertical, 20)
            
            PayInterestComponent()

        }.padding(16)
            .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    PayInterestView()
}

