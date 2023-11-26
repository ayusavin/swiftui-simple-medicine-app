import SwiftUI

struct WelcomeScreenView: View {
    
    let user: User
    let therapist: Doctor
    let doctors: AnyRandomAccessCollection<Doctor>
    let optionButtons: AnyRandomAccessCollection<WelcomeScreenOptionButton>
    
    init(user: User,
         therapist: Doctor,
         doctors: AnyRandomAccessCollection<Doctor>,
         optionButtons: AnyRandomAccessCollection<WelcomeScreenOptionButton>
    ) {
        self.user = user
        self.therapist = therapist
        self.doctors = doctors
        self.optionButtons = optionButtons
    }

    var body: some View {
        VStack {
            HeaderView(
                user: self.user
            ).padding(.bottom, 32).padding(.top, 20)
            ScrollView {
                DoctorCardView(
                    doctor: self.therapist
                ).padding(.bottom, 20)
                SearchBarView().padding(.bottom, 24)
                ButtonSetView(welcomeScreenButtons: self.optionButtons)
                    .padding(.bottom, 32)
                VStack(alignment: .leading, spacing: 16) {
                    Text(String(localized: "Near Doctor"))
                        .font(Font.welcomeScreenNearDoctor)
                        .foregroundColor(Color.black)
                        .padding(.bottom, 16)
                        .padding(.horizontal, 24)
                    DoctorsListView(
                        doctors: self.doctors
                    )
                }
                .frame(alignment: .topLeading)
            }
        }
    }
}
