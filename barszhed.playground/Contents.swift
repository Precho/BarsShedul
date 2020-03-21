import Cocoa

let A = 545
let B = 215
let C = 545

let diameter = 12
let shapeCode = 21


func licz(_A:Int,_B:Int,_C:Int)->Int {
    let radius = 24
    let diameter = 12
    var calcs = A + B + C - radius - 2 * diameter
    print("None rounded  \(calcs)   |")
    calcs = roundUpto25(Double(calcs))
    print("----------------------")
    print("Rounded       \(calcs)   |")
    print("----------------------")
    liczHIGH(calcs) //Odpalam liczhigh
    higherBar(liczHIGH(calcs), B, C)
    if calcs%250 == 0{
        
    }
    else{
        print("Potential higher length is \(liczHIGH(calcs))")
        print("Potential A and C = \(higherBar(liczHIGH(calcs), B, C))")
        print("-------------------------------------")
        print("Potential Lower length is \(liczLow(calcs))")
        print("Potential A and C = \(lowerBar(liczLow(calcs), B, C))")
        
    }
    return calcs
}

func roundUpto25(_ calcs:Double)-> Int {
    let a = (calcs/25).rounded(.up)*25
    return Int(a)
}

func liczHIGH(_ calcs:Int)-> Int {
    
    let potentialLength = (Double(calcs)/250).rounded(.up)*250
    //print("Potential higher length is \(potentialLength)")
    return Int(potentialLength)
}

func higherBar(_ Length:Int, _ B:Int,_ C:Int)->Int{

    let radius = 24
    let diameter = 12
    let bar = (((Double(Length - B + radius + 2 * diameter))/2)/5).rounded(.down) * 5
    
    return Int(bar)
}

func liczLow(_ calcs:Int)-> Int {
    
    let potentialLength = (Double(calcs)/250).rounded(.down)*250
    //print("Potential higher length is \(potentialLength)")
    return Int(potentialLength)
}

func lowerBar(_ Length:Int, _ B:Int,_ C:Int)->Int{
    
    let radius = 24
    let diameter = 12
    let bar = (((Double(Length - B + radius + 2 * diameter))/2)/5).rounded(.down) * 5
    
    return Int(bar)
}




//higherBar(liczHIGH(licz(_A: A, _B: B, _C: C)), B, C)
licz(_A: A, _B: B, _C: C)
