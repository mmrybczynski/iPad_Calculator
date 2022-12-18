//
//  LanscapeMode.swift
//  KalkulatorTabletV2
//
//  Created by Mateusz Rybczyński on 18/09/2022.
//

import SwiftUI

struct LanscapeMode: View {
    
    @State var sizeButton: CGFloat = 70
    let widthOfScreen: CGFloat
    let heightOfScreen: CGFloat
    
    let appVersion = Bundle.main.shortVersion
    let buildVerion = Bundle.main.buildVersion
    
    let buttonsPortrait: [[CalcButton]] = [
        [.silnia,.clear,.negative,.percent,.divide],
        [.square,.seven,.eight,.nine,.multiply],
        [.tripple,.four,.five,.six,.plus],
        [.e,.one,.two,.three,.minus],
        [.pi,.zero,.decimal,.equal]
    ]
    
    @State var showMenu: Bool = false
    
    @State var keyboardLeftSide: Bool = false
    @State var keyboardRightSide: Bool = false
    
    var body: some View {
        ZStack {
            
            Color.black.ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                HStack {
                    
                    Spacer()
                    
                    Image(systemName: "gear")
                        .hoverEffect(.lift)
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                        .padding(10)
                        .onTapGesture {
                            withAnimation(.easeIn) {
                                showMenu.toggle()
                            }
                        }
                    
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Text("0")
                        .frame(width: .infinity, height: 100)
                        .font(.system(size: 100, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                }
                .padding()
                
                
                if !keyboardLeftSide && keyboardRightSide {
                    rightSideL
                } else if keyboardLeftSide && !keyboardRightSide {
                    leftSideL
                } else {
                    centerSideL
                }
       
            }
            .padding(.bottom, 20)
            
            if showMenu {
                VStack {
                    
                    Text("Układ klawiatury")
                        .font(.system(size: 23))
                        .padding(.bottom, 20)
                    
                    HStack(spacing: 27) {
                        Image(systemName: "keyboard.onehanded.left")
                            .hoverEffect(.lift)
                            .onTapGesture {
                                //lewo
                                keyboardLeftSide = true
                                keyboardRightSide = false
                            }
                        Image(systemName: "keyboard")
                            .hoverEffect(.lift)
                            .onTapGesture {
                                //środek
                                keyboardLeftSide = false
                                keyboardRightSide = false
                            }
                        Image(systemName: "keyboard.onehanded.right")
                            .hoverEffect(.lift)
                            .onTapGesture {
                                //prawo
                                keyboardLeftSide = false
                                keyboardRightSide = true
                            }
                    }
                    .font(.system(size: 40))
                    .padding(.bottom, 5)
                    
                    Divider()

                    
                    Spacer()
                    
                    
                    
                    Text("Ver: \(appVersion)")
                    
                }
                .frame(width: 400, height: 160)
                .padding(20)
                .background(Color.white)
                .cornerRadius(30)
                .position(x: widthOfScreen - 294, y: 90)
                .padding(40)
            }
            
            
            
        }
    }
    
    func sizeOfButton(item: CalcButton) -> CGFloat {
        if item == .zero {
            return 2 * sizeButton + 20
        } else {
            return sizeButton
        }
    }
    
}

struct LanscapeMode_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension LanscapeMode {
    var rightSideL: some View {
        ForEach(buttonsPortrait, id: \.self) {row in
            
            HStack(spacing: 20) {
                
                Spacer()
                
                ForEach(row, id: \.self) {item in
                    
                    Button {
                        print(item)
                    } label: {
                        Text(item.rawValue)
                            .bold()
                            .font(.system(size: sizeButton/2))
                            .foregroundColor(.white)
                            .frame(width: sizeOfButton(item: item), height: sizeButton)
                            .background(item.colorOfButton)
                            .cornerRadius(sizeButton / 2)
                    }
                    .hoverEffect(.lift)

                }
                
                
                
            }
            .padding(.horizontal)
            
        }
    }
    
    var leftSideL: some View {
        ForEach(buttonsPortrait, id: \.self) {row in
            
            HStack(spacing: 20) {
                
                
                ForEach(row, id: \.self) {item in
                    
                    Button {
                        print(item)
                    } label: {
                        Text(item.rawValue)
                            .bold()
                            .font(.system(size: sizeButton/2))
                            .foregroundColor(.white)
                            .frame(width: sizeOfButton(item: item), height: sizeButton)
                            .background(item.colorOfButton)
                            .cornerRadius(sizeButton / 2)
                    }
                    .hoverEffect(.lift)

                }
                
                Spacer()
                
            }
            .padding(.horizontal)
            
        }
    }
    
    var centerSideL: some View {
        ForEach(buttonsPortrait, id: \.self) {row in
            
            HStack(spacing: 20) {
                
                Spacer()
                
                ForEach(row, id: \.self) {item in
                    
                    Button {
                        print(item)
                    } label: {
                        Text(item.rawValue)
                            .bold()
                            .font(.system(size: sizeButton/2))
                            .foregroundColor(.white)
                            .frame(width: sizeOfButton(item: item), height: sizeButton)
                            .background(item.colorOfButton)
                            .cornerRadius(sizeButton / 2)
                    }
                    .hoverEffect(.lift)

                }
                
                Spacer()
                
            }
            .padding(.horizontal)
            
        }
    }
}
