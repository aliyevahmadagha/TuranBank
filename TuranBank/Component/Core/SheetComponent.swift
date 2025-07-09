//
//  SheetComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 16.06.25.
//

import SwiftUI

struct SheetComponent: View {
    
    var leftIcon: String?
    var title: String?
    var subtitle: String?
    var rightIcon: String?
    
    init(leftIcon: String?, title: String?, subtitle: String?, rightIcon: String?) {
        self.leftIcon = leftIcon
        self.title = title
        self.subtitle = subtitle
        self.rightIcon = rightIcon
    }
    
    var body: some View {
        
        HStack(spacing: 12) {
            if let leftIcon = leftIcon {
                Image(leftIcon).padding(.leading, 12)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                
                if let title = title {
                    Text(title).font(.system(size: 16, weight: .regular)).foregroundStyle(Color.color222222)
                }
                
                if let subtitle = subtitle {
                    Text(subtitle).font(.system(size: 12, weight: .regular)).foregroundStyle(Color.color757575)
                }
            }
            
            Spacer()
            
            if let rightIcon = rightIcon {
                Image(rightIcon).padding(.trailing, 12)
            }
        }.frame(height: 68)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}


#Preview {
    SheetComponent(leftIcon: "dollar", title: "title", subtitle: "subtitle", rightIcon: "cashbox")
}
