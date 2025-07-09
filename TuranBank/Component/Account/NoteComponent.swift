//
//  NoteComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 04.07.25.
//

import SwiftUI

struct Notes: Identifiable {
    var id = UUID()
    var icon: String
    var note: String
}

struct NoteComponent: View {
    
    var notes: [Notes]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Qeyd").padding(.bottom, 8).font(.system(size: 12, weight: .regular)).foregroundStyle(.color757575)
            
            ForEach(notes) { note in
                
                HStack(alignment: .top, spacing: 4) {
                    Image(systemName: note.icon).foregroundStyle(note.icon == "info.circle" ? .red : .black)
                    Text(note.note).foregroundStyle(note.icon == "info.circle" ? .red : .color222222)
                }
            }
            
        }.padding([.leading, .trailing], 12).padding(.top, 4).padding(.bottom, 12).background(Color.white).clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    NoteComponent(notes: fillNotes())
}


fileprivate func fillNotes() -> [Notes] {
    
    return [
        .init(icon: "checkmark.square", note: "Asan Finans məlumatların alınmasına razıyam"),
        .init(icon: "checkmark.square", note: "DVX-dən məlumatların alınmasına razıyam"),
        .init(icon: "info.circle", note: "Məsafədən hər valyuta üzrə yalnız 2 cari hesab aça bilərsiniz və ilk hesab ödənişsizdir")
    ]
}
