//
//  HistoryView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 03.07.25.
//

import SwiftUI

struct HistoryView: View {
    
    @State private var selectedItem: Int?
    @State var fromDate: String = ""
    @State var toDate: String = ""
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 16) {
                HistoryPicker(fromDate: fromDate, toDate: toDate) { num in
                    
                    selectedItem = num
                }
                HistorySegment() { index in
                    print(index)
                    
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("18 avqust").font(.system(size: 12, weight: .medium))
                    AccountComponent(icon: Image("cart"), padding: 0)
                }
                
                Spacer()
            }.padding(16)
            
            if selectedItem == 1 {
                Color.black.opacity(0.2)
                    .ignoresSafeArea()
                OverlayPicker(showPicker: true) { date in
                    fromDate = date
                    selectedItem = nil
                }
            }
            
            if selectedItem == 2 {
                Color.black.opacity(0.2)
                    .ignoresSafeArea()
                OverlayPicker(showPicker: true) { date in
                    toDate  = date
                    selectedItem = nil
                }
            }
        }
    }
}

#Preview {
    HistoryView()
}
