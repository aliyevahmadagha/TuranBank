//
//  ButtonComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 16.06.25.
//

import SwiftUI

struct ButtonComponent: View {
    
    var buttonImage: String?
    var buttonName: String?
    var completion: (() -> Void)?
    
    init(buttonImage: String? = nil, buttonName: String? = nil, completion: (() -> Void)? = nil) {
        self.completion = completion
        self.buttonImage = buttonImage
        self.buttonName = buttonName
    }
    
    var body: some View {
        
        HStack {
            Button {
                completion?()
            } label: {
                if let buttonImage = buttonImage {
                    Image(systemName: buttonImage)
                }
                
                if let buttonName = buttonName {
                    Text(buttonName)
                }
            }
        }.frame(height:56)
            .frame(maxWidth: .infinity)
            .foregroundStyle(.white)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        
    }
}

#Preview {
    ButtonComponent(buttonImage: "person", buttonName: "Sifariş et")
}
