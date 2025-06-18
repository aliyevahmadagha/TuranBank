//
//  DepositOrderViewModel.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 13.06.25.
//

import Foundation

final class DepositOrderViewModel: ObservableObject {
    
    @Published private(set) var detailsArray: [DetailsDTO] = [
        .init(id: 1, leftIcon: "person", title: "Currency", subtitle: "AZN", rightIcon: nil),
        .init(id: 2, leftIcon: "person", title: "Filial", subtitle: "Baş ofis", rightIcon: nil),
        .init(id: 3, leftIcon: "person", title: "Fazilərin mədaxil olunacağı hesab", subtitle: nil, rightIcon: "down.arrow"),
        .init(id: 4, leftIcon: "moon", title: "Müddət", subtitle: nil, rightIcon: "down.arrow"),
        .init(id: 5, leftIcon: "house", title: "Faizlərin ödənişi", subtitle: nil, rightIcon: "down.arrow"),
        .init(id: 6, leftIcon: "moon", title: "Fazi dərəcəsi XXX %", subtitle: nil, rightIcon: nil),
        .init(id: 7, leftIcon: "person", title: "Məbləğ", subtitle: "Zəhmət olmasa daxil edin", rightIcon: "down.arrow")
    ]
    
}
