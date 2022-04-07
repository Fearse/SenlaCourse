import Foundation
class RPS{
    enum variants{
        case Rock
        case Paper
        case Scissors
    }
    var pChoose=variants.Rock
    var cChoose:variants=variants.Rock
    var draw_available=true;
    var ruEng=true;
    init(){}
    public func setIChoose(x:Int){
        switch x{
        case 1: pChoose=variants.Rock
        case 2: pChoose=variants.Paper
        case 3: pChoose=variants.Scissors
        default: pChoose=variants.Rock
        }
    }

    public func generateCChoose(){
        var x:Int
        if (draw_available){
            x=Int.random(in: 1...3)
            switch x{
            case 1: cChoose=variants.Rock
            case 2: cChoose=variants.Paper
            case 3: cChoose=variants.Scissors
            default: cChoose=variants.Rock
            }
        }
        else{
            x=Int.random(in: 1...2)
            if(pChoose==variants.Rock){
                switch x{
                    case 1: cChoose=variants.Paper
                    case 2: cChoose=variants.Scissors
                    default: cChoose=variants.Paper
                    }
                }
            if(pChoose==variants.Paper){
                switch x{
                    case 1: cChoose=variants.Rock
                    case 2: cChoose=variants.Scissors
                    default: cChoose=variants.Rock
                    }
                }
            if(pChoose==variants.Scissors){
                switch x{
                    case 1: cChoose=variants.Rock
                    case 2: cChoose=variants.Paper
                    default: cChoose=variants.Rock
                    }
                }
            }
        }
    
    public func decideWinner()->String{
        if (pChoose==cChoose){
            if (!ruEng){
                return "Draw"
            }
            else {
                return "Ничья"
            }
        }
        if ((pChoose==variants.Rock&&cChoose==variants.Scissors) || (pChoose==variants.Paper&&cChoose==variants.Rock) || (pChoose==variants.Scissors&&cChoose==variants.Paper)){
            if (!ruEng){
                return "You win"
            }
            else {
                return "Вы победили"
            }

        }
        if (!ruEng){
            return "You lose"
        }
        else {
            return "Вы проиграли"
        }
    }
    public func getPchoose()->variants{
        return cChoose
    }
    public func switchDraw(){
        draw_available.toggle()
    }
    public func switchLang(){
        ruEng.toggle()
    }
}
