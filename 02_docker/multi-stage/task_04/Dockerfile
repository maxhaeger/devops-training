# versuche nach Möglichkeit immer ein Version Pinning durchzuführen anstelle das :latest Image zu nehmen, hier würde ich openjdk:11 vorschlagen
FROM openjdk:latest as builder
WORKDIR /app
COPY ./hello.java .
# das hier entfällt, siehe weiter unten
COPY ./Manifest.txt . 
RUN javac hello.java
# den Schritt würde ich weglassen der Einfachheit halber
RUN jar cvfm app.jar Manifest.txt *.class 

FROM openjdk:latest
WORKDIR /app

# hier würde ich gezielt die Datei kopieren anstelle des komlpetten Directories
COPY --from=builder /app .  
 # diese Befehl gemäß des wegfallenden jars entsprechend anpassen
CMD ["java", "-jar", "app.jar"]