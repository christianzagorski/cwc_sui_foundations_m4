//
//  ContentModel.swift
//  LearningApp
//
//  Created by Christian Zagorski on 5/9/21.
//

import Foundation

class ContentModel: ObservableObject {
 
    
    @Published var modules = [Module]()
    var styleData: Data?
    
    

    init() {
        
        getLocalData()
        
        
    }
    
    func getLocalData() {
        
        // Get an URL
        let JsonURL = Bundle.main.url(forResource: "data", withExtension: "json")
        
        // Read the file into a data object
        do {
        
            let JsonData = try Data(contentsOf: JsonURL!)
            
            // Try to decode the Json into an array of Modules
            let jsonDecoder = JSONDecoder()
            
            let modules = try jsonDecoder.decode([Module].self, from: JsonData)
            
            self.modules = modules
                    
        }
        catch {
                // TODO Log error here
            print("Could parse local data")
        }
        
        
    // parse the style data
        
        let styleURL = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do {
            
            let styleData = try Data(contentsOf: styleURL!)
            
            self.styleData = styleData
        }
        
        catch {
            // TODO Log error
            print("couldnt parse style data")
        }
    }
    
    
    
}
