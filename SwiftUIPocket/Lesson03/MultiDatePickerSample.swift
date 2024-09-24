import SwiftUI

struct MultiDatePickerSample: View {
    @State private var selectedDates: Set<DateComponents> = []
    @State private var displayDates: [String] = []
    
    var body: some View {
        VStack {
            MultiDatePicker("Select dates", selection: $selectedDates)
                .onChange(of: selectedDates) { newValue in
                    updateDisplayDates(from: newValue)
                }
            
            Text("Selected Dates:")
                .font(.headline)
                .padding(.top)
            
            List(displayDates, id: \.self) { date in
                Text(date)
            }
        }
        .padding()
    }
    
    private func updateDisplayDates(from dateComponents: Set<DateComponents>) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        
        displayDates = dateComponents.compactMap { components in
            guard let date = Calendar.current.date(from: components) else { return nil }
            return dateFormatter.string(from: date)
        }
    }
}

#Preview {
    MultiDatePickerSample()
}
