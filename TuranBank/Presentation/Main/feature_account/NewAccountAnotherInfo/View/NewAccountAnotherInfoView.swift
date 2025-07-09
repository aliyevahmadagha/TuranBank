//
//  NewAccountAnotherInfoView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 04.07.25.
//

import SwiftUI

struct NewAccountAnotherInfoView: View {
    
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        
        VStack(spacing: 16) {
            NavigationComponent(title: "Yeni hesab", leftIcons: [(1, "left.arrow")]) { index in
                switch index {
                case 1: dismiss()
                default:
                    break
                }
                
            }
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(1..<10) { index in
                        
                        
                        ImageTitleField()
                    }
                }
                
                NoteComponent(notes: fillNotes()).padding(.top, 8)
                
            }.scrollIndicators(.hidden)
            
            ButtonComponent(name: "Davam et", bgColor: .blue) {
                print("tapped")
            }
            
        }.padding([.leading, .trailing], 16).background(Color.black.opacity(0.1))
    }
}

#Preview {
    NewAccountAnotherInfoView()
}

fileprivate func fillNotes() -> [Notes] {
    
    return [
        .init(icon: "checkmark.square", note: "Məlumatların doğruluğunu təsqiləyirəm "),
        .init(icon: "checkmark.square", note: "Asan Finans məlumatların alınmasına razıyam"),
        .init(icon: "checkmark.square", note: "DVX-dən məlumatların alınmasına razıyam")
    ]
}
