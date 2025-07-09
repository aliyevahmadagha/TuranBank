//
//  ButtonComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 16.06.25.
//

import SwiftUI

struct ButtonComponent: View {
    
    var icon: String?
    var name: String?
    var bgColor: Color?
    
    var completion: (() -> Void)?
 
    var body: some View {
        
        Button {
            completion?()
        } label: {
            
            HStack {
                if let icon = icon {
                    Image(systemName: icon)
                }
                
                if let name = name {
                    Text(name)
                }
            }.frame(height:56)
                .frame(maxWidth: .infinity)
                .foregroundStyle(.white)
                .background(bgColor)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}

#Preview {
    ButtonComponent(icon: "person", name: "Sifariş et")
}
