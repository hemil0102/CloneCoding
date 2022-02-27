
class Enemy {
    var health = 100
    var attackStrength = 10
    
    func move() {
        print("walk forwards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
}
