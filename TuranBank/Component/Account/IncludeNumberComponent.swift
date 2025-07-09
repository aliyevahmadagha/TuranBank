//
//  IncludeNumberComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 04.07.25.
//

import SwiftUI

struct IncludeNumberComponent: View {
    
    var leftIcon: String?
    var title: String?
    var rightIcon: String?
    var callback: ((String) -> Void)?
    
    @State private var phoneNumber: String = ""
    
    var body: some View {
        
        VStack(spacing: 4) {
            HStack(spacing: 12) {
                if let leftIcon = leftIcon {
                    Image(leftIcon).padding(.leading, 12)
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    if let title = title {
                        Text(title).font(.system(size: 12, weight: .regular)).foregroundStyle(Color.color757575)
                    }
                    
                    TextField("Zəhmət olmasa daxil edin", text: $phoneNumber).keyboardType(.numberPad).onChange(of: phoneNumber) { _ in
                        callback?(phoneNumber)
                    }
                }
                
                Spacer()
                
                if let rightIcon = rightIcon {
                    Image(rightIcon).padding(.trailing, 12)
                }
            }.frame(height: 68)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text("Bu mobil telefon nömrəsindən istifadə etmirsinizsə hal-hazırda aktiv istifadə etdiyiniz nömrəni qeyd edin.").font(.system(size: 12, weight: .regular)).foregroundStyle(.color757575)
        }
    }
}

