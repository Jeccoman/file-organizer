# Advanced File Organizer

## Project Overview

File Organizer to help users on managing, organize, and maintain their files. This project provides a suite of tools for file organization, backup management, file searching, storage reporting, and long-term file compression.

## Features

1. **File Organization**: Automatically categorize and move files based on their extensions into predefined directories.
2. **Backup Creation and Management**: Create backups of your organized files and manage the number of backups kept.
3. **Backup Restoration**: Easily restore your files from a previous backup.
4. **File Search**: Quickly find files within the organized directory structure.
5. **Storage Reporting**: Generate detailed reports on storage usage and file types.
6. **Long-term File Compression**: Automatically compress older files to save storage space.
7. **Logging**: Keep track of all operations performed by the system.

## Installation

1. Clone or download the project files to your local machine.
2. Ensure all script files are in the same directory.
3. Make all scripts executable by running:
   ```
   chmod +x *.sh
   ```

## Usage

1. Run the main script:
   ```
   ./main.sh
   ```
2. You will be presented with a menu of options:
   - Organize files in a directory
   - Create a backup
   - Restore from backup
   - Search files
   - Generate storage report
   - Compress old files
   - View logs
   - Exit

3. Follow the on-screen prompts for each option.

## Configuration

You can customize the behavior of the File Organizer by editing the `config.sh` file:

- `BASE_DIR`: Set the base directory for file organization
- `LOG_FILE`: Specify the location of the log file
- `MAX_BACKUPS`: Set the maximum number of backups to keep
- `FILE_TYPES`: Define file extensions and their corresponding directories



## Usage

1. Regularly organize your files to maintain an efficient file structure.
2. Create backups before performing any major file operations.
3. Generate storage reports periodically to keep track of your disk usage.
4. Use the file compression feature for files that are accessed infrequently to save space.

