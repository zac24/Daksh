//
//  LoginModel.swift
//  Daksh
//
//  Created by Prashant Dwivedi on 08/10/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

//{
//    "error": "",
//    "response": {
//        "place_id": 5,
//        "associated_places": [
//        {
//        "id": 5,
//        "expiry_time": 253402300799,
//        "name": "Murugeshpalya Hospital",
//        "address": "Murugeshpalya, Bangalore",
//        "place_type": "test",
//        "phone": "9999999999",
//        "country": "India",
//        "state": "Karnataka",
//        "district": "Bangalore",
//        "city": "Bangalore",
//        "tehsil": "",
//        "taluk": "",
//        "area": "Murugeshpalya",
//        "gram": "",
//        "pincode": "560017",
//        "incoming_allowed": false,
//        "is_test": false,
//        "max_patient_allowed": 0,
//        "is_invited": true,
//        "configurations": {
//        "id": 5,
//        "place_id": 5,
//        "consent": true,
//        "printing": true,
//        "default_language": "en_US"
//        }
//        },
//        {
//        "id": 7,
//        "expiry_time": 253402300799,
//        "name": "Bangalore Hospital",
//        "address": "Bangalore",
//        "place_type": "chc",
//        "phone": "9999999999",
//        "country": "India",
//        "state": "Karnataka",
//        "district": "Bangalore",
//        "city": "Bangalore",
//        "tehsil": "",
//        "taluk": "",
//        "area": "UB City",
//        "gram": "",
//        "pincode": "560001",
//        "incoming_allowed": true,
//        "is_test": false,
//        "max_patient_allowed": 0,
//        "is_invited": false
//        },
//        {
//        "id": 46,
//        "expiry_time": 253402300799,
//        "name": "Bangalore CHC",
//        "address": "Kormanagala ,Bangalore",
//        "place_type": "chc",
//        "phone": "9999999999",
//        "country": "India",
//        "state": "",
//        "district": "",
//        "city": "",
//        "tehsil": "",
//        "taluk": "",
//        "area": "",
//        "gram": "",
//        "pincode": "",
//        "incoming_allowed": true,
//        "is_test": true,
//        "max_patient_allowed": 0,
//        "is_invited": false
//        }
//        ],
//        "referral_allowed": false,
//        "access_token": "TUer7vuQQFM5EgkXK4aR7JMI18jxSK",
//        "consultant_allowed": false,
//        "users": [
//        {
//        "email": "admin@mp.com",
//        "first_name": "Murugeshpalya Admin",
//        "account_type": "admin",
//        "username": "admin@mp.com",
//        "phone": "9999999999",
//        "id": 9,
//        "pin": ""
//        },
//        {
//        "email": "doctor@mp.com",
//        "first_name": "Murugeshpalya Doctor",
//        "account_type": "doctor",
//        "username": "doctor@mp.com",
//        "phone": "9999999999",
//        "id": 16,
//        "pin": ""
//        },
//        {
//        "email": "nurse@mp.com",
//        "first_name": "Murugeshpalya Nurse",
//        "account_type": "worker",
//        "username": "nurse@mp.com",
//        "phone": "9999999999",
//        "id": 17,
//        "pin": ""
//        },
//        {
//        "email": "nurse2@mp.com",
//        "first_name": "Murugeshpalya Nurse 2",
//        "account_type": "worker",
//        "username": "nurse2@mp.com",
//        "phone": "9999999999",
//        "id": 117,
//        "pin": ""
//        }
//        ],
//        "child_places": [
//        {
//        "id": 5,
//        "expiry_time": 253402300799,
//        "name": "Murugeshpalya Hospital",
//        "address": "Murugeshpalya, Bangalore",
//        "place_type": "test",
//        "phone": "9999999999",
//        "country": "India",
//        "state": "Karnataka",
//        "district": "Bangalore",
//        "city": "Bangalore",
//        "tehsil": "",
//        "taluk": "",
//        "area": "Murugeshpalya",
//        "gram": "",
//        "pincode": "560017",
//        "incoming_allowed": false,
//        "is_test": false,
//        "max_patient_allowed": 0,
//        "is_invited": true,
//        "configurations": {
//        "id": 5,
//        "place_id": 5,
//        "consent": true,
//        "printing": true,
//        "default_language": "en_US"
//        }
//        }
//        ]
//    }
//}

import Foundation

struct Response : Decodable {
    let placeId : Int?
    let associatedPlaces : [AssociatedPlaces]?
    let referralAllowed : Bool?
    let accessToken : String?
    let consultantAllowed : Bool?
    let users : [Users]?
    let childPlaces : [ChildPlaces]?
    
    private enum CodingKeys: String, CodingKey{
        case placeId = "place_id"
        case associatedPlaces = "associated_places"
        case referralAllowed = "referral_allowed"
        case accessToken = "access_token"
        case consultantAllowed = "consultant_allowed"
        case users = "users"
        case childPlaces = "child_places"
    }
}

//"associated_places": [
//        {
//        "id": 5,
//        "expiry_time": 253402300799,
//        "name": "Murugeshpalya Hospital",
//        "address": "Murugeshpalya, Bangalore",
//        "place_type": "test",
//        "phone": "9999999999",
//        "country": "India",
//        "state": "Karnataka",
//        "district": "Bangalore",
//        "city": "Bangalore",
//        "tehsil": "",
//        "taluk": "",
//        "area": "Murugeshpalya",
//        "gram": "",
//        "pincode": "560017",
//        "incoming_allowed": false,
//        "is_test": false,
//        "max_patient_allowed": 0,
//        "is_invited": true,
//        "configurations": {
//        "id": 5,
//        "place_id": 5,
//        "consent": true,
//        "printing": true,
//        "default_language": "en_US"
//        }

struct AssociatedPlaces : Decodable {
    
    let id : Int?
    let expiryTime : Double?
    let name :String?
    let address : String?
    let placeType : String?
    let phone : String?
    let country : String?
    let state : String?
    let district : String?
    let city : String?
    let tehsil : String?
    let taluk : String?
    let area : String?
    let gram : String?
    let pincode : String?
    let incomingAllowed : Bool?
    let isTest : Bool?
    let maxPateintAllowed : Int?
    let isInvited : Bool?
    let configurations : [Configurations]?
    
    private enum CodingKeys : String, CodingKey {
        case id = "id"
        case expiryTime = "expiry_time"
        case name = "name"
        case address = "address"
        case placeType = "place_type"
        case phone = "phone"
        case country = "country"
        case state = "state"
        case district = "district"
        case city = "city"
        case tehsil = "tehsil"
        case taluk = "taluk"
        case area = "area"
        case gram = "gram"
        case pincode = "pincode"
        case incomingAllowed = "incoming_allowed"
        case isTest = "is_test"
        case maxPateintAllowed = "max_patient_allowed"
        case isInvited = "is_invited"
        case configurations = "configurations"
    }
    
}

struct Configurations : Decodable {
    let id : String?
    let placeId : Int?
    let consent : Bool?
    let printing : Bool?
    let defaultLanguage : String?
    
    private enum CodingKeys : String, CodingKey {
        case id = "id"
        case placeId = "place_id"
        case consent = "consent"
        case printing = "printing"
        case defaultLanguage = "default_language"
    }
}

struct Users : Decodable {
    
    let email : String?
    let firstName : String?
    let accountType : String?
    let userName : String?
    let phone : String?
    let id : Int?
    let pin : String?
    
    private enum CodingKeys: String, CodingKey{
        case email = "email"
        case firstName = "first_name"
        case accountType = "account_type"
        case userName = "username"
        case phone = "phone"
        case id = "id"
        case pin = "pin"
    }
}

struct ChildPlaces : Decodable{
    
}


