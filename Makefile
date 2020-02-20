output: I2Cdev.o main.o MPU6050.o
	g++ I2Cdev.o main.o MPU6050.o -o output

I2Cdev.o: I2Cdev.cpp I2Cdev.h
	g++ -c I2Cdev.cpp

main.o: main.cpp 
	g++ -c main.cpp

MPU6050.o: MPU6050.cpp MPU6050.h
	g++ -c MPU6050.cpp

clean:
	rm *.o output

