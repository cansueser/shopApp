//
//  Product.swift
//  shopApp
//
//  Created by CANSU on 14.08.2024.
//

import Foundation
// MARK: - Product
struct Product: Codable ,Equatable {
    static func == (lhs: Product, rhs: Product) -> Bool {
        return lhs.id == rhs.id 
    }
    var id: Int
    let title: String
    let price: Double
    let description, category: String
    let image: String
    let rating: Rating
}
// MARK: - Rating
struct Rating: Codable {
    let rate: Double
    let count: Int
}
