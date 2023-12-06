//
//  MedicineApp.swift
//  MedicineApp
//
//  Created by Arseniy Savin on 11/14/23.
//

import SwiftUI

@main
struct MedicineApp: App {
    
    let doctors: [Doctor] = [
        Doctor(
            id: "0",
            name: "Joseph",
            surname: "Brostito",
            image: "doctor-joseph-brostito",
            role: "Dental Specialist",
            open: "Open at 17:00",
            reviews: "4,8 (120 Reviews)",
            today: "",
            distance: "1.2 KM"
        ),
        Doctor(
            id: "1",
            name: "Imrah",
            surname: "Syahir",
            image: "doctor-imran-syahir",
            role: "General Doctor",
            open: "Open at 11:00",
            reviews: "5.0 (137 Reviews)",
            today: "",
            distance: "1.2 KM"
        )
    ]
    
    static let genericButtonFunction = {() -> Void in}
    
    let tabs: [Tab] = [
        Tab(title: "Home", icon: "home-blue", onClick: genericButtonFunction, isSelected: true),
        Tab(title: "Schedule", icon: "calendar-grey", onClick: genericButtonFunction, isSelected: false),
        Tab(title: "Messages", icon: "message-grey", onClick: genericButtonFunction, isSelected: false),
        Tab(title: "Profile", icon: "profile-grey", onClick: genericButtonFunction, isSelected: false)
    ]
    
    let buttons: [WelcomeScreenOptionButton] = [
        WelcomeScreenOptionButton(image: "covid-blue", title: "Covid-19", onClick: genericButtonFunction),
        WelcomeScreenOptionButton(image: "doctor-blue", title: "Doctor", onClick: genericButtonFunction),
        WelcomeScreenOptionButton(image: "link-blue", title: "Medicine", onClick: genericButtonFunction),
        WelcomeScreenOptionButton(image: "hospital-blue", title: "Hospital", onClick: genericButtonFunction)
    ]
    
    var body: some Scene {
        WindowGroup {
            MainView(
                user: User(name: "James", image: "user"),
                therapist: Doctor(
                    id: "1",
                    name: "Imran",
                    surname: "Syahir",
                    image: "doctor-imran-syahir",
                    role: "General Doctor",
                    open: "11:00 - 12:00 AM",
                    reviews: "",
                    today: "Sunday, 12 June",
                    distance: ""
                ),
                doctors: AnyRandomAccessCollection<Doctor>(doctors),
                optionButtons: AnyRandomAccessCollection<WelcomeScreenOptionButton>(buttons),
                tabs: AnyRandomAccessCollection<Tab>(self.tabs)
            )
        }
    }
}
