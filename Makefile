DST_DIR=${HOME}/bin

install: odp2jpg.sh
	mkdir -p ${DST_DIR}
	cp $< ${DST_DIR}
	chmod u+x ${DST_DIR}/$<