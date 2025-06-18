//
//  InfoComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import SwiftUI

struct InfoComponent: View {
    
    var title: String?
    var subtitle: String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            if let title = title {
                Text(title).font(.system(size: 16, weight: .medium)).foregroundStyle(.color222222)
            }
            
            if let subtitle = subtitle {
                Text(subtitle).font(.system(size: 16, weight: .regular)).padding(.leading, 12).foregroundStyle(.color757575)
            }
        }
    }
}
