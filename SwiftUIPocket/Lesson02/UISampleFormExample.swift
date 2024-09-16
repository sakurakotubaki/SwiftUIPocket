import SwiftUI

struct UISampleFormExample: View {
    @State private var name = ""
    @State private var email = ""
    @State private var age = 0
    @State private var birthDate = Date()
    @State private var receiveNotifications = false
    @State private var preferredContact = "Email"
    @State private var comments = ""
    
    let contactMethods = ["Email", "電話", "SMS"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("個人情報")) {
                    TextField("名前", text: $name)
                    TextField("メールアドレス", text: $email)
                        .keyboardType(.emailAddress)
                    Stepper("年齢: \(age)", value: $age, in: 0...120)
                    DatePicker("生年月日", selection: $birthDate, displayedComponents: .date)
                }
                
                Section(header: Text("設定")) {
                    Toggle("通知を受け取る", isOn: $receiveNotifications)
                    Picker("希望連絡方法", selection: $preferredContact) {
                        ForEach(contactMethods, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("その他")) {
                    TextEditor(text: $comments)
                        .frame(height: 100)
                    Button("送信") {
                        // ここに送信処理を記述
                        print("フォームが送信されました")
                    }
                }
            }
            .navigationTitle("プロフィール登録")
        }
    }
}

struct UISampleFormExample_Previews: PreviewProvider {
    static var previews: some View {
        UISampleFormExample()
    }
}
