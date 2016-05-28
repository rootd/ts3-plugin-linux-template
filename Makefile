#
# Makefile to build a TS3 plugin for linux
#

CC = gcc
CFLAGS = -c -fPIC -I./include
LD = $(CC)
LDFLAGS = -shared

TARGET = tsplugin
OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))

all: clean $(TARGET)

$(TARGET): $(OBJECTS)
	$(LD) -o ./out/lib$(TARGET).so $^ $(LDFLAGS)
	#cp ./out/lib$(TARGET).so /home/user/Downloads/TeamSpeak3-Client-linux_amd64/plugins

%.o: %.c
	$(CC) $^ $(CFLAGS)

clean:
	rm -rf *.o
