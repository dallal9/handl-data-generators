CC = g++ -Wno-deprecated -lm -Wall -pedantic -O3
LD = g++ -Wno-deprecated
TARGET = mult_generator
CFLAGS = -lm
SRC = src

all: mult_generator elly

mult_generator : mult-generation.o gasdev.o random.o random_data.o
	$(LD) $(CFLAGS) -o mult_generator mult-generation.o gasdev.o random.o random_data.o

mult-generation.o : $(SRC)/mult-generation.C
	$(CC) $(CFLAGS) -c $(SRC)/mult-generation.C
gasdev.o : $(SRC)/gasdev.C
	$(CC) $(CFLAGS) -c $(SRC)/gasdev.C
random.o : $(SRC)/random.C
	$(CC) $(CFLAGS) -c $(SRC)/random.C
random_data.o : $(SRC)/random_data.C
	$(CC) $(CFLAGS) -c $(SRC)/random_data.C

elly : ellipsoid.o
	$(LD) $(CFLAGS) -o elly ellipsoid.o
ellipsoid.o : $(SRC)/ellipsoid.C
	$(CC) $(CFLAGS) -c $(SRC)/ellipsoid.C

clean:
	@/bin/rm *.o
