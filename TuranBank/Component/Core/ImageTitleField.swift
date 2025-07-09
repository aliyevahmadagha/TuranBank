//
//  ImageTitleField.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 04.07.25.
//

import SwiftUI

struct ImageTitleField: View {
    
    @State private var text: String = ""
    var callback: ((String) -> Void)?
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("title").font(.system(size: 12, weight: .regular))
                TextField("Qeyd edin", text: $text).font(.system(size: 14, weight: .medium)).onChange(of: text) { _ in
                    callback?(text)
                }
            }
            
            Spacer()
            
            Image("penIcon")
        }.frame(height: 68).padding(.leading, 16).padding(.trailing, 12).background(Color.white).clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    ImageTitleField()
}
