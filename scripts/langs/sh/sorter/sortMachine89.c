#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <dirent.h>
#include <time.h>
#include <unistd.h>

void createDirectory(const char *path) {
    if (mkdir(path, 0777) == -1) {
        perror("mkdir");
        exit(EXIT_FAILURE);
    }
}

void moveFile(const char *source, const char *destination) {
    if (rename(source, destination) == -1) {
        perror("rename");
        exit(EXIT_FAILURE);
    }
}

void organizeFiles(const char *dirName) {
    char currentDir[1024];
    if (getcwd(currentDir, sizeof(currentDir)) == NULL) {
        perror("getcwd");
        exit(EXIT_FAILURE);
    }

    char today[7];
    time_t t = time(NULL);
    struct tm *tm = localtime(&t);
    strftime(today, sizeof(today), "%y%m%d", tm);

    char newDirName[1024];
    snprintf(newDirName, sizeof(newDirName), "%s/%s", dirName, today);
    createDirectory(newDirName);

    DIR *dir = opendir(currentDir);
    if (dir == NULL) {
        perror("opendir");
        exit(EXIT_FAILURE);
    }

    struct dirent *entry;
    struct stat fileStat;
    char filePath[1024];
    while ((entry = readdir(dir)) != NULL) {
        if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
            continue;

        snprintf(filePath, sizeof(filePath), "%s/%s", currentDir, entry->d_name);
        if (stat(filePath, &fileStat) == -1) {
            perror("stat");
            exit(EXIT_FAILURE);
        }

        if ((fileStat.st_mode & S_IFMT) == S_IFREG) {
            const char *suffix = strrchr(entry->d_name, '.');
            if (suffix != NULL) {
                char newDirPath[1024];
                snprintf(newDirPath, sizeof(newDirPath), "%s/%s/%s", dirName, today, suffix + 1);
                createDirectory(newDirPath);

                char newFilePath[1024];
                snprintf(newFilePath, sizeof(newFilePath), "%s/%s/%s", dirName, today, entry->d_name);
                moveFile(filePath, newFilePath);
            }
        }
    }

    closedir(dir);
}

int main() {
    char dirName[1024];
    if (getcwd(dirName, sizeof(dirName)) == NULL) {
        perror("getcwd");
        return EXIT_FAILURE;
    }

    organizeFiles(dirName);

    /* Display new directory structure */
    char treeCommand[1024];
    snprintf(treeCommand, sizeof(treeCommand), "tree %s", dirName);
    system(treeCommand);

    return EXIT_SUCCESS;
}