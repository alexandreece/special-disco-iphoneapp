//
//  Game.swift
//  LAMApp
//
//  Created by VRSTL on 03/03/2017.
//  Copyright © 2017 LAMA. All rights reserved.
//

import Foundation
import GameplayKit

class Game{
    
    static let shared = Game()
    
    // ----- INSTANTIATION ----- //
    var Level: Int
    
    var NbPlayers: Int = 5
    var NbTeam = 2
    
    var TeamA: String
    var TeamB: String
    
    var TeamA_List_Joueurs = [Joueur]()
    var TeamB_List_Joueurs = [Joueur]()
    
    var NbWords: Int
    var CurrentWord: Int
    var Words_List = [String]()
    var Words_Current_List = [String]()
    var Word: String
    var WordRndm: String
    var WordTeamA = [0, 0, 0, 0, 0]
    var WordTeamB = [0, 0, 0, 0, 0]
    var WordPlayer: Int
    var WordTag: Int
    
    //    int NbPointsTurnTeamA;
    //    int NbPointsTurnTeamB;
    var CurrentRound: Int
    var PlayerToPlay: [Int]
    var NbPointsTurn: Int
    var NbPointsRoundTeamA: Int
    var NbPointsRoundTeamB: Int
    
    var posTab = 0
    
    
    // ----- CONSTRUCTOR ----- //
    init() {
        self.Level = 0
        self.NbPlayers = 5
        self.TeamA = ""
        self.TeamB = ""
        self.NbWords = 0
        self.Word = ""
        self.WordRndm = ""
        self.WordPlayer = 0
        self.WordTag = 0
        self.CurrentWord = 0
        self.CurrentRound = 0
        self.PlayerToPlay = [0, 0]
        self.NbPointsTurn = 0
        self.NbPointsRoundTeamA = 0
        self.NbPointsRoundTeamB = 0
    }
    
    // ----- GETTERS ----- //
    
    
    func getNextWord() ->String
    {
        return Words_Current_List[ posTab ]
    }
    func getNameJoueurTeamA (pIDJoueur: Int) -> String {
        let Joueur: Joueur = TeamA_List_Joueurs[pIDJoueur]
        let JoueurName: String = Joueur.NomJoueur
        
        return JoueurName
    }
    
    func getNameJoueurTeamB (pIDJoueur: Int) -> String {
        let Joueur: Joueur = TeamB_List_Joueurs[pIDJoueur]
        
        let JoueurName: String = Joueur.NomJoueur
        return JoueurName
    }
    
    func copyWordList()
    {
        Words_Current_List = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: Words_List) as! [String]
    }
}
