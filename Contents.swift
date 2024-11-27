import Foundation

let add: (Int, Int) -> Int // add variable's data type is closure
= { (lhs: Int, rhs: Int) -> Int in // ve assign to a valid function (type is closure)
    lhs + rhs
}

add(10, 20)


func customAdd(_ lhs: Int, _ rhs: Int, using function: (Int, Int) -> Int
) -> Int {
    function(lhs, rhs)
}

customAdd(20, 40){ (lhs: Int, rhs: Int) -> Int in
        lhs + rhs
}

customAdd(20, 40){ lhs, rhs in // This type of usage is not preferred
    lhs + rhs                  // when the code is very long and complex. Because it causes
                               // the code to run slowly.
}

customAdd(20,40){ $0 + $1 }

let ages = [20, 30, 19 ,40]
ages.sorted(by: { (lhs: Int, rhs: Int) -> Bool in
        lhs > rhs
})

ages.sorted(by: <)
ages.sorted(by: >)

func customAdd2(
    using function: (Int, Int) -> Int,
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    function(lhs, rhs)
}

customAdd2( // eğer closure üstte tanımlanırsa,
    using: { $0 + $1 + 10}, // fonksiyonu çağırırken değişken isimleri ile çağıramayız
    20,
    40
)

/*
func add10To(_ value: Int) -> Int {
    value + 10
}

func add20To(_ value: Int) -> Int {
    value + 20
}

func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
    function(value)
}

doAddition(
    on: 20
) { value in
    value + 30
}

doAddition(
    on: 20,
    using: add10To(_:)
)

doAddition(
    on: 20,
    using: add20To(_:)
)
*/

func add10To(value: Int) -> Int {
    value + 10
}

func add20To(value: Int) -> Int {
    value + 20
}

func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
    function(value)
}

doAddition(
    on: 20
) { value in
    value + 30
}

doAddition(
    on: 20,
    using: add10To(value:)
)

doAddition(
    on: 20,
    using: add20To(value:)
)


