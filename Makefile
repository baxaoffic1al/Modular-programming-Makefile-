OBJ = main.o hello.o
TARGET = out
CC = gcc


all : $(TARGET)

$(TARGET) : $(OBJ)
	$(CC) -o $@ $^

.c.o : 
	$(CC) -c $^

clean : 
	rm -f *.o

fclean : clean
	rm -f $(TARGET)

re : fclean all