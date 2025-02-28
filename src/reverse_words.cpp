#include <iostream>
#include <sstream>
#include <vector>
#include <algorithm>

std::string reverseWords(const std::string& input) {
    std::istringstream iss(input);
    std::vector<std::string> words;
    std::string word;

    // Разбиваем строку на слова
    while (iss >> word) {
        words.push_back(word);
    }

    // Меняем порядок слов на обратный
    std::reverse(words.begin(), words.end());

    // Собираем слова обратно в строку
    std::ostringstream oss;
    for (size_t i = 0; i < words.size(); ++i) {
        oss << words[i];
        if (i != words.size() - 1) {
            oss << " ";
        }
    }

    return oss.str();
}

int main() {
    std::string text;
    std::cout << "Введите строку: ";
    std::getline(std::cin, text);

    std::string reversed = reverseWords(text);
    std::cout << "Обратный порядок слов: " << reversed << std::endl;

    return 0;
}
