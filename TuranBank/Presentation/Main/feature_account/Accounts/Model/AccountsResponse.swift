//
//  AccountsResponse.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 02.07.25.
//

import Foundation

protocol AccountsResponseProtocol {
    
    var title: String? { get }
    var subtitle: String? { get }
    var amount: Double? { get }
}

struct AccountsResponse: Identifiable {
    var id = UUID()
    
    var title: String?
    var subtitle: String?
    var amount: Double?
}

extension AccountsResponse: AccountsResponseProtocol {
    
}
