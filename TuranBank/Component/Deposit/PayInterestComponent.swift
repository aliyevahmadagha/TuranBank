//
//  PayInterestComponent.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import SwiftUI

struct PayInterestComponent: View {
    
    let data: [PayInterestDto] = [
        .init(id: 1, date: "18 Sentyabr 2019", amount: "10", currency: "AZN"),
        .init(id: 2, date: "18 Sentyabr 2019", amount: "10", currency: "AZN"),
        .init(id: 3, date: "18 Sentyabr 2019", amount: "10", currency: "AZN"),
        .init(id: 4, date: "18 Sentyabr 2019", amount: "10", currency: "AZN"),
    ]
    
    func verticalDivider() -> some View {
        Rectangle()
            .fill(Color.gray.opacity(0.4))
            .frame(width: 1)
            .padding(.vertical, 16)
    }
    
    @ViewBuilder
    func tableCell(_ text: String) -> some View {
        Text(text)
            .font(.system(size: 12, weight: .regular))
            .frame(maxWidth: .infinity)
            .multilineTextAlignment(.center)
            .foregroundColor(.color222222)
    }
    
    var body: some View {
        
            VStack(spacing: 0) {
                
                ForEach(data) { dto in
                    HStack(spacing: 0) {
                        tableCell(dto.date)
                        verticalDivider()
                        tableCell(dto.amount)
                        verticalDivider()
                        tableCell(dto.currency)
                    }
                    .frame(height: 56)
                    
                    if dto.id != data.last?.id {
                        Divider()
                    }
                }
            }
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.gray.opacity(0.4), lineWidth: 1)
            )
            .clipShape(RoundedRectangle(cornerRadius: 16))
            
            
            Spacer()

    }
}

#Preview {
    PayInterestComponent()
}

struct PayInterestDto: Identifiable {
    var id: Int
    var date: String
    var amount: String
    var currency: String
}


