//
//  TestView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 04.07.25.
//

import SwiftUI

struct AnchorScrollFixedDemo: View {
    var body: some View {
        ScrollViewReader { proxy in
            VStack {
                ScrollView {
                    VStack(spacing: 10) {
                        ForEach(1...99, id: \.self) { i in
                            Text("Item \(i)")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(8)
                        }
                        
                        Text("TARGET: Item 100")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.red)
                            .cornerRadius(8)
                            .id("bottom")
                    }
                    .padding()
                }
                .frame(height: 300)
                
                HStack(spacing: 20) {
                    Button("Scroll .top") {
                        withAnimation {
                            proxy.scrollTo("bottom", anchor: .top)
                        }
                    }
                    
                    Button("Scroll .bottom") {
                        withAnimation {
                            proxy.scrollTo("bottom", anchor: .bottom)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    AccountFatcaView2()
}


import SwiftUI

struct LoadingOverlayView: View {
    var text: String = "Yüklənir..."
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.3).ignoresSafeArea()
            
            VStack() {
                ProgressView()
                    .tint(.white)
                    .scaleEffect(2)
            }
            .frame(width: 60, height: 60)
            .background(Color.black.opacity(0.7))
            .cornerRadius(30)
        }
    }
}

struct AccountFatcaView2: View {
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 16) {
                Text("Sual siyahısı burada...")
                
                Button("Yüklə") {
                    isLoading = true
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        isLoading = false
                    }
                }
            }
            
            if isLoading {
                LoadingOverlayView()
            }
        }
    }
}

