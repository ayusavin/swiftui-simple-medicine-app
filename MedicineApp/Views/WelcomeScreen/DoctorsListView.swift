import SwiftUI

struct DoctorsListView: View {
    
    let doctors: AnyRandomAccessCollection<Doctor>
    
    init(doctors: AnyRandomAccessCollection<Doctor>) {
        self.doctors = doctors
    }
    
    var body: some View {
        LazyVStack(alignment: .center, spacing: 20) {
            ForEach(doctors, id: \.id) {doctor in
                DoctorCardView(doctor: doctor, type: "list")
            }
        }
        .padding(.horizontal, 16)
        .background(Color.background)
        .cornerRadius(12)
    }
}
