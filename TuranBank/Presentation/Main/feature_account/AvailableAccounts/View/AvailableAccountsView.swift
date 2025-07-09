//
//  AvailableAccountsView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 02.07.25.
//

import SwiftUI

struct AvailableAccountsView: View {
    
    @Environment(\.dismiss) private var dismiss
    @StateObject var viewModel = AvailableAccountsViewModel()
    @State private var blur: CGFloat = 0
    @State private var details: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            NavigationComponent(title: "Account name", leftIcons: [(1, "left.arrow"), (2, "eyeImage")]) { index in
                
                switch index {
                case 1: dismiss()
                case 2:
                    if blur == 0 {
                        blur = 6
                    } else {
                        blur = 0
                    }
                default: break
                }
            }
            
            AccountsDetailComponent(blur: blur)
            
            VStack(spacing: 8) {
                ForEach(1..<3) { num in
                    switch num {
                    case 1: AccountComponent(title: "Hesab adını dəyiş", subtitle: nil, amount: nil, icon: Image("pen"))
                    case 2: AccountComponent(title: "Rekvizitlər", subtitle: nil, amount: nil, icon: Image("pen")).onTapGesture {
                        details = true
                    }
                    default:
                        Text("")
                    }
                }
            }
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Ödənişlər").font(.system(size: 16, weight: .semibold))
                
                VStack(spacing: 12) {
                    ForEach(1..<3) { num in
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Date")
                                .foregroundStyle(.color757575)
                                .font(.system(size: 12, weight: .medium))
                            AccountComponent(icon: Image("cart"), padding: 0)
                        }
                    }
                }
                
                Button {
                    
                } label: {
                    Text("Bütün ödənişlər").font(.system(size: 12, weight: .regular))
                }
            }.padding(16).background(Color.white).clipShape(RoundedRectangle(cornerRadius: 12))
            
            Spacer()
            
        }
        .padding([.leading, .trailing], 16)
        .background(Color.gray.opacity(0.2))
        .toolbar(.hidden, for: .navigationBar)
        
        .navigationDestination(isPresented: $details) {
            DetailsView()
        }
    }
}

#Preview {
    AvailableAccountsView()
}
