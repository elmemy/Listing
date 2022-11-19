//
//  Requestable.swift
//  Listings
//
//  Created by Ahmed Elmemy on 19/11/2022.
//

import Combine
import Foundation

public protocol Requestable {
    
    var requestTimeOut: Float { get }
    
    func request<T: Codable>(_ req: NetworkRequest) -> AnyPublisher<T, NetworkError>
}


