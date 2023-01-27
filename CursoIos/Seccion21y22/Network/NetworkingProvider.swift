//
//  NetworkingProvider.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 25/01/2023.
//

import Foundation
import Alamofire

final class NetworkingProvider {
    static let shared = NetworkingProvider()
    private let kBaseURL = "https://gorest.co.in/public/v2/"
    private let kStatusOk = 200..<600
    private let kToken = "688a996c8494923e6d6feb2f7e1fc2a045100eee5bf4f3a30815974108cb39d0"
    
    func getUser(id: Int, success: @escaping (_ user: User) -> (), failure: @escaping (_ error: Error?) -> ()){
        let url = "\(kBaseURL)users/\(id)"
        AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: User.self, decoder: Decoder()) {
            response in
            if let user = response.value {
                print(user)
                print(user.email)
                success(user)
            } else {
                failure(response.error)
            }
        }
    }
    
    func addUser(user: NewUser, success: @escaping (_ user: User) -> (), failure: @escaping (_ error: Error?) -> ()) {
        let url = "\(kBaseURL)users"
        
        let headers: HTTPHeaders = [.authorization(bearerToken: kToken)]
        
        AF.request(url, method: .post, parameters: user, encoder: JSONParameterEncoder.default, headers: headers).validate(statusCode: kStatusOk).responseDecodable (of: User.self, decoder: Decoder()) {
            response in
            if let user = response.value {
                print(user)
                print(user.email)
                success(user)
            } else {
                failure(response.error)
            }
        }
    }
    
    func updateUser(id: Int, user: NewUser, success: @escaping (_ user: User) -> (), failure: @escaping (_ error: Error?) -> ()) {
        let url = "\(kBaseURL)users/\(id)"
        
        let headers: HTTPHeaders = [.authorization(bearerToken: kToken)]
        
        AF.request(url, method: .put, parameters: user, encoder: JSONParameterEncoder.default, headers: headers).validate(statusCode: kStatusOk).responseDecodable (of: User.self, decoder: Decoder()) {
            response in
            if let user = response.value {
                print(user)
                print(user.email)
                success(user)
            } else {
                failure(response.error)
            }
        }
    }
    
    func deleteUser(id: Int, success: @escaping () -> (), failure: @escaping (_ error: Error?) -> ()) {
        let url = "\(kBaseURL)users/\(id)"
        
        let headers: HTTPHeaders = [.authorization(bearerToken: kToken)]
        
        AF.request(url, method: .delete, headers: headers).validate(statusCode: kStatusOk).response {
            response in
            if let error = response.error {
                failure(error)
            } else {
                success()
            }
        }
        
    }
}
