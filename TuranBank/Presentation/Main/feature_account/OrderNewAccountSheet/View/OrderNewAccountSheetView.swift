//
//  OrderNewAccountSheetView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 07.07.25.
//

import SwiftUI

struct  OrderNewAccountSheetView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Yeni Hesab")
            Text("Hesabın aktiv edilməsi üçün ödəniş edin və müqaviləni imzalayın.").font(.system(size: 16, weight: .bold)).foregroundStyle(.color757575)
            
            ImageTitleSubtitle(title: "AZTURA2257489764646786524", subtitle: "514,00 ₼", leftIcon: "bank",)
            ImageTitleSubtitle(title: "Xidmət haqqı / təyinat", subtitle: "10 AZN / Cari hesab (onlayn)")
            
            ButtonComponent(name: "Sifariş et", bgColor: .blue)
            ButtonComponent(name: "Ləğv et", bgColor: .black.opacity(0.2))
        }.padding()
    }
}

#Preview {
    OrderNewAccountSheetView()
}
