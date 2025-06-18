//
//  DepositTypeSheetView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 16.06.25.
//

import SwiftUI

struct DepositTypeSheetView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @StateObject private var viewModel = DepositTypeSheetViewModel()
    
    var callback: ((String) -> Void)?
    init(callback: @escaping ((String) -> Void)) {
        self.callback = callback
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Deposit type").font(.system(size: 24, weight: .bold)).padding(.leading, 12)
            ForEach(viewModel.depositTypeArray) { dto in
                SheetComponent(leftIcon: dto.leftIcon, title: dto.title, subtitle: dto.subtitle, rightIcon: dto.rightIcon).onTapGesture {
                    callback?(dto.title ?? "type is empty")
                    dismiss()
                }
            }
        }.padding(.top, 20)
        
        Spacer()
    }
}


#Preview {
    DepositTypeSheetView(callback: { title in
        print(title)
    })
}
