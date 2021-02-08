import UIKit
import Foundation

/**
 1. Write a function that accepts a string and returns the same string with a given character removed.
 
 Example:
 Input: "california"
 Character: "a"
 Output: "cliforni"
*/

func one(input:String, char: Character) -> String {
    guard !input.isEmpty else { return ""}
    var result: String = ""
    
    for i in input {
        if i != char {
            result.append(i)
        }
    }
    return result
}
one(input: "california", char: "a")

/**
 2. Write a function that accepts a string as its input, and returns the same string with duplicate letters removed.
 
 Example:
 Input: "berries"
 Output: "beris"
*/

func two(input:String) -> String {
    guard !input.isEmpty else { return ""}
    var result: String = ""
    
    for character in input {
        if !result.contains(character) {
            result.append(character)
        }
    }
    return result
}
two(input: "berries")

/**
 3. Write a function that accepts a string as its input, and returns the same string reversed.
 
 Example:
 Input: "apple"
 Output: "elppa"
*/



/**
 4. Return a string that has been rotated to the right by N characters.
 
 Example:
 Input: "swift"
 Characters: 2
 Output: "iftsw"
*/
 
/**
 5. Return a string that has been rotated to the left by N characters.
 
 Example:
 Input: "books"
 Characters: 2
 Output: "ksboo"
*/

/**
 6. Write a function that accepts a string and returns true if it is a palindrome. Consider only alphanumeric characters and ignorning case.
 
 Example:
 Input: "racecar"
 Output: "true"
*/

func six(input:String) -> Bool {
    guard input.count > 1 else { return true }
    
    var left = input.startIndex
    var right = input.index(before: input.endIndex)
    
    while left < right {
        if !(input[left].isLetter || input[left].isNumber) {
            left = input.index(after: left)
            continue
        }
        
        if !(input[right].isLetter || input[right].isNumber) {
            right = input.index(before: right)
        }
        
        if input[left].lowercased() != input[right].lowercased() {
             return false
        }
        left = input.index(after: left)
        right = input.index(before: right)
    }
    return true
}

six(input: "racecar")

/**
 7. Given two strings, return true if t is an anagram of s.
 
 Example:
 Input: "fried", "fired"
 Output: "true"
*/

func seven(s: String, t: String) -> Bool {
    guard s.count == t.count else { return false }
    
    var dict1 = [Character:Int]()
    var dict2 = [Character:Int]()
    
    for char in s {
        dict1[char, default: 0] += 1
    }
    
    for char in t {
        dict2[char, default: 0] += 1
    }
    
    return dict1 == dict2
}
seven(s: "anagram", t: "nagaram")

/**
 8. Return true if all characters in a string are unique.
 
 Example:
 Input: "determine"
 Output: "false"
*/

func eight(input:String) -> Bool {
    return Set(input).count == input.count
}
eight(input: "determine")

/**
 9. Given two strings, return true if they contain the same characters.
 
 Example:
 Input: "zywac" "wcazy"
 Output: "true"
*/
func nine(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}
nine(string1: "zua", string2: "uaz")

/**
 10. Given a string, return false if it contains a number.
 
 Example:
 Input: "int3ger"
 Output: "false"
*/

/**
 11. Given two strings, return true if they are identical in length but have no more than two different letters.
 
 Example:
 Input: "Boating" "Floating"
 Output: "true"
*/

/**
 12. Given two strings, return true if one string is a rotation of the other.
 
 Example:
 Input: "abcde" "abced"
 Output: "false"
*/

/**
 13. Given two strings, return the index of the first occurence if one string is a substring of the other. Else return -1
 
 Example:
 Input: "on" "dictionary"
 Output: "5"
*/

/**
 14. Return the first non-repeating character of a given string.
 
 Example:
 Input: "aabbcdde"
 Output: "c"
*/

/**
 15. Return all unique characters from a given string.
 
 Example:
 Input: "abbcdde"
 Output: "ace"
*/

/**
 16. Given a string, return all duplicate characters.
 
 Example:
 Input: "berries"
 Output: "er"
*/

/**
 17. Given a string, return characters repeated N times.
 
 Example:
 Input: "Ballooons"
 Repeated: 3
 Output: "o"
*/

/**
 18. Given a string, find the sum and return it as an Int.
 
 Example:
 Input: "1+2+3"
 Output: 6
*/

func eighteen(input:String) -> Int {
    guard !input.isEmpty else { return 0 }
    var output = 0
    
    for char in input {
        if let number = Int(String(char)) {
            output += number
        }
    }
    return output
}
eighteen(input: "2+4+8")

/**
 19. Return the number of times a specific character appears in a string.
 
 Example:
 Input: "character"
 Character: "a"
 Output: 2
*/

func nineteen(input: String, char: Character) -> Int {
    guard !input.isEmpty else { return 0}
    var result = 0
    
    for i in input {
        if i == char {
            result += 1
        }
    }
    return result
}
nineteen(input: "character", char: "a")


/**
 20. Write a function that accepts a string of words with a similar prefix, separated by spaces and return the longest substring that prefixes all words.
 
 Example:
 Input: "devalue decrease decode"
 Output: "de"
*/

func twenty(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    guard let first = parts.first else { return "" }

    var currentPrefix = ""
    var bestPrefix = ""

    for letter in first {
        currentPrefix.append(letter)

        for word in parts {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }

        bestPrefix = currentPrefix
    }

    return bestPrefix
}
twenty(input: "destroy decode devalue")

/**
 21. Write a function that returns all possible permutations of a given input string.
 
 Example:
 Input: "abc"
 Output: “abc”, “acb”, “bac”, “bca”, “cab”, “cba”.”
*/

//func twentyOne(string: String, current: String = "") {
//    guard string.count > 0 else { return }
//    let length = string.count
//    let strArray = Array(string)
//
//
//    for i in 0 ..< length {
//        let left = String(strArray[0 ..< i])
//        let right = String(strArray[i+1 ..< length])
//
//        twentyOne(string: left + right, current: current + String(strArray[i]))
//    }
//
//}

/**
 22. Given an array of names, return a single string from that array with a comma between each name.
 
 Example:
 Input: ["Ben", "Mary", "Summer", "Joe"]
 Output: "Ben, Mary, Summer, Joe"
*/

func twentyTwo(input:[String]) -> String {
    let joined = input.joined(separator: ", ")
    return joined
}
twentyTwo(input: ["James", "Emma", "Marilyn"])

/**
 23. Write a function that accepts and returns a string with single spaces between each letter.
 
 Example:
 Input: "x     y        z"
 Output: "x y z"
*/

func twentyThree(input:String) -> String {
    var returnString = input
    
    while returnString.contains("  ") {
        returnString = returnString.replacingOccurrences(of: "  ", with: " ")
    }
    return returnString
}
twentyThree(input: "It's    hot       outside.")

/**
 24. Return a tuple containing the number of vowels and consonants in a given string.
 
 Example:
 Input: "Mississippi"
 Output: (4,7)
*/

func twentyFour(input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"

    var vowelCount = 0
    var consonantCount = 0

    for letter in input.lowercased() {
        if vowels.contains(letter) {
            vowelCount += 1
        } else if consonants.contains(letter) {
            consonantCount += 1
        }
    }

    return (vowelCount, consonantCount)
}
twentyFour(input: "Happy Coding Today")

/**
 25. Write a function that accepts a string and returns the most common character.
 
 Example:
 Input: "aaacbbbbrtttttz"
 Output: "t"
*/



