include Makefile.def
include Makefile.conf

SRC = ${EMPIRICALEEDIR}
WRONG = call EEE_init_CME_parameters

install:
	@(if [ -f EEE_ModMain.f90 ]; then                         \
		mv ${SRC}/EEE_ModMain.f90 ${SRC}/EEE_ModMain.BAK; \
		mv EEE_ModMain.f90 ${SRC}/. ;                     \
		perl -i -pe \
		's/${WRONG}/! ${WRONG}/' ${DIR}/*/*/*/*.f90;      \
	fi);

allclean:
	@(if [ ! -f EEE_ModMain.f90 ]; then                       \
		mv ${SRC}/EEE_ModMain.f90 .;                      \
		mv ${SRC}/EEE_ModMain.BAK ${SRC}/EEE_ModMain.f90 ;\
		perl -i -pe \
		's/! ${WRONG}/${WRONG}/' ${DIR}/*/*/*/*.f90;      \
	fi);
