//
//  AccountsDetailComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 02.07.25.
//

import SwiftUI

struct AccountsDetailComponent: View {
    
    var blur: CGFloat = 0
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            VStack(spacing: 16) {
                Image("cashbox").resizable().frame(width: 72, height: 72)
                
                VStack(spacing: 4) {
                    Text("AZ86TURA410100125754944").font(.system(size: 12, weight: .regular)).blur(radius: blur)
                    Text("1200,25 ₼").font(.system(size: 16, weight: .semibold)).blur(radius: blur)
                }
            }
            
            HStack(spacing: 0) {
                
                VStack {
                    Image("send.arrow")
                    Text("Send money")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundStyle(.blue)
                }.frame(maxWidth: .infinity)
                
                
                VStack {
                    Image("history.arrow")
                    Text("History")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundStyle(.blue)
                }.frame(maxWidth: .infinity)
                
            }.padding(.bottom, 12).padding(.top, 8).background(Color.white).clipShape(RoundedRectangle(cornerRadius: 8))
            
        }
    }
}

#Preview {
    AccountsDetailComponent()
}
