//
//  SettingsPageView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 02/12/22.
//

import SwiftUI

struct SettingsPageView: View {
    
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding = false
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox {
                        Divider().padding(.vertical, 5)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(text: "Fruits", image: "info.circle")
                    }
                    
                    
                    GroupBox {
                        SettingsRowView(leftValue: "Developer", rightValue: "Nitin Aggarwal")
                        SettingsRowView(leftValue: "Designer", rightValue: "Robert Petras")
                        SettingsRowView(leftValue: "Compatibility", rightValue: "iOS 16+")
                        SettingsRowView(leftValue: "Profile", linkLabel: "GitHub", linkDestination: "https://github.com/nitin-agam")
                        SettingsRowView(leftValue: "Profile", linkLabel: "Linkedin", linkDestination: "https://www.linkedin.com/in/nitinagam/")
                        SettingsRowView(leftValue: "SwiftUI", rightValue: "3.0")
                        
                    } label: {
                        SettingsLabelView(text: "Application", image: "apps.iphone")
                    }
                    
                    GroupBox {
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                          .padding(.vertical, 8)
                          .frame(minHeight: 60)
                          .layoutPriority(1)
                          .font(.footnote)
                          .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                          if isOnboarding {
                            Text("Restarted".uppercased())
                              .fontWeight(.bold)
                              .foregroundColor(Color.green)
                          } else {
                            Text("Restart".uppercased())
                              .fontWeight(.bold)
                              .foregroundColor(Color.secondary)
                          }
                        }
                        .padding()
                        .background(
                          Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    } label: {
                        SettingsLabelView(text: "Logout", image: "person.circle")
                    }

                }
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct SettingsPageView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPageView()
    }
}
