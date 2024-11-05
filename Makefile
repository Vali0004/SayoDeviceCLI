all : sayo_cli.exe

LDFLAGS:=-O2 -DRELEASE -DNDEBUG -I./inc -I./jsoncpp/include -I./hidapi/hidapi -static

CC:=C:/MinGW/bin/g++

sayo_cli.exe : src/main.cpp src/o2_protocol.cpp src/http.cpp src/tools.cpp jsoncpp/src/lib_json/json_reader.cpp jsoncpp/src/lib_json/json_writer.cpp jsoncpp/src/lib_json/json_value.cpp hidapi/windows/hid.c
	$(CC) -g -o $@ $^  $(LDFLAGS) -lws2_32 -lwininet -lsetupapi -lpthread

sayo_cli : src/main.cpp src/o2_protocol.cpp src/http.cpp src/tools.cpp jsoncpp/src/lib_json/json_reader.cpp jsoncpp/src/lib_json/json_writer.cpp jsoncpp/src/lib_json/json_value.cpp hidapi/linux/hid.c
	$(CC) -g -o $@ $^  $(LDFLAGS) -lhidapi-hidraw -lpthread

clean : 
	rm -rf *.o *~ sayo_cli sayo_cli.exe

cleanwin : 
	del sayo_cli.exe
