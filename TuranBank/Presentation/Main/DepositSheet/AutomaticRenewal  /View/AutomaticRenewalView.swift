//
//  AutomaticRenewalView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 16.06.25.
//

import SwiftUI

struct AutomaticRenewalView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 22) {
            Text("Avtoproloqasiya").font(.system(size: 24, weight: .bold))
            Text("Lorem ipsun").font(.system(size: 16, weight: .regular))
            
            ButtonComponent(buttonName: "Bağla") {
                dismiss()
            }.padding(.top, 8)
       
        }.padding(.top, 20)
            .padding([.leading, .trailing], 12)
        
        Spacer()
    }
}

#Preview {
    AutomaticRenewalView()
}
