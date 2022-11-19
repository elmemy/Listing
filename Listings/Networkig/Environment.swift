//
//  Environment.swift
//  Listings
//
//  Created by Ahmed Elmemy on 19/11/2022.
//

public enum Environment: String, CaseIterable {
    case development
    case staging
    case production
}

extension Environment {
    var apiServiceBaseUrl: String {
        switch self {
        case .development:
            return "https://ey3f2y0nre.execute-api.us-east-1.amazonaws.com/default/"
        case .staging:
            return "https://ey3f2y0nre.execute-api.us-east-1.amazonaws.com/default/"
        case .production:
            return "https://ey3f2y0nre.execute-api.us-east-1.amazonaws.com/default/"
        }
    }
}
