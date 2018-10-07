//
//  JTUrlBuilder.swift
//  Daksh
//
//  Created by Prashant Dwivedi on 08/10/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

import UIKit

let DEV_BASE_URL                    = "https://dev.janitri.in/"

//MARK: Login & Signup

let URL_Signup                      = "users/register/"
let URL_Verify                      = "users/verify-otp/"
let URL_Login                       = "nurse/login/"

let URL_Get_Patients                = "nurse/patients/"
let URL_Get_Users                   = "nurse/users/"
let URL_Add_Patients                = "nurse/patients/"

let URL_Add_Labor_Data              = "nurse/labor-data/"
let URL_Patient_Status              = "nurse/patient-status/"

let URL_Post_Portum_Mother_Data     = "nurse/post-delivery-mother-data/"
let URL_Post_Portum_Child_Data      = "nurse/post-delivery-child-data/"

let URL_Patient_Data                = "nurse/patient-details/"
let URL_Nurse_Handover              = "nurse/hand-over/"

let URL_Send_Data_Entry_Warnings    = "nurse/data-entry-warnings/"


func signInUrl() -> String {
    return DEV_BASE_URL + URL_Login
}

func signUpUrl() -> String {
    return DEV_BASE_URL + URL_Signup
}

func verifyOtpUrl() -> String {
    return DEV_BASE_URL + URL_Verify
}
