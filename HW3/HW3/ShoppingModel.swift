//
//  ShoppingModel.swift
//  HW3
//
//  Created by dhuha kaweyani on 25/08/2022.
//

import Foundation
struct ShoppingModel: Identifiable{
    let id = UUID()
    var shopName: String
    var price: Int
    var stuff: String
}
var myShoppingList = [
    ShoppingModel(shopName: "zara", price: 60, stuff: "بليزر, بنطرون, تيشيرت ابيض"),
    ShoppingModel(shopName: "Nike", price: 30, stuff: "Jordan حذاء"),
    ShoppingModel(shopName: "UFFF", price: 12, stuff: "فنكو بوب, كوب قهوة")
]
