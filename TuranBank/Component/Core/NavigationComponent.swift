//
//  NavigationComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 08.07.25.
//

import SwiftUI

struct NavigationComponent: View {
    
    var title: String?
    var leftIcons: [(Int, String)]?
    var rightIcons: [(Int, String)]?
    
    var callback: ((Int) -> Void)?
    
    var body: some View {
        ZStack {
            HStack(spacing: 12) {
                
                if let leftIcons = leftIcons {
                    ForEach(leftIcons, id: \.self.0) { icon in
                        Image(icon.1).onTapGesture {
                            callback?(icon.0)
                        }
                    }
                }
                
                Spacer()
                
                if let rightIcons = rightIcons {
                    ForEach(rightIcons, id: \.self.0) { icon in
                        Image(icon.1).onTapGesture {
                            callback?(icon.0)
                        }
                    }
                }
            }
            
            if let title = title {
                Text(title)
            }
        }
    }
}

#Preview {
    NavigationComponent()
}
