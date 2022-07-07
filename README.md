# odp2jpg.sh

Convert each slide in [LibreOffice's Impress](https://www.libreoffice.org/discover/impress/) into a JPEG file.

## Usage

~~~shell
~/bin/odp2jpg.sh ODP_FILE_PATH OUTPUT_DIR_PATH
~~~

### Example

Run the following shell.
First, `~/wk/test.pdf` will be created.
Finally, `~/wk/slides/slide%d.jpg` will be created for the number of slides.

~~~shell
~/bin/odp2jpg.sh ~/wk/test.odp ~/wk/slides
~~~

## How to install

Copy `odb2jpg.sh` to ~bin by make command.

Run the following shell.

~~~shell
$ make install
cp odp2jpg.sh ~/bin
chmod u+x ~/bin/odp2jpg.sh
~~~

## References

- [Convert Impress ODP Presentation to several JPG images from command line](https://stackoverflow.com/questions/33096772/convert-impress-odp-presentation-to-several-jpg-images-from-command-line)
-