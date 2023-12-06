import SwiftUI


private struct TherapistCardView: View {
    
    let doctor: Doctor
    
    init(doctor: Doctor) {
        self.doctor = doctor
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            VStack(alignment: .center, spacing: 16) {
                HStack(alignment: .center, spacing: 12) {
                    Image(self.doctor.image)                // FIXME: Doctor image, full name and role inconvinient with DRY
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 58.43, height: 73.08)
                            .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Dr \(self.doctor.name) \(self.doctor.surname)")
                            .font(Font.welcomeScreenDoctorCardDoctorName)
                            .foregroundColor(Color.welcomeScreenTherapistName)
                        Text(self.doctor.role)
                            .font(Font.welcomeScreenDoctorCardDoctorRole)
                            .foregroundColor(Color.welcomeScreenTherapistRole)
                    }
                    Spacer()
                    Button {} label: {
                        Image("arrow-right-white")
                            .frame(width: 24, height: 24)
                    }
                }
                .padding(0)
                
            }
            Divider()
            HStack(alignment: .top, spacing: 12) {
                HStack(alignment: .center, spacing: 8) {
                    Image("calendar-white")
                        .frame(width: 16, height: 16)
                    Text(self.doctor.today)
                        .font(Font.welcomeScreenDoctorCardExtra)
                        .foregroundColor(Color.welcomeScreenExtraText)
                }
                HStack(alignment: .center, spacing: 8) {
                    Image("clock-white")
                        .frame(width: 16, height: 16)
                    Text(self.doctor.open)
                        .font(Font.welcomeScreenDoctorCardExtra)
                        .foregroundColor(Color.welcomeScreenExtraText)
                }            }
        }
        .padding(20)
        .frame(width: 327, alignment: .top)
        .background(Color.welcomeScreenTherapistCardBackground)
        .cornerRadius(12)
    }
}

private struct ListElementView: View {
    
    let doctor: Doctor
    
    init(doctor: Doctor) {
        self.doctor = doctor
    }
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            VStack(alignment: .center, spacing: 16) {
                HStack(alignment: .center, spacing: 12) {
                    Image(self.doctor.image)                // FIXME: Doctor image, full name and role inconvinient with DRY
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 58.43, height: 73.08)
                            .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Dr \(self.doctor.name) \(self.doctor.surname)")
                            .font(Font.welcomeScreenDoctorCardDoctorName)
                            .foregroundColor(Color.mainText)
                        Text(self.doctor.role)
                            .font(Font.welcomeScreenDoctorCardDoctorRole)
                            .foregroundColor(Color.secondaryText)
                    }
                    Spacer()
                    HStack(alignment: .center, spacing: 8) {
                        Image("location-grey")
                            .frame(width: 24, height: 24)
                        Text(doctor.distance).font(Font.welcomeScreenDoctorCardExtra).foregroundColor(Color.secondaryText)
                    }
                }
                .padding(0)
                
            }
            Divider()
            HStack(alignment: .top, spacing: 12) {
                HStack(alignment: .center, spacing: 8) {
                    Image("clock-gold")
                        .frame(width: 16, height: 16)
                    Text(self.doctor.reviews)
                        .font(Font.welcomeScreenDoctorCardExtra)
                        .foregroundColor(Color.welcomeScreenDoctorReviewsText)
                }
                HStack(alignment: .center, spacing: 8) {
                    Image("clock-blue")
                        .frame(width: 16, height: 16)
                    Text(self.doctor.open)
                        .font(Font.welcomeScreenDoctorCardExtra)
                        .foregroundColor(Color.welcomeScreenOpenHoursText)
                }            }
        }
        .padding(20)
        .frame(width: 327, alignment: .top)
        .background(.white)
        .cornerRadius(12)
    }
}


struct DoctorCardView: View {
    
    let doctor: Doctor
    let type: String
    
    static private let Templates: Dictionary<String, (Doctor) -> AnyView> = [
        "therapist": {(doctor: Doctor) in AnyView(TherapistCardView(doctor: doctor))},
        "list": {(doctor: Doctor) in AnyView(ListElementView(doctor: doctor))}
    ]
    
    init(doctor: Doctor, type: String = "therapist") {
        self.doctor = doctor
        self.type = type
    }
    
    var body: some View {
        DoctorCardView.Templates[self.type]?(self.doctor)
    }
}
