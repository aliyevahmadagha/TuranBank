//
//  DepositEnrollFromViewModel.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import Foundation

final class DepositEnrollFromViewModel: ObservableObject {
    
    @Published private(set) var paymentDetailArray: [PaymentDetailDTO] = [
        .init(id: 1, title: "Artırılan məbləğ", subtitle: "50 AZN"),
        .init(id: 2, title: "Əmanətin mövcüd məbləği", subtitle: "1200,25 AZN"),
        .init(id: 3, title: "Faiz hesablanacaq yeni əmanət məbləği", subtitle: "1200,25 AZN")
    ]
}
