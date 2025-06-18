//
//  MoreMenuComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import SwiftUI

struct MoreMenuComponent: View {
    
    var title: String?
    @State var rightIcon: String?

    
    var body: some View {
        HStack {
            if let title = title {
                Text(title)
            }
            
            Spacer()
            
            if let image = rightIcon {
                Image(systemName: image)
            }
        }
    }
}

#Preview {
    MoreMenuComponent(title: "title", rightIcon: "moon")
}
