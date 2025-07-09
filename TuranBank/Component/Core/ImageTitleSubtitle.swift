//
//  ImageTitleSubtitle.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 04.07.25.
//


import SwiftUI

struct ImageTitleSubtitle: View {
    
    var title: String?
    var subtitle: String?
    var titleSubtitlePadding: EdgeInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
    var leftIcon: String?
    var leftIconPadding: EdgeInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
    var rightIcon: String?
    var rightIconPadding: EdgeInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
    var bgColor: Color?

    
    var body: some View {
        
        HStack(spacing: 12) {
            
            if let leftIcon = leftIcon {
                Image(leftIcon)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                
                if let title = title {
                    Text(title).font(.system(size: 12, weight: .regular)).foregroundStyle(Color.color757575)
                }
                
                if let subtitle = subtitle {
                    Text(subtitle).font(.system(size: 16, weight: .regular)).foregroundStyle(Color.color222222)
                }
                
            }.padding(titleSubtitlePadding)
            
            Spacer()
            
            if let rightIcon = rightIcon {
                Image(rightIcon).padding(.trailing, 12)
            }
        }.frame(height: 68)
            .background(bgColor)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}


#Preview {
    ImageTitleSubtitle(title: "title", subtitle: "subtitle", rightIcon: "down.arrow")
}
