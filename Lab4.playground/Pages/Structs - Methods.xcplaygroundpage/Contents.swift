//: [Previous](@previous)
import Foundation
/*:
 ## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description(){
        print("\(self.title) was writen by \(self.author), it has \(self.pages) pages and will cost you $\(self.price). I hope you enjoy it!")
    }
}

var book1 = Book(title: "Harry Poster", author: "JK Rouling", pages: 1000, price: 59.99)
print(book1.description())
/*:
 A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
 */
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like() {
        likes += 1
    }
}

var post1 = Post(message: "First post!", likes: 0, numberOfComments: 0)
print(post1.likes)
post1.like()
print(post1.likes)

//: [Next](@next)
