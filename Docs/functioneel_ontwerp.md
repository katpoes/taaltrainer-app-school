#  Functioneel Ontwerp – Taaltrainer App
## 1. Inleiding

Dit document beschrijft de functionaliteit van de taaltrainer applicatie.
Het functioneel ontwerp legt uit wat de applicatie moet doen en wat de gebruiker kan zien en gebruiken.

De taaltrainer app helpt gebruikers om woorden in een andere taal te oefenen. De gebruiker kan lessen volgen, antwoorden invoeren en feedback krijgen op zijn antwoorden.

Dit document beschrijft de belangrijkste schermen en functies van de applicatie.
##
### 2. Doel van de applicatie

Het doel van de applicatie is om gebruikers te helpen nieuwe woorden te leren in een andere taal.

De gebruiker kan:

* een account maken

* inloggen

* lessen volgen

* woorden oefenen

* feedback krijgen op antwoorden

* een score zien
##
### 3. Schermen van de applicatie
#### 3.1 Home scherm
Wat de gebruiker ziet

Op de homepagina ziet de gebruiker:

* de naam van de applicatie

* een korte uitleg over de taaltrainer

* een knop om in te loggen

* een knop om een account te maken

Wat de app laat zien

De applicatie toont:

* een welkomstbericht

* navigatie naar het login scherm

* navigatie naar het registratie scherm
##
#### 3.2 Login scherm
Wat de gebruiker ziet

De gebruiker ziet:

* een invoerveld voor de gebruikersnaam

* een invoerveld voor het wachtwoord

* een knop om in te loggen

* een link naar de registratiepagina

Wat de app laat zien

De applicatie:

* controleert of de gegevens correct zijn

* geeft een foutmelding als de gegevens niet kloppen

* stuurt de gebruiker naar het dashboard bij succesvol inloggen
##
#### 3.3 Registratie scherm
Wat de gebruiker ziet

De gebruiker ziet:

* een invoerveld voor gebruikersnaam

* een invoerveld voor wachtwoord

* een invoerveld om het wachtwoord te herhalen

* een knop om een account aan te maken

Wat de app laat zien

De applicatie:

* controleert of alle velden correct zijn ingevuld

* geeft een foutmelding bij ongeldige invoer

* maakt een nieuw account aan

* laat een bevestiging zien wanneer de registratie succesvol is
##
#### 3.4 Dashboard
Wat de gebruiker ziet

* Na het inloggen komt de gebruiker op het dashboard. Hier ziet de gebruiker:

* een welkomstbericht met de gebruikersnaam

* een overzicht van beschikbare lessen

* een knop om een les te starten

* eventueel de voortgang of scores

Wat de app laat zien

De applicatie toont:

* een lijst met lessen

* de voortgang van de gebruiker

* navigatie naar het les scherm
##
#### 3.5 Les scherm
Wat de gebruiker ziet

* Tijdens een les ziet de gebruiker:

* een woord dat vertaald moet worden

* een invoerveld om een antwoord in te voeren

* een knop om het antwoord te controleren

* feedback op het antwoord

* de huidige score

Wat de app laat zien

De applicatie:

* toont een woord dat geoefend moet worden

* controleert het antwoord van de gebruiker

* laat zien of het antwoord goed of fout is

* toont de juiste vertaling

* verhoogt de score bij een goed antwoord

* gaat door naar de volgende vraag

#
### 4. Belangrijkste functies
#### 4.1 Woorden tonen

De applicatie toont woorden die de gebruiker moet leren.

De gebruiker ziet:

* een woord in de ene taal

* een invoerveld om de vertaling in te voeren
##
#### 4.2 Antwoord invoeren

De gebruiker kan een antwoord invoeren in een tekstveld.

De applicatie:

* ontvangt het antwoord van de gebruiker

* vergelijkt het met het juiste antwoord
##
#### 4.3 Feedback geven

Na het controleren van het antwoord krijgt de gebruiker feedback.

De gebruiker ziet:

* een melding wanneer het antwoord goed is

* een melding wanneer het antwoord fout is

* de juiste vertaling van het woord
##
#### 4.4 Score bijhouden

Tijdens een les houdt de applicatie bij hoeveel antwoorden goed zijn.

De gebruiker ziet:

* het aantal goede antwoorden

* het totaal aantal vragen

* een eindscore aan het einde van de les
#
### 5. Navigatie

De gebruiker kan tussen verschillende schermen navigeren:

* Home → Login

* Home → Registreren

* Login → Dashboard

* Dashboard → Les

* Les → Dashboard