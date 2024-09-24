
func checkParentheses(_ string: String) -> Bool {
//    var stack: Stack = [Character]
    var stack = Stack<Character>()
    
    for character in string {
        if character == "(" {
            stack.push(character)
        } else if character == ")" {
            if stack.isEmpty {
                print("False")
                return false
            } else {
                stack.pop()
            }
        }
    }
    return stack.isEmpty
}

checkParentheses("))) hello wor(")
