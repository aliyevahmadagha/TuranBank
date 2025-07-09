//
//  DetailsComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 03.07.25.
//

import SwiftUI

struct DetailsComponent: View {
    var title: String? = "Bankın adı"
    var subtitle: String? = "Turan Bank ASC"
    var copyIcon: Image? = Image(systemName: "document.on.document")
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                if let title = title {
                    Text(title).font(.system(size: 12, weight: .regular))
                }
                
                if let subtitle = subtitle {
                    Text(subtitle).font(.system(size: 16, weight: .regular))
                }

            }.padding(.leading, 12).padding([.top, .bottom], 10)
            
            Spacer()
            
            if let copyIcon = copyIcon {
                copyIcon.padding(.trailing, 12).onTapGesture {
                    UIPasteboard.general.string = subtitle
                }
            }
        }.background(Color.black.opacity(0.2)).clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    DetailsComponent()
}
