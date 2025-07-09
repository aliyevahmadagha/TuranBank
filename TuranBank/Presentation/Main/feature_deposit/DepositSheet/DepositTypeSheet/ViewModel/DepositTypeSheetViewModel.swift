//
//  DepositTypeSheetViewModel.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 16.06.25.
//

import Foundation

final class DepositTypeSheetViewModel: ObservableObject {
    
    @Published private(set) var depositTypeArray: [SheetDTO] = [
        .init(id: 1, leftIcon: "cashbox", title: "Fürsət əmanəti", subtitle: "Məhsulun qısa izahı (digərlərindən fərgi, faiz, müddət və s.)", rightIcon: "circle"),
        .init(id: 2, leftIcon: "cashbox", title: "Yığım əmanəti", subtitle: "Məhsulun qısa izahı)", rightIcon: "circle"),
        .init(id: 3, leftIcon: "cashbox", title: "Sirlər xəzinəsi əmanəti", subtitle: "Məhsulun qısa izahı", rightIcon: "circle"),
    ]
}

