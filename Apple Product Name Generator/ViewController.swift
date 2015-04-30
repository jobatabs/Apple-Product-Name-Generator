//
//  ViewController.swift
//  AppleProductNameGenerator
//
//  Created by Jonatan Noponen on 27.4.2015.
//  Copyright (c) 2015 jontturi.
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation; either version 2 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License along
//  with this program; if not, write to the Free Software Foundation, Inc.,
//  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
//

import Cocoa

class ViewController: NSViewController {
    
    // Yes I'm sorry but no they're not in alphabetical order
    let objects = ["Bed", "Blender", "Bottle", "Broom", "Bucket", "Freezer",
        "Fork", "Frying Pan", "Hammer", "Jar", "Juicer", "Kettle", "Key",
        "Bathroom", "Candle", "Cupboard", "Chair", "Car", "Vacuum", "Window",
        "Black Hole", "Street Pole", "Street Lamp", "Knife", "Mailbox", "Lamp",
        "Microwave", "Nail", "Oven", "Radiator", "Fridge", "Sofa", "Airplane",
        "Table", "Teeth", "Toothbrush", "Pillow", "Tissue", "Toothpaste",
        "Toilet", "Towel", "Trash Can", "Pan", "Shovel", "Chain Saw", "Soap",
        "Sink", "Submarine", "Helicopter", "Tram", "Bus", "Metro", "Bread",
        "Curtain", "Calendar", "Fence", "Bathtub", "Dishwasher", "Mirror",
        "Sound", "Glass", "Flex", "Lean", "Agile", "Code"];
    
    @IBOutlet weak var generatedProductName: NSTextField!
    
    @IBAction func generate(sender: AnyObject) {
        var tableToUse = Int(arc4random_uniform(4) + 1)
        
        var objectToUse = Int(arc4random_uniform(UInt32(objects.count)))
        
        switch tableToUse {
        case 1:
            generatedProductName.stringValue = "i" + objects[objectToUse]
        case 2:
            generatedProductName.stringValue = "Apple " + objects[objectToUse]
        case 3:
            generatedProductName.stringValue = "MacBook " + objects[objectToUse]
        case 4:
            generatedProductName.stringValue = objects[objectToUse] + " Pro X"
        default:
            generatedProductName.stringValue = "i" + objects[objectToUse]
        }
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        self.view.window!.title = "Apple Product Name Generator"
    }
    
}
