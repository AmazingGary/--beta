//
//  NetWorkTool.swift
//  大众点评
//
//  Created by mac on 1.3.21.
//

import Foundation
//import Alamofire
//import SwiftJSON

protocol NetService {
    static func loadFood()
    static func loadHotel()
    static func loadTicket()
    static func loadAmusement()
    
}

extension NetService {
    static func loadFood(){
        
    }
    static func loadHotel(){
        
    }
    static func loadTicket(){
        
    }
    static func loadAmusement(){
        
    }

}

struct NetWorkTool: NetService {}

 
