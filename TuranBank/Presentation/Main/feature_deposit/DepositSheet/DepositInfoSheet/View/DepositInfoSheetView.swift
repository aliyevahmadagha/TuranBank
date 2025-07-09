//
//  DepositInfoSheetView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import SwiftUI

struct DepositInfoSheetView: View {
    
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Deposit info").font(.system(size: 24, weight: .bold))
            List {
                
                ForEach(1..<11) { _ in
                    AddDepoositComponent(leftIcon: nil, title: "Adı soyadı", subtitle: "Fərid Hüseynov", rightIcon: nil).listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
            }.listStyle(.plain)
                .scrollIndicators(.hidden)
            
            ButtonComponent(name: "Close") {
                dismiss()
            }.padding(.top, 8)
            
        }.padding(.top, 20)
            .padding([.leading, .trailing], 16)
    }
}

#Preview {
    DepositInfoSheetView()
}
