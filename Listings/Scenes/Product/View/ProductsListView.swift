//
//  ProductsListView.swift
//  Listings
//
//  Created by Ahmed Elmemy on 18/11/2022.
//

import SwiftUI

struct ProductsListView: View {
    
    
    @StateObject private var vm = ProductsViewModel()
    
    
    var body: some View {
        
        NavigationView{
            if vm.isLoadingData{
                ProgressView()
            }else{
                List{
                    ForEach(vm.products, id: \.uid) { item in
                        NavigationLink(destination:ProductDetails(item: item)) {
                            ProductCell(item: item)
                        }
                    }
                }
            }
        }.onAppear(perform: vm.getData)
        
    }
    
}

struct ProductsListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsListView()
    }
}



