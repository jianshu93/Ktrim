bin/ktrim: src/ktrim.cpp src/common.h src/util.h src/param_handler.h src/pe_handler.h src/se_handler.h
	@echo Build Ktrim
	@cd src; g++ -std=c++11 -fopenmp -O3 -o ../bin/ktrim ktrim.cpp; cd ..

install: bin/ktrim	# requires root
	@echo Install Ktrim for all users
	@cp bin/ktrim /usr/local/bin

clean:
	rm -f bin/ktrim

