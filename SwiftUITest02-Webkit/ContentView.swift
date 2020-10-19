//
//  ContentView.swift
//  SwiftUITest02-Webkit
//
//  Created by jae hwan choo on 2020/10/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            // MyWebview(urlToLoad: "https://www.google.com")
            
            NavigationView {
                HStack {
                    NavigationLink(
                        destination: MyWebview(urlToLoad: "https://www.naver.com")
                            .navigationBarTitle("네이버", displayMode: .inline)
                            .edgesIgnoringSafeArea(.all),
                        label: {
                            Text("네이버")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .padding(20)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                        })
                    NavigationLink(
                        destination: MyWebview(urlToLoad: "https://www.daum.net")
                            .navigationBarTitle("다음", displayMode: .inline)
                            .edgesIgnoringSafeArea(.all),
                        label: {
                            Text("다음")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .padding(20)
                                .background(Color.orange)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                        })
                    NavigationLink(
                        destination: MyWebview(urlToLoad: "https://www.google.com")
                            .navigationBarTitle("구글", displayMode: .inline)
                            .edgesIgnoringSafeArea(.all),
                        label: {
                            Text("구글")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .padding(20)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                        })
                }
                .navigationBarTitle("웹뷰 테스트", displayMode: .inline)
            }
            .phoneOnlyStackNavigation()
        }
        .onAppear {
            print("ContentView appeared!")
        }
        .onDisappear {
            print("ContentView disappeared!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
