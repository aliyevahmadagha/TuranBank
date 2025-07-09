//
//  AccountsViewModel.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 02.07.25.
//

import Foundation

final class AccountsViewModel: ObservableObject {
    
    @Published var selectedIndex: Int = 1 {
        didSet {
            fillAccountList(index: selectedIndex)
        }
    }
    
    fileprivate func fillAccountList(index: Int) {
        switch index {
        case 1: accountsList = availableList
        case 2: accountsList = orderList
        case 3: accountsList = rejectList
        default:
            break
        }
    }
    
    init() {
        accountsList = availableList
    }
    
    @Published private(set) var accountsList: [AccountsResponseProtocol] = []
    
    private(set) var availableList: [AccountsResponseProtocol] = [
        AccountsResponse(title: "Cari hesab", subtitle: "41020029780303861208", amount: 200),
        AccountsResponse(title: "Cari hesab", subtitle: "41020029780303861308", amount: 200),
    ]
    
    private(set) var orderList: [AccountsResponseProtocol] = [
        AccountsResponse(title: "Cari hesab", subtitle: "41020029780303861208", amount: 200),
        AccountsResponse(title: "Cari hesab", subtitle: "41020029780303861308", amount: 200),
        AccountsResponse(title: "Cari hesab", subtitle: "41020029780303861208", amount: 200),
        AccountsResponse(title: "Cari hesab", subtitle: "41020029780303861308", amount: 200),
    ]
    
    private(set) var rejectList: [AccountsResponseProtocol] = [
        AccountsResponse(title: "Cari hesab", subtitle: "41020029780303861208", amount: 200),
        AccountsResponse(title: "Cari hesab", subtitle: "41020029780303861308", amount: 200),
        AccountsResponse(title: "Cari hesab", subtitle: "41020029780303861208", amount: 200),
        AccountsResponse(title: "Cari hesab", subtitle: "41020029780303861308", amount: 200),
        AccountsResponse(title: "Cari hesab", subtitle: "41020029780303861208", amount: 200),
        AccountsResponse(title: "Cari hesab", subtitle: "41020029780303861308", amount: 200),
    ]
    
}
