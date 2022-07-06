# odp2jpg

[LibreOffice の Impress](https://www.libreoffice.org/discover/impress/)で作成したスライド資料を分割してJPEGファイルに変換します。

## 使い方

~~~shell
~/bin/odp2jpg.sh ODP_FILE_PATH OUTPUT_DIR_PATH
~~~

### 例

~~~shell
~/bin/odp2jpg.sh ~/wk/test.odp ~/wk/slides
~~~

## インストール方法

インストールには以下を実行します。

~~~shell
$ make install
cp odp2jpg.sh ~/bin
chmod u+x ~/bin/odp2jpg.sh
~~~

`~/bin`に`odp2jpg.sh`をコピーして使用します。

## 参考

- [Convert Impress ODP Presentation to several JPG images from command line](https://stackoverflow.com/questions/33096772/convert-impress-odp-presentation-to-several-jpg-images-from-command-line)