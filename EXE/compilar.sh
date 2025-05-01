cd ../FONTS/subgrup-prop43.3/
jar="build/libs/gradlepoc-1.0-SNAPSHOT.jar"
chmod +x gradlew
./gradlew build
cp $jar ../../EXE/projecte.jar
