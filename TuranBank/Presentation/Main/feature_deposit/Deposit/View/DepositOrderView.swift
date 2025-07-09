//
//  DepositOrderView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 13.06.25.
//

import SwiftUI

struct DepositOrderView: View {
    
    @State private var buttonImage: String? = "plus"
    @State private var buttonName: String? = "Sifariş et"
    
    @StateObject private var viewModel: DepositOrderViewModel
    
    @Environment(\.dismiss) private var dismiss
    
    @State var depositType: String? = nil
    @State var payFrom: String? = nil
    @State var payInterest: String? = nil
    
    @State private var depositTypeSheetIsActive: Bool = false
    @State private var payFromSheetIsActive: Bool = false
    @State private var payInterestIsActive: Bool = false
    @State private var enterTheAmount: Bool = false
    @State private var automaticRenewal: Bool = false
    @State private var openDeposit: Bool = false
    
    init(viewModel: DepositOrderViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack(spacing: 48){
            ScrollView {
                VStack(spacing: 24) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Deposit type")
                        AddDepoositComponent(leftIcon: "cashbox", title: "Deposit növünü seçin", subtitle: depositType, rightIcon: "down.arrow").onTapGesture {
                            depositTypeSheetIsActive = true
                            buttonImage = nil
                            buttonName = "Hesabla"
                            enterTheAmount = false
                        }
                    }
                    
                    if depositType != nil {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Pay from")
                            AddDepoositComponent(leftIcon: "cashbox", title: nil, subtitle: payFrom, rightIcon: "down.arrow").onTapGesture {
                                payFromSheetIsActive = true
                            }
                        }
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Details")
                            
                            ForEach(viewModel.detailsArray) { dto in
                                AddDepoositComponent(leftIcon: "cashbox", title: dto.title, subtitle: dto.id == 5 ? payInterest : dto.subtitle, rightIcon: dto.rightIcon).onTapGesture {
                                    switch dto.id {
                                    case 5: payInterestIsActive = true
                                    case 7:
                                        enterTheAmount = true
                                        buttonName = "Əmanət açın"
                                    default: break
                                    }
                                }
                            }
                            
                            if enterTheAmount == true {
                                HStack(spacing: 0) {
                                    Image(systemName: "square")
                                    Spacer().frame(width: 20)
                                    Text("Avtoproloqasiya")
                                    Spacer()
                                    Image(systemName: "info.circle").onTapGesture {
                                        automaticRenewal = true
                                    }
                                }
                            }
                        }
                    }
                }
            }.scrollIndicators(.hidden)
            
            ButtonComponent(icon: buttonImage, name: buttonName) {
                openDeposit = true
            }
        }
        .padding([.top, .leading, .trailing], 16)
        .background(Color.gray)
        .toolbar(.hidden, for: .navigationBar)
        
        .sheet(isPresented: $depositTypeSheetIsActive) {
            DepositTypeSheetView { title in
                depositType = title
            }
            .presentationDetents([.medium])
            .presentationDragIndicator(.visible)
        }
        
        .sheet(isPresented: $payFromSheetIsActive) {
            PayFromSheetView { title in
                payFrom = title
            }
            .presentationDetents([.medium])
            .presentationDragIndicator(.visible)
        }
        
        .sheet(isPresented: $payInterestIsActive) {
            PayInterstSheetView { title in
                payInterest = title
            }
            .presentationDetents([.medium])
            .presentationDragIndicator(.visible)
        }
        
        .sheet(isPresented: $automaticRenewal) {
            AutomaticRenewalView()
            .presentationDetents([.height(226)])
            .presentationDragIndicator(.visible)
        }
        
        .navigationDestination(isPresented: $openDeposit) {
            FatcaView()
        }
    }
}

#Preview {
    DepositOrderView(viewModel: .init())
}
