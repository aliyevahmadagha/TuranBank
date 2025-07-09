//
//  QuestionComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 07.07.25.
//

import SwiftUI

struct QuestionComponent: View {
    
    @State private var isOn = false
    var text: String = ""
    var callback: ((String, Bool) -> Void)?
    
    var body: some View {
        
        HStack {
            Toggle(text, isOn: $isOn).tint(.blue).onChange(of: isOn) { state in
                callback?(text, state)
            }.padding()
        }.background(Color.white).clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    QuestionComponent()
}
