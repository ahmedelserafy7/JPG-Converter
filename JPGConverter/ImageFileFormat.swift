//
//  ImageFileFormat.swift
//  JPGConverter
//
//  Created by Elser_10 on 9/12/21.
//

import Cocoa

func convertToPNGFile(path: String) {
    
    let fileURL = URL(fileURLWithPath: path)
    guard fileURL.pathExtension == "jpg" || fileURL.pathExtension == "jpeg" else { return }
    
    guard let image = NSImage(contentsOfFile: path) else { return }
    guard let tiffRepData = image.tiffRepresentation else { return }
    guard let bitmapImageRep =  NSBitmapImageRep(data: tiffRepData) else { return }
    guard let png = bitmapImageRep.representation(using: .png, properties: [:]) else { return }
    
    let newFileFormat = fileURL.deletingPathExtension().appendingPathExtension("png")
    _ = try? png.write(to: newFileFormat)
}
