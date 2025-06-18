//
//  PresentDepositView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import SwiftUI

struct PresentDepositView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @StateObject private var viewModel: PresentDepositViewModel
    
    @State private var addDeposit: Bool = false
    @State private var depositInfo: Bool = false
    @State private var payInterest: Bool = false
    @State private var documents: Bool = false
    @State private var iButtonIsActive: Bool = false
    
    @State private var blur: CGFloat = 0
    
    init(viewModel: PresentDepositViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                HStack(spacing: 0) {
                    Image("left.arrow").onTapGesture {
                        dismiss()
                    }
                    Image("eyeImage").onTapGesture {
                        if blur == 0 {
                            blur = 6
                        } else {
                            blur = 0
                        }
                    }
                    Spacer()
                    Text("Account name").foregroundStyle(.white)
                    Spacer()
                    Spacer().frame(width: 24)
                    Image("info").onTapGesture {
                        iButtonIsActive = true
                    }
                }.frame(height: 20)
                
                VStack(spacing: 16) {
                    Image("cashbox")
                        .resizable()
                        .frame(width: 72, height: 72)
                    
                    VStack {
                        Text("AZ86TURA410100125754944").foregroundStyle(.white).blur(radius: blur)
                        Text("1200,25 ₼").font(.system(size: 16, weight: .bold)).foregroundStyle(.black).blur(radius: blur)
                    }
                }
                
                VStack(spacing: 8) {
                    ForEach(viewModel.presentDepositArray) { dto in
                        SheetComponent(leftIcon: dto.leftIcon, title: dto.title, subtitle: dto.subtitle, rightIcon: nil).onTapGesture {
                            switch dto.id {
                            case 1: addDeposit = true
                            case 2: depositInfo = true
                            case 3: payInterest = true
                            case 4: documents = true
                            default: break
                            }
                        }
                    }
                }
                Spacer()
            }.padding(.top, 20)
                .padding(.horizontal, 16)
                .background(Color.gray.opacity(0.4))
            
                .sheet(isPresented: $depositInfo) {
                    DepositInfoSheetView()
                        .presentationDragIndicator(.visible)
                }
            
                .navigationDestination(isPresented: $payInterest) {
                    PayInterestView()
                }
                .navigationDestination(isPresented: $documents) {
                    DepositDocumentView()
                }
            
                .sheet(isPresented: $iButtonIsActive) {
                    DepositInfoView(viewModel: .init())
                        .presentationDragIndicator(.visible)
                }
            
                .navigationDestination(isPresented: $addDeposit) {
                    AddDepositView()
                }
        }
    }
}

#Preview {
    PresentDepositView(viewModel: .init())
}
