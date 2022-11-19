//
//  ProductViewModel.swift
//  Listings
//
//  Created by Ahmed Elmemy on 18/11/2022.
//

import Foundation
import Combine

class ProductsViewModel: ObservableObject {
    
    @Published var products =  [Product]()
    @Published var isLoadingData:Bool = false
    
    var subscriptions = Set<AnyCancellable>()
    let service = ProductInteractor(networkRequest: NativeRequestable(), environment: .development)
    
        
    func getData(){
        self.isLoadingData = true
        service.getListing()
            .receive(on: DispatchQueue.main)
            .sink { (completion) in
                switch completion {
                case .failure(let error):
                    self.isLoadingData = false
                    print("oops got an error \(error.localizedDescription)")
                case .finished:
                    self.isLoadingData = false
                    print("nothing much to do here")
                }
            } receiveValue: { (response) in
                self.isLoadingData = false
                self.products = response.results ?? []
            }
            .store(in: &subscriptions)
    }
    
    
}

