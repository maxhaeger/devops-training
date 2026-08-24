import os
import time

file_name = "sample.txt"
content = "Hello! This is the text content read directly from the file."

with open(file_name, "w", encoding="utf-8") as file:
    file.write(content)

if os.path.exists(file_name):
    with open(file_name, "r", encoding="utf-8") as file:
        file_content = file.read()
        print("=== FILE CONTENT ===", flush=True)
        print(file_content, flush=True)
        print("====================", flush=True)

print("Script completed. Application stays alive...", flush=True)

counter = 1
while counter <=5 :
    time.sleep(5)
    print(f"Container is still alive... (heartbeat #{counter})", flush=True)
    counter += 1
print("Completed 5 heartbeats. Exiting application...", flush=True)