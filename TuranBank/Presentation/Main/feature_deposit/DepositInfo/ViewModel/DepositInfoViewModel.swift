//
//  DepositInfoViewModel.swift
//  TuranBank
//
//  Created by Khalida Aliyeva on 17.06.25.
//

import Foundation

final class DepositInfoViewModel: ObservableObject {
    
    @Published private(set) var depositInfoArray: [DepositInfoDTO] = [
        .init(id: 1, title: "Əmanətçinin yaş həddi:", subtitle: "Minimum 18 yaş"),
        .init(id: 2, title: "Valyutası:", subtitle: "AZN/USD"),
        .init(id: 3, title: "Faizlərin ödənilməsi qaydası:", subtitle: "illik faiz dərəcəsinə uyğun olaraq gündəlik hesablanır və hər ayın son hesablanməs faizlər kapitallaşır (Yani, hesablanmış faizlər əsas məbləğin üzərinə toplanır)."),
        .init(id: 4, title: "İllik faiz dərəcəsi:", subtitle: "Manat - 8%\nDollar - 1.5%"),
        .init(id: 5, title: "İlkin məbləğ:", subtitle: "min 50 ₼/$\nmax 100 000 ₼/ 50 000 $"),
        .init(id: 6, title: "Müddəti:", subtitle: "12 ay, 24 ay, 36 ay"),
        .init(id: 7, title: "Əmanət məbləğinin artırılması:", subtitle: "min. 50 ₼/$"),
        .init(id: 8, title: "Müqavilə müddətinin yarısından əvvəl:", subtitle: "Hesablanmış (kapitallaşmış) faizin 20%-i"),
        .init(id: 9, title: "Müqavilə müddətinin yarısından sonra:", subtitle: "Hesablanmış (kapitallaşmış) faizin 30%-i"),
        .init(id: 10, title: "Vəsaitlərin qismən çıxarılması:", subtitle: "Müqavilə müddəti ərzində 1 (bir) dəfə mümkündür. Bu zaman hesabda minimum 50 ₼/$ qalmalıdır."),
        .init(id: 11, title: "Bonus:", subtitle: "Əmanətçi ödəniş cədvəlinə uyğun olaraq hər ay təyin edilmiş vaxtda hesabını artırsa, müqavilə müddəyinin sonunda hesablanmış (kapitallaşmış) faizlərin 10 % həmində bonus ödəniləcəkdir.")
    ]
}
