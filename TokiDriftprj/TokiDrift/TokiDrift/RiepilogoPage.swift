//
//  RiepilogoPage.swift
//  TokiDrift
//
//  Created by Robin Reggiani on 24/01/22.
//  Copyright © 2022 Robin Reggiani. All rights reserved.
//

import UIKit


struct tOrdini {
    var PiattoName = String()
    var Icona: CGRect
    var Pagina: Int
    var IdxPiatto: Int
    var QntPiatti: Int
}

var tmpOrdini = [tOrdini]()
var NumeroPiatti = Int()
class RiepilogoPage: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        NumeroPiatti = GetNofPiatti()
        return NumeroPiatti
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(tmpOrdini[indexPath.row].QntPiatti)x  \(tmpOrdini[indexPath.row].PiattoName)"
        let tmpStringFormat = String(format: "%02d", (tmpOrdini[indexPath.row].Pagina) + 1)
        let tmpImage = UIImage(named: "TokiDrift" + tmpStringFormat)
        let tmpCGRect = tmpOrdini[indexPath.row].Icona
        cell.imageView?.image = cropToBounds(image: tmpImage!, Rect: tmpCGRect)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            DeletePiatto(Index: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            tabBarController?.navigationItem.title = "Riepilogo piatti - Totale: \(NumeroPiatti)"
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tmpOrdini.removeAll()
        self.tableView.reloadData()
        self.tabBarController?.navigationItem.title = "Riepilogo piatti - Totale: \(NumeroPiatti)"
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.navigationItem.title = ""
    }
}

func cropToBounds(image: UIImage, Rect: CGRect) -> UIImage {
    let cropRect = Rect.integral
    let sourceCGImage = image.cgImage!
    let croppedCGImage = sourceCGImage.cropping(to: cropRect)!
    let outputImage = UIImage(cgImage: croppedCGImage, scale: image.imageRendererFormat.scale, orientation: image.imageOrientation)
    return outputImage
    
}

func GetNofPiatti() -> Int {
    var nPiatti = 0
    for i in 0...(MenuPage().NofPaginePranzo - 1) {
        for j in 0...(MenuPage.MenuArray.MenuVar[i].nOfPiatti! - 1) {
            if (MenuPage.MenuArray.MenuVar[i].PiattoPagina[j].QntPiatto > 0) {
                nPiatti += 1
                let tmp = tOrdini(PiattoName: MenuPage.MenuArray.MenuVar[i].PiattoPagina[j].NomePiatto,
                                  Icona: MenuPage.MenuArray.MenuVar[i].PiattoPagina[j].RecThumb,
                                  Pagina: i,
                                  IdxPiatto: j,
                                  QntPiatti: MenuPage.MenuArray.MenuVar[i].PiattoPagina[j].QntPiatto)
                tmpOrdini.append(tmp)
            }
        }
    }
    return nPiatti
}

func DeletePiatto(Index: Int) {
    MenuPage.MenuArray.MenuVar[tmpOrdini[Index].Pagina].PiattoPagina[tmpOrdini[Index].IdxPiatto].QntPiatto = 0
    tmpOrdini.remove(at: Index)
}
