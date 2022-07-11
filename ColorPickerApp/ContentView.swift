//
//  ContentView.swift
//  ColorPickerApp
//
//  Created by Bartolomeo Sorrentino on 10/02/21.
//

import SwiftUI


struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    @State private var selectedColor = Color.black
    
    @State var hexValue: String?
    @State var powerAppValue: String?

    var Web : some View {
        VStack {
            Text( "WEB")
            Divider()
            .if( hexValue != nil && !hexValue!.isEmpty ) { view in
                HStack {
                    Text( hexValue! )
                    CopyToClipboardButton( value: hexValue! )
                }
            }
            .padding(5)
            .border(.white, width: 1)
        }.padding()
    }
    
    var PowerApp : some View {
        VStack {
            Text( "PowerApp")
            Divider()
            .if( powerAppValue != nil && !powerAppValue!.isEmpty ) { view in
                HStack {
                    Text( powerAppValue! )
                    CopyToClipboardButton( value: powerAppValue! )
                }

            }
            .padding(5)
            .border(.white, width: 1)
        }.padding()
    }

    var body: some View {
        VStack(alignment: .center ) {
            ColorPicker(
                "Pick a color",
                selection: $selectedColor
            ).onChange(of: selectedColor ){ value in
                self.hexValue = value.hexValue()
                self.powerAppValue = value.powerappsValue()
                
            }
            .padding()
            Divider()
            
            HStack {
                Web
                Divider()
                PowerApp
            }
            .padding()

        }
        
        
        
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
