# odp2jpg.sh

[LibreOffice の Impress](https://www.libreoffice.org/discover/impress/)の各スライドを1枚づつJPEGファイルに変換します。

## 使い方

~~~shell
~/bin/odp2jpg.sh ODP_FILE_PATH OUTPUT_DIR_PATH
~~~

### 例

以下を実行すると、`~/wk/test.pdf`が作成され、
最後にスライド枚数分の`~/wk/slides/slide%d.jpg`が作成されます。

~~~shell
~/bin/odp2jpg.sh ~/wk/test.odp ~/wk/slides
~~~

## インストール方法

`make`コマンドにより、`~/bin`に`odp2jpg.sh`をコピーして使用します。

~~~shell
$ make install
cp odp2jpg.sh ~/bin
chmod u+x ~/bin/odp2jpg.sh
~~~

## 参考

- [Convert Impress ODP Presentation to several JPG images from command line](https://stackoverflow.com/questions/33096772/convert-impress-odp-presentation-to-several-jpg-images-from-command-line)