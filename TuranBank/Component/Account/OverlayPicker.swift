//
//  OverlayPicker.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 02.07.25.
//

import SwiftUI

struct OverlayPicker: View {
    @State private var selectedDate = Date()
    @State var showPicker: Bool = false
    var callback: ((String) -> Void)?
    
    var body: some View {
        
        if showPicker {

            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Image(systemName: "xmark.circle").foregroundStyle(.blue).onTapGesture {
                        showPicker = false
                        callback?("")
                    }
                }
                DatePicker(
                    "Tarix seçin",
                    selection: $selectedDate,
                    displayedComponents: [.date]
                )
                .datePickerStyle(.graphical)
                
                HStack {
                    
                    Spacer()
                    
                    Button("OK") {
                        showPicker = false
                        callback?(formatted(selectedDate))
                    }
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .shadow(radius: 10)
            .padding(.horizontal, 40)
             
        }
    }
}

func formatted(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    return formatter.string(from: date)
}


#Preview {
    OverlayPicker(showPicker: true)
}

