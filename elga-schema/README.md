> Das CDA Schema, auch CDA XSD genannt, definiert die Strukturen für alle HL7 Austria CDA-Dokumente. Das CDA Schema ist für alle speziellen CDA Leitfäden der HL7 Austria dasselbe und kann zum Validieren der groben Struktur des CDAs verwendet werden.

# Anwendung
- Falls in einem Werkzeug ein "Masterfile" benötigt wird ist als dieses "CDA_extELGA.xsd" auszuwählen
  - Diese Datei ladet alle anderen Schemen im selben Namespace per "xs:include" und fremde Namespaces mit "xs:import" hinzu
- Falls zum Validieren das freie Notepad++ Plugin "XML Tools" verwendet wird, ist unter "Plugins > XML Tools > Validate Now" als xsd der Pfad zum "CDA_extELGA.xsd" und als Namespace "urn:hl7-org:v3" einzugeben
- Falls für das Generieren von Klassen das xsd.exe aus dem Microsoft SDK verwendet wird, sollte der Befehl wie folgt lauten
  - xsd.exe .\CDA_extELGA.xsd .\SDTC.xsd .\extHL7at\hl7v3_extHL7at.xsd .\extIPS\hl7v3_extIPS.xsd .\extPHARM\COCT_MT230100UV_extPHARM.xsd /c
  - Dieser lange Befehl kommt zustande, weil das xsd.exe-Tool nicht das xs:import richtig behandelt und man somit jedes Namespace welches verwendet wird extra angegeben muss