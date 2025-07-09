//
//  PayInterstSheetView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 16.06.25.
//

import SwiftUI

struct PayInterstSheetView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @StateObject private var viewModel = PayInterestSheetViewModel()
    
    var callback: ((String) -> Void)?
    init(callback: @escaping ((String) -> Void)) {
        self.callback = callback
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Faizlərin ödənişi").font(.system(size: 24, weight: .bold)).padding(.leading, 12)
            ForEach(viewModel.payInterestArray) { dto in
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
    PayInterstSheetView { title in
        print(title)
    }
}
