//
//  DepositEnrollFromView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import SwiftUI

struct DepositEnrollFromView: View {
    
    @Environment(\.dismiss) private var dismiss
    @StateObject private var viewModel: DepositEnrollFromViewModel
    
    @State var title: String?
    @State var subtitle: String?
    
    @State private var enrollFromSheet: Bool = false
    
    init(viewModel: DepositEnrollFromViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    var body: some View {
        VStack(spacing: 12) {
            HStack(spacing: 0) {
                Image("left.arrow").onTapGesture {
                    dismiss()
                }
                Spacer()
                Text("Əmanətin artırılması")
                Spacer()
                Spacer().frame(width: 24)
            }.padding([.leading, .trailing], 12)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("Enroll From").padding(.leading, 12).font(.system(size: 12, weight: .medium)).foregroundStyle(.color757575)
                AddDepoositComponent(leftIcon: "document", title: "Məhsulu seçin", subtitle: nil, rightIcon: "down.arrow").onTapGesture {
                    enrollFromSheet = true
                }
            }
            
            VStack(spacing: 0) {
                
                ForEach(viewModel.paymentDetailArray) { dto in
                    
                    AddDepoositComponent(leftIcon: nil, title: dto.title, subtitle: dto.subtitle, rightIcon: nil)
                    if dto.id != 3 {
                        Divider()
                    }
                }
            }.padding([.leading, .trailing], 12)
            
            Spacer()
        }
        
        .sheet(isPresented: $enrollFromSheet) {
            EnrollFromSheetView(viewModel: .init())
                .presentationDetents([.medium])
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    DepositEnrollFromView(viewModel: .init())
}
