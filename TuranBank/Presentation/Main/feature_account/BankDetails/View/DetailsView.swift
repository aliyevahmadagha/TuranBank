//
//  DetailsView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 03.07.25.
//

import SwiftUI

struct DetailsView: View {
    
    @State private var isCopied: Bool = false
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 16) {
                
                NavigationComponent(title: "Rekvizitler", leftIcons: [(1, "left.arrow")], rightIcons: [(2, "copy"), (3, "send")]) { index in
                    switch index {
                    case 1: dismiss()
                    case 2:
                        let allData = fillArray().map { "\($0.title ?? ""): \($0.subtitle ?? "")" }.joined(separator: "\n")
                        UIPasteboard.general.string = allData
                        isCopied = true
                        DispatchQueue.main.asyncAfter(deadline: .now() +  1) {
                            isCopied = false
                        }
                    case 3: break
                    default:
                        break
                    }
                }
                
                List {
                    ForEach(fillArray()) { reponse in
                        DetailsComponent(title: reponse.title, subtitle: reponse.subtitle)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
                            .listRowSeparator(.hidden)
                    }
                }.listStyle(.plain)
                    .scrollIndicators(.hidden)
                
                Spacer()
                
            }.padding([.leading, .trailing, .bottom], 16)
                .toolbar(.hidden, for: .navigationBar)
            
            if isCopied {
                SuccessComponent()
            }
        }
    }
}

#Preview {
    DetailsView()
}

fileprivate func fillArray() -> [DetailsResponse] {
    return [
        .init(title: "Bankın adı", subtitle: "Turan Bank ASC"),
        .init(title: "Filialın kodu", subtitle: "507462"),
        .init(title: "Filialın adı", subtitle: "Gəncə filialı"),
        .init(title: "Bankın VÖEN-i", subtitle: "1300016391"),
        .init(title: "Müxbir hesab", subtitle: "AZ26NABZ0135001000000027944"),
        .init(title: "SWIFT kod", subtitle: "TURAAZ22"),
        .init(title: "Ünvan", subtitle: "Cavadxan küç., 24"),
        .init(title: "Nömrə", subtitle: "994 (222) 55-43-85"),
        .init(title: "Hesabın adı", subtitle: "Dəvrişova Nəsrin Akif qızı"),
        .init(title: "Valyutası", subtitle: "AZN"),
        .init(title: "Hesab nömrəsi", subtitle: "AZ32TURA410515165051056944")
    ]
}
