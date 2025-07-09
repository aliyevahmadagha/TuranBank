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
    
    @State private var image: String = "circle"
    
    var callback: ((String) -> Void)?
    init(callback: @escaping ((String) -> Void)) {
        self.callback = callback
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Deposit type").font(.system(size: 24, weight: .bold)).padding(.leading, 12)
            ForEach(viewModel.depositTypeArray) { dto in
                SheetComponent(leftIcon: dto.leftIcon, title: dto.title, subtitle: dto.subtitle, rightIcon: image).onTapGesture {
                    callback?(dto.title ?? "type is empty")
                    if dto.id == 1 {
                        image = "dollar"
                    }
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
