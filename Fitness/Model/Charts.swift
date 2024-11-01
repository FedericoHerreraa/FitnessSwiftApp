

import SwiftUI

struct ViewMonth: Identifiable {
    let id = UUID()
    let date: Date
    let viewCount: Int
}

struct RevenueStream: Identifiable {
    let id = UUID()
    let name: String
    let value: Double
}

struct MockData {
    static var revenueStreams: [RevenueStream] = [
        .init(name: "Google Ads", value: 1200),
        .init(name: "Adsenses", value: 606),
    ]
    
    static var viewMonths: [ViewMonth] = [
        .init(date: Date.from(year: 2024, month: 1, day: 1), viewCount: 55000),
        .init(date: Date.from(year: 2024, month: 2, day: 1), viewCount: 65000),
        .init(date: Date.from(year: 2024, month: 3, day: 1), viewCount: 72000),
        .init(date: Date.from(year: 2024, month: 4, day: 1), viewCount: 22000),
        .init(date: Date.from(year: 2024, month: 5, day: 1), viewCount: 44000),
        .init(date: Date.from(year: 2024, month: 6, day: 1), viewCount: 36000),
        .init(date: Date.from(year: 2024, month: 7, day: 1), viewCount: 76000),
        .init(date: Date.from(year: 2024, month: 8, day: 1), viewCount: 97000),
        .init(date: Date.from(year: 2024, month: 9, day: 1), viewCount: 59000),
        .init(date: Date.from(year: 2024, month: 10, day: 1), viewCount: 51000),
        .init(date: Date.from(year: 2024, month: 11, day: 1), viewCount: 61000),
        .init(date: Date.from(year: 2024, month: 12, day: 1), viewCount: 23000)
    ]
}
