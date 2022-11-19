//
//  Interactor.swift
//  Listings
//
//  Created by Ahmed Elmemy on 19/11/2022.
//

import Combine

protocol ListingServiceable {
    func getListing() -> AnyPublisher<ProductsModel, NetworkError>
}

class ProductInteractor: ListingServiceable {
    
    private var networkRequest: Requestable
    private var environment: Environment = .production
    
    // inject this for testability
    init(networkRequest: Requestable, environment: Environment) {
        self.networkRequest = networkRequest
        self.environment = environment
    }
    
    func getListing() -> AnyPublisher<ProductsModel, NetworkError> {
        let endpoint = APIServiceEndpoints.getListing
        let request = endpoint.createRequest(environment: self.environment)
        return self.networkRequest.request(request)
    }
    
}
