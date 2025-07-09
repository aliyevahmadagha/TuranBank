//
//  DepositDocumentView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import SwiftUI

struct DepositDocumentView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 0) {
                Image("left.arrow").onTapGesture {
                    dismiss()
                }
                Spacer()
                Text("Sənədlər")
                Spacer()
                Spacer().frame(width: 24)
            }.frame(height: 56)
            
            AddDepoositComponent(leftIcon: "document", title: "aDOC", subtitle: "Sənəd ilə tanış olmaq üçün klikləyin", rightIcon: nil)
            AddDepoositComponent(leftIcon: "document", title: "PDF", subtitle: "Sənəd ilə tanış olmaq üçün klikləyin", rightIcon: nil)
            
            Spacer()
        }.padding([.leading, .trailing], 16)
            .background(Color.gray.opacity(0.4))
            .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    DepositDocumentView()
}
