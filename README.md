OSECPU-Lisp  ver 0.0.1
======================
このプロジェクトではOSECPU-VM上で動くLispインタプリタを開発する.

配布物について
--------------
このリポジトリには次のファイルが含まれている: `.gitignore`, `Makefile`, `oseclisp.ask`, `test_expect.txt`, `test_in.l`, `tutorial.md`.
`oseclisp.ask`がインタプリタの本体, `test_in.l`は自動テストの入力ファイル, `test_expect.txt`はそれに対して期待される出力である.
この処理系への導入は`tutorial.md`を参照せよ.
このリポジトリに含まれるすべてのファイルに3-clause BSD licenseを適用する.

このインタプリタはOSECPU-VMのバージョン0.76で開発・テストされている.
それ以降のバージョンでも動作するように思われる.

ビルド
------
- `osectols`にパスを通し, この配布物と同じディレクトリにOSECPU-VMの配布物より`osecpu_as[km].h`および`syslib.ose`をコピーする.
- コマンド`make`でデバッグモードでビルド, `make release`ではリリースモードでビルドが行われる.
- コマンド`make test`で簡単な自動テストを行う.  出力に`make`以外からの出力がなければ正常である.

MS-Windowsユーザは, OSECPU-VMのディレクトリに`oseclisp.ask`を置き`amake oseclisp`でビルドしてもよい.

使用方法
--------
コマンド`osecpu oseclisp.ose`でインタプリタは起動し, ユーザからの入力を待つ.
プロンプトはない.
トップレベルの入力待ちの状態で文字列`quit`に続けて改行を入力するとインタプリタは終了する.
それ以外の入力はLispのS式として評価され, 評価結果が出力される.

その他
------
本プロジェクトに関して, K氏はOSECPU-VMというコンパクトなプログラミング環境を開発され, また私の問い合わせには迅速に回答をくださった.
ここに深く感謝の意を表します.

そこに物理環境がある限り, コンピュータを構成するのはプログラマの使命である.  
そこにコンピュータがある限り, Lispを実装するのもまた, プログラマの使命である.


Copyright (c) 2013, yuta-aoyagi  
Allrights reserved.
