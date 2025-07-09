//
//  AccountSegment.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 02.07.25.
//

import SwiftUI

struct AccountSegment: View {
    
    @State private var selectedIndex: Int = 1
    var callback: ((Int) -> Void)?
    
    var body: some View {
        HStack(spacing: 8) {
            
            HStack(spacing: 8) {
                Image(systemName: selectedIndex == 1 ? "circle.fill" : "circle").foregroundStyle(.green)
                Text("Mövcud").font(.system(size: 12, weight: .regular))
            }.padding([.top, .bottom], 4).padding([.leading, .trailing], 12)
                .frame(height: 32).background(Color.gray.opacity(0.2)).clipShape(RoundedRectangle(cornerRadius: 16))
                .onTapGesture {
                    selectedIndex = 1
                    callback?(selectedIndex)
                }
            
            HStack(spacing: 8) {
                Image(systemName: selectedIndex == 2 ? "circle.fill" : "circle").renderingMode(.template).foregroundStyle(.yellow)
                Text("Sifarişlər").font(.system(size: 12, weight: .regular))
            }.padding([.top, .bottom], 4).padding([.leading, .trailing], 12)
                .frame(height: 32).background(Color.gray.opacity(0.2)).clipShape(RoundedRectangle(cornerRadius: 16))
                .onTapGesture {
                    selectedIndex = 2
                    callback?(selectedIndex)
                }
            
            HStack(spacing: 8) {
                Image(systemName: selectedIndex == 3 ? "circle.fill" : "circle").renderingMode(.template).foregroundStyle(.red)
                Text("İmtina").font(.system(size: 12, weight: .regular))
            }.padding([.top, .bottom], 4).padding([.leading, .trailing], 12)
                .frame(height: 32).background(Color.gray.opacity(0.2)).clipShape(RoundedRectangle(cornerRadius: 16))
                .onTapGesture {
                    selectedIndex = 3
                    callback?(selectedIndex)
                }
        }
    }
}

#Preview {
    AccountSegment()
}
