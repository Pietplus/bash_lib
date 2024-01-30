#include <iostream>
#include <fstream>
#include <string>

int main() {
    // Read the JavaScript code from the Python file
    std::ifstream pythonFile("hello.py");
    if (pythonFile.is_open()) {
        std::string pythonCode((std::istreambuf_iterator<char>(pythonFile)),
                               (std::istreambuf_iterator<char>()));
        // Write the JavaScript code as C++ code
        std::ofstream cppFile("hello.cpp");
        cppFile << "#include <iostream>\n\n";
        cppFile << "int main() {\n";
        cppFile << pythonCode;
        cppFile << "\nreturn 0;\n}";
        cppFile.close();
    } else {
        std::cerr << "Failed to open Python file." << std::endl;
        return 1;
    }

    return 0;
}
