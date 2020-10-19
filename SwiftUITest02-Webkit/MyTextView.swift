//
//  MyTextView.swift
//  SwiftUITest02-Webkit
//
//  Created by jae hwan choo on 2020/10/19.
//

import SwiftUI

struct MyTextView: View {
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)

            Text("중국 상하이(上海)의 야생동물공원에서 사육사가 관람객들이 지켜보는 가운데 곰들에게 물려 숨지는 사고가 발생했다. 19일 글로벌타임스 등에 따르면 지난 17일 오후 상하이 야생동물공원에서 한 사육사가 작업 중에 갑자기 달려든 곰들의 습격을 받아 사망했다. 당시 야생동물공원 맹수 구역의 버스 투어에 나선 관람객들이 소름 끼치는 이 장면을 보고 충격을 받아 웨이보(微博·중국판 트위터) 등에 올리면서 큰 주목을 받았다.")
                .tracking(1)
                .font(.system(.body, design: .rounded))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .truncationMode(.head)
                .shadow(color: Color.red, radius: 1.5, x: -10, y: 10 )
                
                .padding(.all, 20)
                .background(Color.yellow)
                .cornerRadius(20)
                
                .padding()
                .background(Color.green)
                .cornerRadius(20)
            
                .padding()
            
        }
        .onAppear {
            print("ContentView appeared!")
        }
        .onDisappear {
            print("ContentView disappeared!")
        }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
