//
//  PpkemonDetailViewController.swift
//  MVCEjercicio1
//
//  Created by User on 03/03/24.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    
    
    @IBOutlet weak var namePokemonLabel: UILabel!
    
    
    @IBOutlet weak var pokemonImage: UIImageView!
    
    @IBOutlet weak var habPokemonLabel: UILabel!
    
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    var receivedPokemon : Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Pokemon", receivedPokemon!)
        pokemonImage.image = UIImage(named: receivedPokemon!.image)
        namePokemonLabel.text = receivedPokemon!.name
        habPokemonLabel.text = receivedPokemon!.hab
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

