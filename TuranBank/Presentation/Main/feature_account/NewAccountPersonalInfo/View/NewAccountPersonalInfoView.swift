//
//  NewAccountPersonalInfoView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 04.07.25.
//

import SwiftUI

struct NewAccountPersonalInfoView: View {
    
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
                VStack(spacing: 4) {
                    IdentityComponent()
                    
                    IncludeNumberComponent(leftIcon: "cashbox", title: "Əlaqə telefonu", rightIcon: "penIcon") { text in
                        print(text)
                    }
                    
                    VStack(spacing: 12) {
                        ForEach(1..<7) { index in
                            
                            switch index {
                            case 6: ImageTitleSubtitle(title: "title", subtitle: "subtitle",  titleSubtitlePadding: .init(top: 0, leading: 12, bottom: 0, trailing: 0), rightIcon: nil, bgColor: .black.opacity(0.1))
                            default: ImageTitleSubtitle(title: "title", subtitle: "subtitle", titleSubtitlePadding: .init(top: 0, leading: 12, bottom: 0, trailing: 0), rightIcon: "down.arrow", bgColor: .white)
                            }
                        }
                    }
                    
                    NoteComponent(notes: fillNotes()).padding(.top, 8)
        
                }
            }.scrollIndicators(.hidden)
            
            ButtonComponent(name: "Davam et", bgColor: .blue) {
                //
            }
        }.padding([.leading, .trailing], 16).background(Color.black.opacity(0.1))
    }
}

#Preview {
    NewAccountPersonalInfoView()
}

fileprivate func fillNotes() -> [Notes] {
    
    return [
        .init(icon: "checkmark.square", note: "Asan Finans məlumatların alınmasına razıyam"),
        .init(icon: "checkmark.square", note: "DVX-dən məlumatların alınmasına razıyam"),
        .init(icon: "info.circle", note: "Məsafədən hər valyuta üzrə yalnız 2 cari hesab aça bilərsiniz və ilk hesab ödənişsizdir")
    ]
}
