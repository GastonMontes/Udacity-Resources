//: # Lesson 5 Exercises - Defining and Calling Functions

import UIKit

//: __Problem 1.__
//:
//:Earlier we used the method, removeAtIndex() to remove the first letter of a string. This method belongs to the String class. See if you can use this same method to return the last letter of a string.

//:Test out your discovery below by returning the last letter of the String, "bologna".
var word = "bologna"

let character = word.remove(at: word.index(before: word.endIndex))

//: __Problem 2__
//:
//: Write a function called combineLastCharacters. It should take in an array of strings, collect the last character of each string and combine those characters to make a new string to return. Use the strategy you discovered in Problem 1 along with a for-in loop to write combineLastCharacters. Then try it on the nonsenseArray below.
func combineLastCharacters(_ words: [String]) -> String {
    var lastCharactersStrings = ""
    
    for wordInList in words {
        var word = wordInList
        let lastChar = word.remove(at: word.index(before: word.endIndex))
        lastCharactersStrings.append(lastChar)
    }
    
    return lastCharactersStrings
}

var nonsenseArray = ["bungalow", "buffalo", "indigo", "although", "Ontario", "albino", "%$&#!"]
combineLastCharacters(nonsenseArray)

//: __Problem 3__
//:
//: Imagine you are writing an app that keeps track of what you spend during the week. Prices of items purchased are entered into a "price" textfield. The "price" field should only allow numbers, no letters.

//: __3a.__ Write a signature for a function that takes in a String and returns a Bool

//: __3b.__ Write a for-in loop that checks each character of a string to see if it is a member of the "digits" set. Use the .unicodeScalars property to access all the characters in a string. Hint: the method longCharacterIsMember may come in handy.

let digits = CharacterSet.decimalDigits

func digits(_ word: String) -> Bool {
    for character in word.unicodeScalars {
        if !digits.contains(UnicodeScalar(character.value)!) {
            return false
        }
    }
    return true
}
//: __Problem 4__
//:
//: Write a function that takes in an array of dirtyWord strings, removes all of the four-letter words, and returns a clean array.
let dirtyWordsArray = ["phooey", "darn", "drat", "blurgh", "jupiters", "argh", "fudge"]

func cleanWords(words: [String]) -> [String] {
    var cleanWords = [String]()
    
    for word in words {
        if word.count != 4 {
            cleanWords.append(word)
        }
    }
    
    return cleanWords
}

cleanWords(words: dirtyWordsArray)

//: __Problem 5__
//:
//: Write a method, filterByDirector, that belongs to the MovieArchive class.  This method should take in a dictionary of movie titles and a string representing the name of a director and return an array of movies created by that director. You can use the movie dictionary below. To test your method, instantiate an instance of the MovieArchive class and call filterByDirector from that instance.

var movies:Dictionary<String,String> = [ "Boyhood":"Richard Linklater","Inception":"Christopher Nolan", "The Hurt Locker":"Kathryn Bigelow", "Selma":"Ava Du Vernay", "Interstellar":"Christopher Nolan"]

class MovieArchive {
    func filterByDirector(_ director: String, movies: [String: String]) -> [String] {
        var filteredMovies = [String]()
        
        for (movieName, directorName) in movies {
            if directorName == director {
                filteredMovies.append(movieName)
            }
        }
        
        return filteredMovies
    }
}

let movieArchive = MovieArchive()
movieArchive.filterByDirector("Christopher Nolan", movies: movies)

