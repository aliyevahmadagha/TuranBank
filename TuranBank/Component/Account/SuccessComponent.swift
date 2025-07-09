//
//  SuccessComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 03.07.25.
//

import SwiftUI

struct SuccessComponent: View {
    var body: some View {
        
        VStack {
            HStack(spacing: 16) {
                Image(systemName: "checkmark.square.fill").padding(.leading, 20).foregroundStyle(.green)
                Text("Copied successfully")
                
                Spacer()
            }
            .frame(height: 56)
            .background(Color.colord2Ffd1)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
            
            Spacer()
        }
        
        
    }
}

#Preview {
    SuccessComponent()
}
