//
//  PokemonTableCell.swift
//  MVCEjercicio1
//
//  Created by User on 03/03/24.
//

import UIKit

class PokemonTableCell: UITableViewCell {
    
    
    @IBOutlet weak var pokemonImage: UIImageView!
    
    @IBOutlet weak var pokemonLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
