//
//  FatcaView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import SwiftUI

struct FatcaView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Hal-hazırkı məlumatlarınızda hər hansı bir dəyişiklik varmı?")
            Text("Anketi və müqaviləni oxumaq üçün vaxt: 15 dəqiqə")
            HStack(spacing: 0) {
                ButtonComponent(name: "BƏLİ") {
                    dismiss()
                }
                ButtonComponent(name: "XEYR")
           
            }
        }.padding(12)
            .toolbar(.hidden, for: .navigationBar)
    }
}
