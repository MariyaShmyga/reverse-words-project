# Имя компилятора
CXX = g++

# Флаги компиляции
CXXFLAGS = -Wall -Wextra -std=c++11

# Имя исполняемого файла
TARGET = reverse_words

# Исходные файлы
SRCS = reverse_words.cpp
OBJ = $(SRC:.cpp=.o)

# Цель по умолчанию
all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) -o $@ $^

# Как собрать исполняемый файл
#$(TARGET): $(SRCS)
#	$(CXX) $(CXXFLAGS) $(SRCS) -o $(TARGET)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Очистка скомпилированных файлов
clean:
	rm -f $(TARGET) $(OBJ)
