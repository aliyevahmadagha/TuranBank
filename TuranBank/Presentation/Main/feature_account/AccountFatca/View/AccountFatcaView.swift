//
//  AccountFatcaView.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 07.07.25.
//

import SwiftUI

struct AccountFatcaView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var answerArray: [String] = []
    
    var body: some View {
        VStack(spacing: 16) {
            NavigationComponent(title: "FATCA", leftIcons: [(1, "left.arrow")]) { index in
                switch index {
                case 1: dismiss()
                default:
                    break
                }
                
            }
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(fillFatcaArray()) { question in
                        QuestionComponent(text: question.text) { text, state in
                            
                            if state {
                                if !answerArray.contains(text) {
                                    answerArray.append(text)
                                }
                            } else {
                                
                                if let index = answerArray.firstIndex(of: text) {
                                    answerArray.remove(at: index)
                                }
                            }
                        }
                    }
                }
            }.scrollIndicators(.hidden)
            
            ButtonComponent(name: "Sifariş et", bgColor: .blue)
            ButtonComponent(name: "Sifariş et", bgColor: .black.opacity(0.3))
        }
        .padding([.leading, .trailing], 16)
        .background(Color.black.opacity(0.2))
    }
}

#Preview {
    AccountFatcaView()
}

struct QuestionDTO: Identifiable {
    let id = UUID()
    let text: String
    var isOn: Bool
}

fileprivate func fillFatcaArray() -> [QuestionDTO] {
    
    return [
        .init(text: "Xaricdə olan hər hansı bank hesabına dövri ödənişlər edilməsi ilə bağlı göstəriş vermisinizmi // verməyi planlaşdırırsınızmı?", isOn: false),
        .init(text: "Xaricdə ünvanı olan şəxsə etibarnamə və ya imza səlahiyyəti vermisinizmi //  verməyi planlaşdırırsınızmı?", isOn: false),
        .init(text: "Maliyyə institutu öz yeganə ünvanınız kimi “vasitəçi ünvanı” və ya “əmanət ünvanı” təqdim etmək fikirindəsinizmi?", isOn: false),
        .init(text: "Xarici telefon nömrəsinə sahibsinizmi?", isOn: false),
        .init(text: "Green Card’a sahibsinizmi (etibarlıq müddətindən asılı olmayaraq)", isOn: false),
        .init(text: "Xaricdə Müəyyən Müddət Keçirmə Testinin şərtlərini təmin edirsinizmi?)", isOn: false),
        .init(text: "ABŞ-də ünvanınız varmı?", isOn: false)
    ]
}
