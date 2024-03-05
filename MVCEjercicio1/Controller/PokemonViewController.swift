//
//  PokemonViewController.swift
//  MVCEjercicio1
//
//  Created by User on 03/03/24.
//

import UIKit

class PokemonViewController: UIViewController {
    
    @IBOutlet weak var pokemonTableView: UITableView!
    let pokemonDataManager = PokemonManager()
    var selectedPokemon : Pokemon?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pokemonDataManager.fetch()
    }
}




extension PokemonViewController : UITableViewDelegate, UITableViewDataSource{
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonDataManager.countPokemons()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonTableCell
        let pokemon = pokemonDataManager.getPokemon(at: indexPath.row)
        cell.pokemonImage.image = UIImage(named: pokemon.image)
        cell.pokemonLabel.text = pokemon.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pokemons"
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row selected \(indexPath.row)")
        selectedPokemon = pokemonDataManager.getPokemon(at: indexPath.row)
        self.performSegue(withIdentifier: "detailSegue", sender: Self.self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PokemonDetailViewController
        destination.receivedPokemon = selectedPokemon
    }
    
}
