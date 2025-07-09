//
//  PresentDepositViewModel.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import Foundation

final class PresentDepositViewModel: ObservableObject {
    
    @Published private(set) var presentDepositArray: [DetailsDTO] = [
        .init(id: 1, leftIcon: "addDeposit", title: "Əmanətin artırılması", subtitle: "Cari olan əmanət faizin köçürmə ilə artırılması"),
        .init(id: 2, leftIcon: "depositInfo", title: "Deposit information", subtitle: "Açılma, bitmə tarixləri, filial, növ və s. məlumatlar"),
        .init(id: 3, leftIcon: "payInterest", title: "Ödənilmiş faizlər", subtitle: "Əmanət üzrə qalanılmış fazilər"),
        .init(id: 4, leftIcon: "document", title: "Sənədlər", subtitle: "İmzalanmış sənədlər toplusu"),
    ]
}
