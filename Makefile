# Имя компилятора
CXX = g++

# Флаги компиляции
CXXFLAGS = -Wall -Wextra -std=c++11

# Имя исполняемого файла
TARGET = reverse_words

# Исходные файлы
SRCS = reverse_words.cpp

# Цель по умолчанию
all: $(TARGET)

# Как собрать исполняемый файл
$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) $(SRCS) -o $(TARGET)

# Очистка скомпилированных файлов
clean:
	rm -f $(TARGET)
