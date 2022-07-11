//
//  Color+Extension.swift
//  ColorPickerApp
//
//  Created by Bartolomeo Sorrentino on 11/07/22.
//

import Foundation

import SwiftUI

extension Color {
    
    typealias RGBA = (R:Int, G:Int, B:Int, A:Int )
    
    func hexValue() -> RGBA? {
        var output:RGBA? = nil

        if let values = self.cgColor?.components {
        
            switch values.count {
            case 1:
                output = ( Int(values[0] * 255), Int(values[0] * 255), Int(values[0] * 255),1)
                break
            case 2:
                output = ( Int(values[0] * 255), Int(values[0] * 255), Int(values[0] * 255),Int(values[1] * 255))
                break
            case 3:
                output = ( Int(values[0] * 255), Int(values[1] * 255), Int(values[2] * 255),1)
            case 4:
                output = ( Int(values[0] * 255), Int(values[1] * 255), Int(values[2] * 255),Int(values[3] * 255))
            default:
                break
            }
        }
        
        return output
    }

    func hexValue() -> String? {
        var output:String? = nil
        
        if let rgba:RGBA = self.hexValue() {
            output = "#\(String(format:"%02X", rgba.R))\(String(format:"%02X", rgba.G))\(String(format:"%02X", rgba.B))\( String(format:"%02X", rgba.A))"
        }
        
        return output
    }
    
    //RGBA(255; 255; 255; 1)
    func powerappsValue() -> String? {
        var output:String? = nil
        
        if let rgba:RGBA = self.hexValue() {
            output = "RGBA( \(rgba.R), \(rgba.G), \(rgba.B), \(rgba.A) )"
            
        }
        
        return output
    }
}

