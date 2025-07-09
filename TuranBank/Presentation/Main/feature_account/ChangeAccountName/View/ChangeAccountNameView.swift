//
//  ChangeAccountNameView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 03.07.25.
//

import SwiftUI

struct ChangeAccountNameView: View {
    
    @State private var accountName: String = ""
    
    var body: some View {
        
        VStack {
            HStack(spacing: 12) {
                Image("pen").padding(.leading, 12)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Hesabın adı").font(.system(size: 12, weight: .regular))
                    TextField("Account name", text: $accountName).font(.system(size: 16, weight: .regular))
                    
                }.padding(.trailing, 12)
            }.padding(.vertical, 10).background(Color.white).clipShape(RoundedRectangle(cornerRadius: 12))
            
            
            Spacer()
            
            ButtonComponent(name: "Dəyişdir") {
                //
            }
        }.padding(16).background(Color.black.opacity(0.2))
    }
}

#Preview {
    ChangeAccountNameView()
}
