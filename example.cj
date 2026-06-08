package example

import std.env.getStdIn
import std.convert.*

func getLine(): String {
    getStdIn().readln().getOrDefault({=> ""})
}

func getList(): Array<Int64> {
    getLine().split(" ").map({s => Int64.parse(s)})
}

// https://oj.huaweipen.com/problem/001
main(): Int64 {
    let list = getList()
    let c = list[0] + list[1]
    println(c)
    return 0
}
