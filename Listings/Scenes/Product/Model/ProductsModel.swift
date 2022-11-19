//
//  ProductModel.swift
//  Listings
//
//  Created by Ahmed Elmemy on 18/11/2022.
//
import Foundation

// MARK: - ProductsModel
struct ProductsModel:Codable {
    let results: [Product]?
}

// MARK: - Product
struct Product: Codable {
    let createdAt, pricee, name, uid: String?
    let imageIDS: [String]?
    let imageUrls, imageUrlsThumbnails: [String]?
    
    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case pricee, name, uid
        case imageIDS = "image_ids"
        case imageUrls = "image_urls"
        case imageUrlsThumbnails = "image_urls_thumbnails"
    }
}
