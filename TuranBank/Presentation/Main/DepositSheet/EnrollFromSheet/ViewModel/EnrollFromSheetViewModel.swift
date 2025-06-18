//
//  EnrollFromSheetViewModel.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import Foundation

final class EnrollFromSheetViewModel: ObservableObject {
    
    private(set) var segments = ["Kart", "Hesab"]
    @Published var selectedSegment: Int = 0 {
        didSet {
            updateData()
        }
    }
    
    @Published private(set) var enrollFromArray: [EnrollFromDTO] = [
        .init(id: 1, leftIcon: "document", title: "5248********2543", subtitle: "212,15 $", rightIcon: "circle"),
        .init(id: 2, leftIcon: "document", title: "5248********6378", subtitle: "212,15 $", rightIcon: "circle"),
        .init(id: 3, leftIcon: "document", title: "5248********2345", subtitle: "212,15 $", rightIcon: "circle")
    ]
    
    init() {
        updateData()
    }
    
    private func updateData() {
            switch selectedSegment {
            case 0:
                enrollFromArray = [.init(id: 1, leftIcon: "document", title: "5248********2543", subtitle: "212,15 $", rightIcon: "circle")]
            case 1:
                enrollFromArray = [
                    .init(id: 1, leftIcon: "document", title: "5248********2543", subtitle: "212,15 $", rightIcon: "circle"),
                    .init(id: 1, leftIcon: "document", title: "5248********2543", subtitle: "212,15 $", rightIcon: "circle"),
                    .init(id: 1, leftIcon: "document", title: "5248********2543", subtitle: "212,15 $", rightIcon: "circle")
                ]
            default:
                enrollFromArray = []
            }
        }
    
    
}
