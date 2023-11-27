//  /*
//
//  Project: TheCryptoApp
//  File: SettingsView.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.11.2023
//
//  */

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "http://www.google.com")!
    let githubURL = URL(string: "https://github.com/Elaidzha1940")!
    let youtubetURL = URL(string: "https://www.youtube.com/")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    
    var body: some View {
        
        NavigationView {
            ZStack {
                // color layer
                Color.theme.background
                    .ignoresSafeArea()
                
                // content layer
                List {
                    googleSection
                        .listRowBackground(Color.theme.background.opacity(0.7))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.7))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.7))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.7))
                }
            }
            .listStyle(GroupedListStyle())
            .accentColor(.blue)
            .font(.system(size: 18, weight: .semibold, design: .rounded))
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

extension SettingsView {
    
    private var googleSection: some View {
        Section(header: Text("Google Website")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by Elaidzha Shchukin. It uses MVVM Architecture, Combine, FileManager, Core Data and API.")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical, 5)
            Link("Google", destination: defaultURL)
        }
    }
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used n this app comes from free API from CoinGecko. Prices may be sliglty delayed.")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical, 5)
            Link("Visit CoinGecko", destination: coingeckoURL)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("More about this app and what I used for it: SwiftUI and Swift. The project benefits from multi-threading, publisher/subscribers, and data persistance.")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical, 5)
            Link("Visit GitHub", destination: githubURL)
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link("Terms of Service", destination: youtubetURL)
            Link("Privacy Policy", destination: youtubetURL)
            Link("Company Website", destination: youtubetURL)
            Link("View More", destination: youtubetURL)
        }
    }
    
}
