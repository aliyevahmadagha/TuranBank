//
//  PayInterestSheetViewModel.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 16.06.25.
//

import Foundation

final class PayInterestSheetViewModel: ObservableObject {
    
    @Published private(set) var payInterestArray: [SheetDTO] = [
        .init(id: 1, leftIcon: "dollar", title: "Ay", subtitle: nil, rightIcon: "circle"),
        .init(id: 2, leftIcon: "dollar", title: "Rüb", subtitle: nil, rightIcon: "circle"),
        .init(id: 3, leftIcon: "dollar", title: "Müddət sonu", subtitle: nil, rightIcon: "circle"),
    ]
}

