//
//  ProductCell.swift
//  Listings
//
//  Created by Ahmed Elmemy on 18/11/2022.
//

import SwiftUI

struct ProductCell: View {
    @State var item:Product
    
    var body: some View {
        VStack(alignment:.leading) {
            Text(item.name ?? "")
        }
        
    }
}
