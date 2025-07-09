//
//  AccountComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 02.07.25.
//

import SwiftUI

struct AccountComponent: View {
    
    var title: String? = "title"
    var subtitle: String? = "subtitle"
    var amount: String? = "200"
    var icon: Image? = Image("eyeImage")
    var padding: CGFloat = 16
    
    var body: some View {
        
        HStack(spacing: 12) {
            
            if let icon = icon {
                icon.padding(.leading, padding)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                
                HStack {
                    
                    if let title = title {
                        Text(title).font(.system(size: 16, weight: .regular))
                    }
                    
                    Spacer()
                    
                    if let amount = amount {
                        Text(amount).font(.system(size: 16, weight: .regular)).padding(.trailing, padding)
                    }
                }
                
                if let subtitle = subtitle {
                    Text(subtitle).font(.system(size: 14, weight: .regular))
                }
            }
        }.frame(height: 68).background(Color.white).clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    AccountComponent()
}
