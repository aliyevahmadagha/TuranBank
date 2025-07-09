//
//  PayFromSheetViewModel.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 16.06.25.
//

import Foundation

final class PayFromSheetViewModel: ObservableObject {
    
    @Published private(set) var payFromArray: [SheetDTO] = [
        .init(id: 1, leftIcon: "cashbox", title: "AZ86TURA410100125754940", subtitle: nil, rightIcon: "circle"),
        .init(id: 2, leftIcon: "cashbox", title: "AZ86TURA410100125754942", subtitle: nil, rightIcon: "circle"),
        .init(id: 3, leftIcon: "cashbox", title: "AZ86TURA410100125754944", subtitle: nil, rightIcon: "circle"),
    ]
}


