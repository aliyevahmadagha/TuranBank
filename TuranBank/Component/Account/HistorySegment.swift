//
//  HistorySegment.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 03.07.25.
//

import SwiftUI

struct HistorySegment: View {
    
    @State private var selectedButton: Int = 1
    var callback: ((Int) -> Void)?
    
    var body: some View {
        HStack(spacing: 8) {
            
            Text("Hamısı").font(.system(size: 14, weight: .regular)).padding([.top, .bottom], 4).padding([.leading, .trailing], 12).foregroundStyle(.white).background(selectedButton == 1 ? Color.blue : Color.black.opacity(0.4)).clipShape(RoundedRectangle(cornerRadius: 12))
                .onTapGesture {
                selectedButton = 1
                callback?(selectedButton)
                    
            }
            
            Text("Mədaxil").font(.system(size: 14, weight: .regular)).padding([.top, .bottom], 4).padding([.leading, .trailing], 12).foregroundStyle(.white).background(selectedButton == 2 ? Color.blue : Color.black.opacity(0.4)).clipShape(RoundedRectangle(cornerRadius: 12))
                .onTapGesture {
                selectedButton = 2
                callback?(selectedButton)
            }
            
            Text("Məxaric").font(.system(size: 14, weight: .regular)).padding([.top, .bottom], 4).padding([.leading, .trailing], 12).foregroundStyle(.white).background(selectedButton == 3 ? Color.blue : Color.black.opacity(0.4)).clipShape(RoundedRectangle(cornerRadius: 12))
                .onTapGesture {
                selectedButton = 3
                callback?(selectedButton)
            }
            
            Spacer()
        }
    }
}

#Preview {
    HistorySegment()
}
