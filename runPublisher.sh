#bin/bash
unset DISPLAY
# java -Djava.awt.headless=true -jar ./publisher_1.1.89.jar -ig HL7-AT-FHIR-Core-R4/ig.ini -tx ''
java -agentlib:jdwp=transport=dt_socket,address=*:5009,server=y,suspend=n -Xmx12g -Djava.awt.headless=true -jar ../../publisher_1.2.14.jar -no-sushi -ig ig.ini