import SwiftUI

struct MainView: View {
    
    let user: User
    let therapist: Doctor
    let doctors: AnyRandomAccessCollection<Doctor>
    let optionButtons: AnyRandomAccessCollection<WelcomeScreenOptionButton>
    let tabs: AnyRandomAccessCollection<Tab>
    
    init(user: User,
         therapist: Doctor,
         doctors: AnyRandomAccessCollection<Doctor>,
         optionButtons: AnyRandomAccessCollection<WelcomeScreenOptionButton>,
         tabs: AnyRandomAccessCollection<Tab>
    ) {
        self.user = user
        self.therapist = therapist
        self.doctors = doctors
        self.optionButtons = optionButtons
        self.tabs = tabs
    }
    
    var body: some View {
        ZStack {
            WelcomeScreenView(
                user: self.user,
                therapist: self.therapist,
                doctors: self.doctors,
                optionButtons: self.optionButtons
            )
            VStack{
                Spacer()
                TabBarView(tabs: self.tabs)
            }
        }
        .background(Color.background)
}
    
}
