//
//  HistoryPicker.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 02.07.25.
//

import SwiftUI

struct HistoryPicker: View {
    
    var fromDate: String = ""
    var toDate: String = ""
    var callback: ((Int) -> Void)?
    
    var body: some View {
        
        HStack(spacing: 12) {
            
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Tarixdən").font(.system(size: 12, weight: .regular))
                    Text(fromDate).font(.system(size: 16, weight: .regular))
                }
                
                Spacer()
                
                Image(systemName: "calendar")
                    .onTapGesture {
                        withAnimation {
                            callback?(1)
                        }
                    }
            }.frame(maxWidth: .infinity).padding(16).background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Tarixəcən").font(.system(size: 12, weight: .regular))
                    Text(toDate).font(.system(size: 16, weight: .regular))
                    
                }
                
                Spacer()
                Image(systemName: "calendar")
                    .onTapGesture {
                        withAnimation {
                            callback?(2)
                        }
                    }
            }.frame(maxWidth: .infinity).padding(16).background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}

#Preview {
    HistoryPicker()
}
