//
//  IdentityComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 04.07.25.
//

import SwiftUI

struct IdentityComponent: View {
    
    @State private var number: String = ""
    
    var body: some View {
            VStack(alignment: .leading, spacing: 4) {
                Text("Şəxsiyyət vəsiqəsi Seriya və nömrəsi").font(.system(size: 12, weight: .regular)).font(.system(size: 12, weight: .regular)).foregroundStyle(.color757575)
                
                HStack(spacing: 4) {
                    ImageTitleSubtitle(title: "Seriya", subtitle: "AA", rightIcon: "down.arrow", bgColor: .white)
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Nömrə").font(.system(size: 12, weight: .regular)).font(.system(size: 12, weight: .regular)).foregroundStyle(.color757575)
                            TextField("0000000", text: $number).font(.system(size: 16, weight: .regular)).foregroundStyle(Color.color222222).keyboardType(.numberPad)
                        }.padding(.leading, 16)
                        
                        Spacer()
                        
                        Image("penIcon").padding(.trailing, 12)
                    }.frame(height: 68).background(Color.white).clipShape(RoundedRectangle(cornerRadius: 12))
                }
                Text("Vəsiqə məlumatlarınız dəyişibsə yeni vəsiqə nömrəsini qeyd edin.").font(.system(size: 12, weight: .regular)).font(.system(size: 12, weight: .regular)).foregroundStyle(.color757575)
            
            }
    }
}

#Preview {
    IdentityComponent()
}
