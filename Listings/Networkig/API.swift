//
//  API.swift
//  Listings
//
//  Created by Ahmed Elmemy on 19/11/2022.
//


public typealias Headers = [String: String]

// if you wish you can have multiple services like this in a project
enum APIServiceEndpoints {
    
  // organise all the end points here for clarity
    case getListing
 
    
  // gave a default timeout but can be different for each.
    var requestTimeOut: Int {
        return 20
    }
    
  //specify the type of HTTP request
    var httpMethod: HTTPMethod {
        switch self {
        case .getListing:
            return .GET
        }
    }
    
  // compose the NetworkRequest
    func createRequest(environment: Environment) -> NetworkRequest {
        var headers: Headers = [:]
        headers["Content-Type"] = "application/json"
        return NetworkRequest(url: getURL(from: environment), headers: headers, reqBody: requestBody, httpMethod: httpMethod)
    }
    
  // encodable request body for POST
    var requestBody: Encodable? {
        switch self {
//        case .purchaseProduct(let request):
//            return request
        default:
            return nil
        }
    }
    
  // compose urls for each request
    func getURL(from environment: Environment) -> String {
        let baseUrl = environment.apiServiceBaseUrl
        switch self {
        case .getListing:
            return "\(baseUrl)dynamodb-writer"
        }
    }
}
