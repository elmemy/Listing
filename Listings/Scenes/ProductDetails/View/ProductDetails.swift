//
//  ProductDetails.swift
//  Listings
//
//  Created by Ahmed Elmemy on 18/11/2022.
//

import SwiftUI

struct ProductDetails: View {
    var item:Product

    var body: some View {
        Text(item.name ?? "")
    }
}
