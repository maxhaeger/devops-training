import os

file_name = "sample.txt"
content = "Hello! This is the text content read directly from the file."

# Create and write to the file
with open(file_name, "w", encoding="utf-8") as file:
    file.write(content)

# Read and print the file content
if os.path.exists(file_name):
    with open(file_name, "r", encoding="utf-8") as file:
        file_content = file.read()
        print("=== FILE CONTENT ===")
        print(file_content)
        print("====================")