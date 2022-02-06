//
//  ViewController.swift
//  TokiDrift v.0.1.0 - Alpha
//
//  Created by Robin Reggiani on 27/07/2020.
//  Copyright © 2020 Robin Reggiani. All rights reserved.
//

import UIKit

class MenuPage: UIViewController, UITabBarDelegate {
    let ListOfNumPiatti = [4, 3, 3, 3, 4, 2, 4, 4, 2, 3, 2, 2, 3, 3, 3, 4, 4, 2, 3, 3, 3, 4, 3, 4, 3, 4, 3, 3, 2, 3, 3, 2, 3, 3, 3, 4, 3, 4, 2, 2]
    let ListPointTstUp = [
        [10, 120], [10, 270], [10, 410], [10, 545],
        [345, 170], [345, 340], [345, 520],
        [10, 150], [10, 340], [10, 520],
        [345, 135], [345, 310], [345, 500],
        [10, 120], [10, 250], [10, 390], [10, 530],
        [10, 260],[345, 420],
        [10, 100], [10, 215], [10, 345], [10, 490],
        [345, 130], [345, 270], [345, 400], [345, 530],
        [10, 230], [10, 410],
        [345, 100], [345, 270], [345, 510],
        [10, 150], [10, 430],
        [345, 240], [345, 500],
        [10, 120], [10, 300], [10, 480],
        [345, 160], [345, 330], [345, 510],
        [10, 140], [10, 330], [10, 480],
        [345, 110], [345, 240], [345, 380], [345, 540],
        [10, 120], [10, 250], [10, 380], [10, 520],
        [345, 220], [345, 500],
        [10, 120], [10, 330], [10, 520],
        [345, 140], [345, 330], [345, 510],
        [10, 120], [10, 330], [10, 500],
        [345, 120], [345, 250], [345, 385], [345, 540],
        [10, 140], [10, 320], [10, 500],
        [345, 120], [345, 270], [345, 410], [345, 550],
        [10, 150], [10, 350], [10, 520],
        [345, 110], [345, 270], [345, 400], [345, 540],
        [10, 120], [10, 330], [10, 500],
        [345, 130], [345, 310], [345, 510],
        [10, 180], [10, 400],
        [345, 130], [345, 330], [345, 530],
        [10, 130], [10, 310], [10, 520],
        [345, 210], [10, 500],
        [10, 150], [10, 330], [10, 500],
        [345, 150], [345, 330], [345, 520],
        [10, 140], [10, 330], [10, 520],
        [345, 120], [345, 250], [345, 380], [345, 520],
        [10, 160], [10, 350], [10, 520],
        [345, 110], [345, 250], [345, 390], [345, 530],
        [10, 240], [10, 470],
        [345, 200], [345, 410]
    ]
    let ListaIDPiatti = ["1", "2", "3", "4",
                         "5", "6", "7",
                         "8", "9", "10",
                         "11", "12", "13",
                         "14", "15", "18", "19",
                         "17", "16",
                         "21/B", "291", "20", "21",
                         "30", "31", "32", "33",
                         "40", "46",
                         "41", "48", "42",
                         "43", "45",
                         "44", "47",
                         "60", "61", "62",
                         "63", "64", "65",
                         "66", "67", "68",
                         "80", "81", "82", "83",
                         "84", "85", "86", "87",
                         "88", "89",
                         "90", "91", "92",
                         "101", "102", "100",
                         "110", "111", "112",
                         "113", "114", "115", "116",
                         "117", "118", "119",
                         "120", "121", "123", "122",
                         "124", "125", "126",
                         "127", "128", "129", "130",
                         "131", "132", "133",
                         "134", "135", "136",
                         "137", "138",
                         "150", "151", "152",
                         "153", "154", "155",
                         "156", "157",
                         "170", "171", "172",
                         "173", "174", "175",
                         "176", "177", "178",
                         "179", "180", "181", "182",
                         "183", "184", "185",
                         "186", "187", "188", "189",
                         "190", "191",
                         "192", "193"]
    
    let ListaNomiPiatti = ["Edamame", "Insalata verdure", "Insalata wakame", "Insalata con frutti di mare",
                           "Samosa vegetale", "Shaomai", "Gyoza",
                           "Hamburger cinese", "Involtini primavera", "Shrimp potato",
                           "Gamberi butterfly", "Tempura ika", "Pane fritto",
                           "Takazu", "Surmono", "Carpaccio sake", "Carpaccio butter fish",
                           "Tataki maguro", "Tataki sake",
                           "Shrimp soup", "Gamberi sale e pepe", "Zuppa misto", "Zuppa agro-piccante",
                           "Chirashi sake", "Chirashi teriyaki sake", "Chirashi maguro donburi", "Chirashi misto",
                           "Gunkan sake", "Gunkan kani",
                           "Gunkan salmone scottato", "Gunkan wakame", "Gunkan spicy sake",
                           "Gunkan gio", "Gunkan tobiko",
                           "Gunkan spicy maguro", "Gunkan Ebi",
                           "Hosomaki sake", "Hosomaki maguro", "Hosomaki foglio di soia",
                           "Hosomaki fritti", "Hosomaki ebi", "Hosomaki tamago",
                           "Hosomaki avocado", "Hosomaki akaya takuntaro", "Hosomaki kappa",
                           "Nigiri sake", "Nigiri salmone scottato", "Nigiri maguro", "Nigiri tonno scottato",
                           "Nigiri suzuki", "Nigiri suzuki scottato", "Nigiri ika", "Nigiri ebi",
                           "Nigiri tamago", "Nigiri avocado",
                           "Onigiri spicy sake", "Onigiri salmone cotto", "Onigiri ebiten",
                           "Sashimi tai", "Sashimi butter", "Sashimi sake",
                           "Uramaki sake", "Uramaki spicy sake", "Uramaki salmone cotto",
                           "Uramaki mulla", "Uramaki foglio di soia", "Uramaki maguro", "Uramaki tonno cotto",
                           "Uramaki spicy maguro", "Uramaki philadelphia", "Uramaki unagi",
                           "Uramaki rainbow", "California special roll", "Uramaki ebiten", "Lemon maki roll",
                           "Uramaki california", "Uramaki ebi tamago", "Toki sake roll",
                           "Toki maguro roll", "Toki roll", "Special spicy sake roll", "Uramaki tempura verdure",
                           "Uramaki vega", "Black sake roll", "Black ebi roll",
                           "Uramaki black vega", "Futomaki salmone affumicato", "Futomaki fumo",
                           "Futomaki ebiten", "Futomaki california",
                           "Temaki sake", "Temaki spicy sake", "Temaki maguro",
                           "Temaki spicy maguro", "Temaki california", "Temaki misto",
                           "Temaki tempura", "Temaki vega",
                           "Ramen con zuppa", "Ramen", "Udon",
                           "Spaghetti bathai", "Spaghetti di riso", "Spaghetti di riso con gamberi",
                           "Spaghetti di soia", "Riso con salmone", "Riso con gamberi",
                           "Riso alla cantonese", "Insalata belga alla piastra", "Gyoza di pollo alla griglia", "Spiedini di gamberi",
                           "Spiedini di pollo", "Calamari agropiccanti", "Gamberi agropiccanti",
                           "Gongbao pollo", "Pollo agropiccante", "Pollo con le mandorle", "Germogli di soia saltati",
                           "Tempura ebi", "Ebi fly",
                           "Tempura verdure miste", "Tempura misto"]
    
    let ListaCropRect = [CGRect(x: 780, y: 191, width: 671, height: 548), //Edamame
                         CGRect(x: 189, y: 725, width: 674, height: 572),
                         CGRect(x: 855, y: 1262, width: 536, height: 536),
                         CGRect(x: 320, y: 1830, width: 547, height: 545),
                         CGRect(x: 151, y: 256, width: 640, height: 638), //Samosa vegetale
                         CGRect(x: 83, y: 954, width: 623, height: 586),
                         CGRect(x: 482, y: 1658, width: 651, height: 597),
                         CGRect(x: 282, y: 355, width: 563, height: 459), //Hamburger cinese
                         CGRect(x: 641, y: 1113, width: 607, height: 608),
                         CGRect(x: 796, y: 1868, width: 371, height: 371),
                         CGRect(x: 189, y: 252, width: 537, height: 537), //Gamberi butterfly
                         CGRect(x: 557, y: 940, width: 477, height: 477),
                         CGRect(x: 280, y: 1631, width: 905, height: 543),
                         CGRect(x: 338, y: 262, width: 594, height: 366), // Takazu
                         CGRect(x: 819, y: 693, width: 559, height: 559),
                         CGRect(x: 411, y: 1316, width: 503, height: 503),
                         CGRect(x: 874, y: 1835, width: 462, height: 462),
                         CGRect(x: 297, y: 211, width: 911, height: 715), //Tataki maguro
                         CGRect(x: 157, y: 1643, width: 1247, height: 759),
                         CGRect(x: 493, y: 276, width: 598, height: 303), // Shrimp soup
                         CGRect(x: 308, y: 609, width: 736, height: 428),
                         CGRect(x: 350, y: 1063, width: 584, height: 573),
                         CGRect(x: 356, y: 1676, width: 550, height: 527),
                         CGRect(x: 132, y: 249, width: 457, height: 358),
                         CGRect(x: 669, y: 769, width: 490, height: 389),
                         CGRect(x: 150, y: 1282, width: 520, height: 519), //Chirashi
                         CGRect(x: 711, y: 1833, width: 497, height: 384),
                         CGRect(x: 747, y: 383, width: 706, height: 706),
                         CGRect(x: 395, y: 1395, width: 755, height: 755),
                         CGRect(x: 674, y: 52, width: 613, height: 481), //Gunkan sake
                         CGRect(x: 548, y: 705, width: 820, height: 784),
                         CGRect(x: 80, y: 1604, width: 661, height: 666), //Gunkan salmone scottato
                         CGRect(x: 524, y: 408, width: 746, height: 746),
                         CGRect(x: 238, y: 1158, width: 783, height: 709),
                         CGRect(x: 4, y: 435, width: 847, height: 887), //Gunkan gio
                         CGRect(x: 520, y: 1397, width: 859, height: 825),
                         CGRect(x: 465, y: 355, width: 383, height: 383), //gunkan spicy maguro
                         CGRect(x: 952, y: 1080, width: 343, height: 343),
                         CGRect(x: 281, y: 1686, width: 403, height: 403), //Hosomaki sake
                         CGRect(x: 181, y: 341, width: 403, height: 351),
                         CGRect(x: 703, y: 1099, width: 340, height: 340),
                         CGRect(x: 227, y: 1778, width: 337, height: 337), //Hosomaki fritti
                         CGRect(x: 381, y: 424, width: 340, height: 340),
                         CGRect(x: 982, y: 1171, width: 270, height: 270),
                         CGRect(x: 355, y: 1681, width: 343, height: 343), //hosomaki avocado
                         CGRect(x: 203, y: 183, width: 544, height: 544),
                         CGRect(x: 708, y: 689, width: 517, height: 517),
                         CGRect(x: 699, y: 1222, width: 444, height: 444), //nigiri sake
                         CGRect(x: 270, y: 1880, width: 388, height: 388),
                         CGRect(x: 667, y: 118, width: 556, height: 556),
                         CGRect(x: 735, y: 740, width: 461, height: 461),
                         CGRect(x: 364, y: 1365, width: 423, height: 423), //nigiri suzuki
                         CGRect(x: 686, y: 1830, width: 440, height: 440),
                         CGRect(x: 496, y: 592, width: 515, height: 515),
                         CGRect(x: 253, y: 1366, width: 434, height: 434),
                         CGRect(x: 893, y: 345, width: 460, height: 443), //nigiri tamago
                         CGRect(x: 309, y: 1052, width: 583, height: 417),
                         CGRect(x: 810, y: 1788, width: 450, height: 446), //onigiri spicy sake
                         CGRect(x: 62, y: 221, width: 811, height: 585),
                         CGRect(x: 483, y: 957, width: 850, height: 661),
                         CGRect(x: 36, y: 1628, width: 952, height: 642), //sashimi tai
                         CGRect(x: 378, y: 421, width: 703, height: 448),
                         CGRect(x: 680, y: 1011, width: 765, height: 543),
                         CGRect(x: 348, y: 1625, width: 581, height: 581), //uramaki sake
                         CGRect(x: 500, y: 112, width: 531, height: 531),
                         CGRect(x: 405, y: 717, width: 515, height: 404),
                         CGRect(x: 709, y: 1249, width: 431, height: 362), //uramaki miulia
                         CGRect(x: 207, y: 1781, width: 595, height: 507),
                         CGRect(x: 626, y: 321, width: 821, height: 524),
                         CGRect(x: 212, y: 860, width: 854, height: 698),
                         CGRect(x: 687, y: 1631, width: 755, height: 587), //uramaki spicy maguro
                         CGRect(x: 504, y: 255, width: 603, height: 465),
                         CGRect(x: 349, y: 753, width: 476, height: 476),
                         CGRect(x: 559, y: 1259, width: 708, height: 513), //uramaki ranbow roll
                         CGRect(x: 251, y: 1802, width: 584, height: 517),
                         CGRect(x: 330, y: 222, width: 683, height: 583),
                         CGRect(x: 854, y: 956, width: 599, height: 593),
                         CGRect(x: 261, y: 1723, width: 672, height: 577), //uramaki california
                         CGRect(x: 610, y: 22, width: 704, height: 588),
                         CGRect(x: 165, y: 598, width: 711, height: 568),
                         CGRect(x: 559, y: 1262, width: 505, height: 505), //toki maguro roll
                         CGRect(x: 150, y: 1819, width: 522, height: 441),
                         CGRect(x: 420, y: 257, width: 602, height: 526),
                         CGRect(x: 704, y: 962, width: 753, height: 557),
                         CGRect(x: 271, y: 1639, width: 711, height: 616), //uramaki vega
                         CGRect(x: 467, y: 69, width: 819, height: 654),
                         CGRect(x: 358, y: 979, width: 599, height: 402),
                         CGRect(x: 106, y: 1539, width: 738, height: 716),
                         CGRect(x: 746, y: 517, width: 633, height: 502),
                         CGRect(x: 386, y: 1393, width: 441, height: 421),
                         CGRect(x: 126, y: 225, width: 729, height: 675), //uramaki black vega
                         CGRect(x: 553, y: 988, width: 803, height: 580),
                         CGRect(x: 73, y: 1669, width: 770, height: 592),
                         CGRect(x: 766, y: 120, width: 729, height: 524), //futomaki ebiten
                         CGRect(x: 257, y: 788, width: 786, height: 580),
                         CGRect(x: 608, y: 1433, width: 851, height: 570), //temaki sake
                         CGRect(x: 109, y: 413, width: 778, height: 645),
                         CGRect(x: 599, y: 1279, width: 741, height: 569),
                         CGRect(x: 243, y: 315, width: 645, height: 532), //temaki spicy maguro
                         CGRect(x: 964, y: 943, width: 541, height: 455),
                         CGRect(x: 289, y: 1614, width: 648, height: 573),
                         CGRect(x: 85, y: 297, width: 622, height: 475), //temaki tempura
                         CGRect(x: 593, y: 968, width: 652, height: 520),
                         CGRect(x: 62, y: 1661, width: 638, height: 529), //ramen con zuppa
                         CGRect(x: 771, y: 279, width: 651, height: 501),
                         CGRect(x: 229, y: 928, width: 698, height: 634),
                         CGRect(x: 728, y: 1724, width: 760, height: 610), //spaghetti bathai
                         CGRect(x: 62, y: 138, width: 759, height: 586),
                         CGRect(x: 630, y: 672, width: 701, height: 545),
                         CGRect(x: 46, y: 1160, width: 609, height: 479), //spaghetti di soia
                         CGRect(x: 629, y: 1735, width: 657, height: 595),
                         CGRect(x: 689, y: 236, width: 797, height: 589),
                         CGRect(x: 410, y: 1030, width: 540, height: 498), //riso alla cantonese
                         CGRect(x: 648, y: 1648, width: 794, height: 662),
                         CGRect(x: 71, y: 66, width: 784, height: 655),
                         CGRect(x: 596, y: 689, width: 693, height: 529),
                         CGRect(x: 59, y: 1181, width: 745, height: 614), //spiedini di pollo
                         CGRect(x: 590, y: 1759, width: 703, height: 580),
                         CGRect(x: 708, y: 394, width: 738, height: 689),
                         CGRect(x: 667, y: 1682, width: 691, height: 591), //gongbao pollo
                         CGRect(x: 120, y: 411, width: 633, height: 552),
                         CGRect(x: 109, y: 1528, width: 1197, height: 833),
    ]
    struct t_Limit {
        var IdxPiatto = String()
        var QntLimite: Int
    }
    struct AllDati {
        var NumeroPiatti: Int
        var CoordTstUp  = [CGPoint]()
        var CoordTb     = [CGPoint]()
        var CoordTstDw  = [CGPoint]()
    }
    struct t_TstPos {
        var bt_UpPos: CGPoint
        var tb_Npiatti: CGPoint
        var bt_DwPos: CGPoint
    }
    struct t_Piatto {
        var PosizioneTasti = t_TstPos(bt_UpPos: CGPoint(x: 0, y: 0), tb_Npiatti: CGPoint(x: 0, y: 0), bt_DwPos: CGPoint(x: 0, y: 0))
        var NomePiatto = String()
        var IDPiatto = String()
        var RecThumb = CGRect()
        var QntPiatto: Int
        var Limite: Int
        
    }
    struct t_PaginaMenu {
        var nOfPiatti: Int?
        var PiattoPagina = [t_Piatto]()
    }
    
    struct MenuArray {
        static var MenuVar = [t_PaginaMenu]()
    }

    let NofPaginePranzo = 40
    let NOfPagineCena = 67
    var IdxPagina = 1
    var QntValue: Int?
    let tmpLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 30, height: 20))
    //var MenuArray = [t_PaginaMenu]()
    var DatiArray = [AllDati]()
    var LimitList = [t_Limit]()
    @IBOutlet weak var tst_Up1: UIButton!
    @IBOutlet weak var tst_Up2: UIButton!
    @IBOutlet weak var tst_Up3: UIButton!
    @IBOutlet weak var tst_Up4: UIButton!
    @IBOutlet weak var tst_Dw1: UIButton!
    @IBOutlet weak var tst_Dw2: UIButton!
    @IBOutlet weak var tst_Dw3: UIButton!
    @IBOutlet weak var tst_Dw4: UIButton!
    @IBOutlet weak var lbl_Qnt1: UILabel!
    @IBOutlet weak var lbl_Qnt2: UILabel!
    @IBOutlet weak var lbl_Qnt3: UILabel!
    @IBOutlet weak var lbl_Qnt4: UILabel!
    @IBOutlet weak var pb_BackGround: UIImageView!
    @IBOutlet weak var Exit: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var Counter = 0
        var TmpCounter = 0
        for i in 0...NofPaginePranzo - 1 {
            var tmpCoordTstUp = [CGPoint]()
            var tmpCoordTstDw = [CGPoint]()
            var tmpCoordTb = [CGPoint]()
            for j in 0...ListOfNumPiatti[i] - 1 {
                tmpCoordTstUp.append(CGPoint(x: ListPointTstUp[j + Counter][0], y: ListPointTstUp[j + Counter][1]))
                tmpCoordTb.append(CGPoint(x: ListPointTstUp[j + Counter][0] + 9, y: ListPointTstUp[j + Counter][1] + 40))
                tmpCoordTstDw.append(CGPoint(x: ListPointTstUp[j + Counter][0], y: ListPointTstUp[j + Counter][1] + 70))
                TmpCounter += 1
            }
            Counter = TmpCounter
            let tmpDati = AllDati(NumeroPiatti: ListOfNumPiatti[i], CoordTstUp: tmpCoordTstUp, CoordTb: tmpCoordTb, CoordTstDw: tmpCoordTstDw)
            DatiArray.append(tmpDati)
        }
        Counter = 0
        TmpCounter = 0
        //MenuArray.reserveCapacity(NofPaginePranzo)
        for i in 0...NofPaginePranzo - 1 {
            var tmpArrayPiatto = [t_Piatto]()
            for j in 0...DatiArray[i].NumeroPiatti - 1 {
                let tmpObjPos = t_TstPos(bt_UpPos: DatiArray[i].CoordTstUp[j], tb_Npiatti: DatiArray[i].CoordTb[j], bt_DwPos: DatiArray[i].CoordTstDw[j])
                let tmpPiatto = t_Piatto(PosizioneTasti: tmpObjPos, NomePiatto: ListaNomiPiatti[j + Counter], IDPiatto: ListaIDPiatti[j + Counter], RecThumb: ListaCropRect[j + Counter], QntPiatto: 0, Limite: 0)
                tmpArrayPiatto.append(tmpPiatto)
                TmpCounter += 1
            }
            Counter = TmpCounter
            let tmpPagina = t_PaginaMenu(nOfPiatti: ListOfNumPiatti[i], PiattoPagina: tmpArrayPiatto)
            MenuArray.MenuVar.append(tmpPagina)
        }
        for i in 0...ListaIDPiatti.count - 1 {
            switch (ListaIDPiatti[i]) {
            case ("18"):
                LimitList.append(t_Limit(IdxPiatto: ListaIDPiatti[i], QntLimite: 1))
            case ("19"):
                LimitList.append(t_Limit(IdxPiatto: ListaIDPiatti[i], QntLimite: 1))
            case ("101"):
                LimitList.append(t_Limit(IdxPiatto: ListaIDPiatti[i], QntLimite: 1))
            case ("102"):
                LimitList.append(t_Limit(IdxPiatto: ListaIDPiatti[i], QntLimite: 1))
            case ("100"):
                LimitList.append(t_Limit(IdxPiatto: ListaIDPiatti[i], QntLimite: 1))
            case ("291"):
                LimitList.append(t_Limit(IdxPiatto: ListaIDPiatti[i], QntLimite: 3))
            default:
                break
            }
        }
        AssignBackground(idxImage: IdxPagina)
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeFunc(gesture:)))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeFunc(gesture:)))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        GestControlli()
    }
    
    @objc func swipeFunc(gesture: UISwipeGestureRecognizer) {
        if (gesture.direction == .right) {
            if (IdxPagina > 1) {
                IdxPagina -= 1
                AssignBackground(idxImage: IdxPagina)
            }
        } else if (gesture.direction == .left) {
            if (IdxPagina < NofPaginePranzo) {
                IdxPagina += 1
                AssignBackground(idxImage: IdxPagina)
            }
        }
    }
    
    @IBAction func bt_Inc1(_ sender: UIButton) {
        var found: Bool = false
        var idx: Int = 0
        for i in 0...LimitList.count - 1 {
            if LimitList[i].IdxPiatto == MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].IDPiatto {
                found = true
                idx = i
            }
        }
        if (found) {
            if (MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].QntPiatto >= LimitList[idx].QntLimite) {
                CallAlert(idxPiatto: LimitList[idx].QntLimite)
            } else {
                MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].QntPiatto += 1
            }
        } else {
            MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].QntPiatto += 1
        }
        lbl_Qnt1.text = String(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].QntPiatto)
    }
    
    @IBAction func bt_Dec1(_ sender: UIButton) {
        if (MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].QntPiatto > 0) {
            MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].QntPiatto -= 1
            lbl_Qnt1.text = String(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].QntPiatto)
        }
    }
    
    @IBAction func bt_Inc2(_ sender: UIButton) {
        var found: Bool = false
        var idx: Int = 0
        for i in 0...LimitList.count - 1 {
            if LimitList[i].IdxPiatto == MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].IDPiatto {
                found = true
                idx = i
            }
        }
        if (found) {
            if (MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].QntPiatto >= LimitList[idx].QntLimite) {
                CallAlert(idxPiatto: LimitList[idx].QntLimite)
            } else {
                MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].QntPiatto += 1
            }
        } else {
            MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].QntPiatto += 1
        }
        lbl_Qnt2.text = String(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].QntPiatto)
    }
    
    @IBAction func bt_Dec2(_ sender: UIButton) {
        if (MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].QntPiatto > 0) {
            MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].QntPiatto -= 1
            lbl_Qnt2.text = String(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].QntPiatto)
        }
    }
    
    @IBAction func bt_Inc3(_ sender: UIButton) {
        var found: Bool = false
        var idx: Int = 0
        for i in 0...LimitList.count - 1 {
            if LimitList[i].IdxPiatto == MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].IDPiatto {
                found = true
                idx = i
            }
        }
        if (found) {
            if (MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].QntPiatto >= LimitList[idx].QntLimite) {
                CallAlert(idxPiatto: LimitList[idx].QntLimite)
            } else {
                MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].QntPiatto += 1
            }
        } else {
            MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].QntPiatto += 1
        }
        lbl_Qnt3.text = String(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].QntPiatto)
    }
    
    @IBAction func bt_Dec3(_ sender: UIButton) {
        if (MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].QntPiatto > 0) {
            MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].QntPiatto -= 1
            lbl_Qnt3.text = String(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].QntPiatto)
        }
    }
    
    @IBAction func bt_Inc4(_ sender: UIButton) {
        var found: Bool = false
        var idx: Int = 0
        for i in 0...LimitList.count - 1 {
            if LimitList[i].IdxPiatto == MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].IDPiatto {
                found = true
                idx = i
            }
        }
        if (found) {
            if (MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].QntPiatto >= LimitList[idx].QntLimite) {
                CallAlert(idxPiatto: LimitList[idx].QntLimite)
            } else {
                MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].QntPiatto += 1
            }
        } else {
            MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].QntPiatto += 1
        }
        lbl_Qnt4.text = String(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].QntPiatto)
    }
    
    @IBAction func bt_Dec4(_ sender: UIButton) {
        if (MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].QntPiatto > 0) {
            MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].QntPiatto -= 1
            lbl_Qnt4.text = String(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].QntPiatto)
        }
    }
    
    func CallAlert (idxPiatto: Int) {
        let alert = UIAlertController(title: "Quantità massima raggiunta", message: "Il limite di questo piatto è \(idxPiatto). C'MON MAN", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
                        { action -> Void in
            
        })
        self.present(alert, animated: true, completion: nil)
    }
    
    func AssignBackground(idxImage: Int) {
        let tmpStringFormat = String(format: "%02d", idxImage)
        let tmpBackGround = UIImage(named: "TokiDrift" + tmpStringFormat)
        pb_BackGround.bounds = view.bounds
        pb_BackGround.contentMode = UIView.ContentMode.scaleAspectFit
        pb_BackGround.clipsToBounds = true
        pb_BackGround.center = CGPoint(x: view.center.x, y: view.center.y - view.center.y / 7)
        pb_BackGround.image = tmpBackGround
        self.view.sendSubviewToBack(pb_BackGround)
        GestControlli()
    }
    
    func GestControlli() {
        tst_Up1.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].PosizioneTasti.bt_UpPos.x)
        tst_Up1.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].PosizioneTasti.bt_UpPos.y)
        tst_Up2.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].PosizioneTasti.bt_UpPos.x)
        tst_Up2.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].PosizioneTasti.bt_UpPos.y)
        tst_Dw1.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].PosizioneTasti.bt_DwPos.x)
        tst_Dw1.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].PosizioneTasti.bt_DwPos.y)
        tst_Dw2.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].PosizioneTasti.bt_DwPos.x)
        tst_Dw2.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].PosizioneTasti.bt_DwPos.y)
        lbl_Qnt1.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].PosizioneTasti.tb_Npiatti.x)
        lbl_Qnt1.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].PosizioneTasti.tb_Npiatti.y)
        lbl_Qnt2.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].PosizioneTasti.tb_Npiatti.x)
        lbl_Qnt2.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].PosizioneTasti.tb_Npiatti.y)
        lbl_Qnt1.text = String(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[0].QntPiatto)
        lbl_Qnt2.text = String(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[1].QntPiatto)
        tst_Up3.isHidden = true
        tst_Up4.isHidden = true
        tst_Dw3.isHidden = true
        tst_Dw4.isHidden = true
        lbl_Qnt3.isHidden = true
        lbl_Qnt4.isHidden = true
        switch ListOfNumPiatti[IdxPagina - 1] {
            case 3:
            tst_Up3.isHidden = false
            tst_Dw3.isHidden = false
            lbl_Qnt3.isHidden = false
                tst_Up3.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].PosizioneTasti.bt_UpPos.x)
                tst_Up3.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].PosizioneTasti.bt_UpPos.y)
                tst_Dw3.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].PosizioneTasti.bt_DwPos.x)
                tst_Dw3.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].PosizioneTasti.bt_DwPos.y)
                lbl_Qnt3.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].PosizioneTasti.tb_Npiatti.x)
                lbl_Qnt3.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].PosizioneTasti.tb_Npiatti.y)
                lbl_Qnt3.text = String(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].QntPiatto)
                tst_Up4.isHidden = true
                tst_Dw4.isHidden = true
                lbl_Qnt4.isHidden = true
                break;
            case 4:
                tst_Up3.isHidden = false
                tst_Up4.isHidden = false
                tst_Dw3.isHidden = false
                tst_Dw4.isHidden = false
                lbl_Qnt3.isHidden = false
                lbl_Qnt4.isHidden = false
                tst_Up3.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].PosizioneTasti.bt_UpPos.x)
                tst_Up3.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].PosizioneTasti.bt_UpPos.y)
                tst_Up4.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].PosizioneTasti.bt_UpPos.x)
                tst_Up4.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].PosizioneTasti.bt_UpPos.y)
                tst_Dw3.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].PosizioneTasti.bt_DwPos.x)
                tst_Dw3.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].PosizioneTasti.bt_DwPos.y)
                tst_Dw4.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].PosizioneTasti.bt_DwPos.x)
                tst_Dw4.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].PosizioneTasti.bt_DwPos.y)
                lbl_Qnt3.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].PosizioneTasti.tb_Npiatti.x)
                lbl_Qnt3.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].PosizioneTasti.tb_Npiatti.y)
                lbl_Qnt4.frame.origin.x = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].PosizioneTasti.tb_Npiatti.x)
                lbl_Qnt4.frame.origin.y = CGFloat(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].PosizioneTasti.tb_Npiatti.y)
                lbl_Qnt3.text = String(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[2].QntPiatto)
                lbl_Qnt4.text = String(MenuArray.MenuVar[IdxPagina - 1].PiattoPagina[3].QntPiatto)
                break;
            default:
                break;
        }
    }
}

