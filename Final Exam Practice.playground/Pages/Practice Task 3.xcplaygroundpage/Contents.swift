//: # Exam Prep 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![undertones-no-grid](undertones-no-grid.png "Undertones")
 ![undertones-with-grid](undertones-with-grid.png "Undertones")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let lightGrey = Color(hue: 84, saturation: 6, brightness: 88, alpha: 100)
let deepRed = Color(hue: 7, saturation: 97, brightness: 72, alpha: 100)

// Begin your solution here...

//background

    canvas.fillColor = lightGrey

    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)

//group A of text

    canvas.textColor = deepRed

    canvas.drawText(message: "straight music presents", size: 10, x: 13, y: 550, kerning: -0.5)

    canvas.drawText(message: "the undertones", size: 10, x: 13, y: 540, kerning: -0.5)



    canvas.drawText(message: "with special guests", size: 10, x: 13, y: 515, kerning: -0.5)


    canvas.drawText(message: "the chords", size: 10, x: 13, y: 505, kerning: -0.5)

//gorup B of text

    canvas.drawText(message: "victoria hall hanley", size: 10, x: 150, y: 550, kerning: -0.5)

    canvas.drawText(message: "stoke-on-trent, england", size: 10, x: 150, y: 540, kerning: -0.5)


    canvas.drawText(message: "tuesday", size: 10, x: 150, y: 515, kerning: -0.5)

    canvas.drawText(message: "june 5 1979 / 7:30 pm", size: 10, x: 150, y: 505, kerning: -0.5)

//group C of text

    canvas.drawText(message: "advance tickets: £2.00", size: 10, x: 280, y: 550, kerning: -0.5)

    canvas.drawText(message: "at the door: £2.50", size: 10, x: 280, y: 540, kerning: -0.5)


for x in stride(from: 0, to: 400, by: 50){
    canvas.lineColor = Color.white
    canvas.drawLine(fromX: x, fromY: 0, toX: x, toY: 600)
}

for y in stride(from: 0, to: 600, by: 50){
    canvas.drawLine(fromX: 0, fromY: y, toX: 400, toY: y)
}



//move the origin

canvas.translate(byX: 13, byY: 400)

    //fade loop
    
    for a in stride(from: 100, to: 0, by: -3){
        
        canvas.textColor = Color.init(hue: 0, saturation: 0, brightness: 0, alpha: a)
        
        //undertones logo
        
        canvas.drawText(message: "undertones", size: 70, x: 0, y: 0, kerning: 0)
        
        //rotate
        
        canvas.rotate(by: -5)
        
        
    }

















/*:
 **Remember to commit and push your work,please**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
