//
//  ContentView.swift
//  Timer
//
//  Created by kidairinboku on 2024/06/27.
//

//swiftUIのインポート。Swiftという言語上でアップル製品用のUIを扱えるようにするためのコンポーネント
//swiftでUIを定義できて、xcodeでリアルタイムのビューアーを表示しながら作業できるのはこれのおかげ
import SwiftUI


//これはViewというプロトコルに準拠しているContentViewという構造体を定義している部分です。
//公式ドキュメントは下記です。
/////https://developer.apple.com/documentation/swiftui/view
//Viewは、SwiftUIにおいて画面表示を行うときの書き方のルールです。
//「ContentViewという構造(struct)を定義します。これはViewというプロトコル(ルール、形)に従ったものとなります
//ということがこの一行にかいてあります。
//プロトコルには関数やプロパティが含まれますが、実装自体は入っていません。
//大元のViewプロトコルには、bodyを用意してね　というルールがあります。
struct ContentView: View {
    
    //bodyという変数を定義しています。
    //そしてbodyはViewプロトコルに準拠したものであることを some Viewで宣言しています。
    //XCODEで試しに空っぽのテストプロジェクトを作り、ハローワールドが表示される簡単なSwiftUIアプリを作成できます。
    //試しにbody の名前を変えてみると、Viewプロトコルに準拠しない形になるのでコンパイルエラーが発生します。
    //some Viewを消して見ても、何のプロトコルに準拠しているかを宣言していないのでコンパイルエラーになります。
    //https://developer.apple.com/documentation/swiftui/view/body-swift.associatedtype
    var body: some View {
        //VStakはSwiftUIに含まれるレイアウトコンテナです。
        //どのように中の要素を並べるかの処理が入っています。
        //中の要素を縦方向位にならべます。 HStackは水平に、ZStackはZ方向に前後に重ねます。
        //https://developer.apple.com/documentation/swiftui/building-layouts-with-stack-views
        //今回は、縦方向にImageとTextの要素を並べています。
        //また、Stack同士の入れ子が可能なため、柔軟なレイアウト作成も可能です。
        VStack {
            //画像を描写する
            //https://developer.apple.com/documentation/swiftui/image
            //heart.fillはAppleが用意しているアイコンのひとつです。
            //一覧は、Appleが用意している、SFSimbolsをダウンロードインストールして
            //https://developer.apple.com/sf-symbols/
            //確認すればどの名前で何を指定するかわかります。
            Image(systemName: "pencil.and.outline")
                //イメージの大きさを指定 https://developer.apple.com/documentation/swiftui/fitting-images-into-available-space
                .imageScale(.large)
                //foregeGroundStyleで色を設定しています。
                //.tintを指定するとシステムカラーになります。
                //アプリにシステムカラーを変えられるテーマ変更オプションなどをつけたときに自動的に変わります。
                .foregroundStyle(.tint)
            //テキストを表示します。
            //https://developer.apple.com/documentation/swiftui/text
            //上記デベロッパページにて様々なオプションを確認できます。
            //.font以降はデベロッパページに載っている例を使用しています。
            Text("Hello, world!").font(.system(size: 50, weight: .light, design: .serif))
        }
        //オブジェクト.paddingでそのオブジェクトの周りに余白を追加します
        //この場合、VStack{}.pading()となっているため、VStackの外側に余白があります。
        //()に何も数字を入れないと16ptの余白です。
        //VStack本体の周りの余白を決めており、中の子には余白は生まれません。
        //数字を100など大きくすると、VStackと周りとの余白がテキストに干渉し、Hello, world!が改行されたりします。
//        +---------------------+
//        |   Padding (16pt)    |
//        |  +--------------+   |
//        |  |  VStack      |   |
//        |  |  +--------+  |   |
//        |  |  | Image  |  |   |
//        |  |  | Text   |  |   |
//        |  |  +--------+  |   |
//        |  |              |   |
//        |  +--------------+   |
//        |   Padding (16pt)    |
//        +---------------------+
        //https://developer.apple.com/documentation/swiftui/view/padding(_:)-6pgqq
        .padding()
    }
}
//ビューを渡すと、Xcodeにプレビュー表示してくれます
//これのおかげでシミュレートしなくてもXcodeエディタの中でリアルタイムで画面が見えています。
//リリースの時には特に消さなくてもビルドには影響しないのため、そのままでも良いそうです。
//https://developer.apple.com/documentation/SwiftUI/Preview(_:body:)
#Preview {
    //↑でつくった、Viewプロトコルに則ったContentViewです。
    ContentView()
}
