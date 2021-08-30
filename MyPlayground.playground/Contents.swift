// 変数
// データを一時的に箱に入れる

var name = "syo"
var number = 11

name = "takashi"

print(name)

// 定数
// 上書きができない

let age = 22
let tax = 1.1

//下記のように上書きはできない
//age = 20

// データ型
// 全てのデータには型というもんが存在する

// String型（文字列）
var str : String = "これは文字列です"

// Int型（整数型）
var int : Int = 1

// Float/Double型（浮動小数点型）いわゆる小数点
var float : Float = 1.23456789
var double : Double = 1.23456789

//bool型（真偽値） true of false
var bool: Bool = false

// Swiftには型推論というものがある
// 変数や定数などの宣言時にデータを参照して自動的に型を推測してくれる はじめは慣れるために入力したほうがいい

// 演算
// +,-,*,/,%

print(1 + 1)
print(10 - 4)
print(2 * 4)
print(4 / 2)
print(10 % 3)

// ここでデータ型の理解度を深める
print(1 + 1)
print("1" + "1" + "です")

// if文（条件分岐）もし〜だったらAの処理をする
// ==　で比較する。 <, > , <= , >=
// 変数などの名前を決めるときは、わかりやすい名前をつけること。
// Swiftで変数は「キャメルケース」という命名規則を用いる
var myAgeNumber : Int = 19

if 20 <= myAgeNumber {
    print("たばこが吸えます")
}else {
    print("お母さん連れてきてねー")
}

// twitterの誕生日に風船が飛ぶシステム
var today: Int = 12 //1月2日
let birthday: Int = 1130

if today == birthday{
    print("風船びゅーん")
} else {
    print("今日は\(today)なので、誕生日ではない")//変数を出力するにはバックスラッシュ
}

// 関数
// 処理をまとめ

func callMyName(){
    print("ひろき")
    print("おーーーーい")
}
callMyName()


// 引数
func callMyName2(name: String){
    print("\(name)")
}
callMyName2(name: "引数")
callMyName2(name: "からまつ")

// プチ技
func callMyName3(_ name: String){
    print("\(name)")
}
callMyName3("たかし")
callMyName3("からまつ")
//nameを省略することができる


//戻り値,返り値
func callMyName4(name: String) -> String {
   return name + "!"
}

print(callMyName4(name: "戻り値ひろき"))
//callMyName4(name: "ひろき")


// 配列
// 変数がつながったもの
var array = ["りんご","ごりら","たるたるチキン","田んぼ"]
print(array)
print(array[0])

// for文　（ループ繰り返し処理）
for i in 1...10{
    print(i)
}

// クラスとインスタンス
// Twitterを例にする
class Twitter {
    var UserId: String!
    var date: Int!
    var content: String!
    // !は強制的に型を返す
    //プロパティー
    
    func tweet(){
        print("UserID:\(UserId!)")
        print("日付:\(date!)")
        print("投稿内容:\(content!)")
    }
    //メソッド
}

let tweetDate1 = Twitter()
tweetDate1.UserId = "@syo24"
tweetDate1.date = 12
tweetDate1.content = "あけよめことよろ！"
tweetDate1.tweet()

let tweetDate2 = Twitter()
tweetDate2.UserId = "@wawaa"
tweetDate2.date = 1130
tweetDate2.content = "ぷえーーん"
tweetDate2.tweet()


//--------------
//class Animal {
//    var age = 2
//    let kind = "犬"
//    func Bite () {
//        print("\(age)歳の\(kind)が噛み付く")
//    }
//}
//
//var dog = Animal()
//print(dog.age)
//print(dog.kind)
//dog.Bite()


// イニシャライズ

//init(プロパティ１: 型,プロパティ2: 型){
//    self.プロパティ1 = プロパティ１
//}

class Animal {
    var age : Int
    let kind : String
    func Bite() {
        print("\(age)歳の\(kind)が噛み付く")
    }
    
    init(age: Int, kind: String) {
        self.age = age
        self.kind = kind
    }
}

//メソッド
var cat = Animal(age: 3, kind: "猫")
cat.Bite()

