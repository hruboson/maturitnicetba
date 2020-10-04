-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pát 25. zář 2020, 11:53
-- Verze serveru: 10.1.37-MariaDB
-- Verze PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `hrubos_maturitni_cetba`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `knihy`
--

CREATE TABLE `knihy` (
  `id_knihy` int(11) NOT NULL,
  `nazev_knihy` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `autor_knihy` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `pocet_stranek` int(11) DEFAULT NULL,
  `anotace` text COLLATE utf8_general_mysql500_ci,
  `prebal_knihy` varchar(100) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `id_kategorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Vypisuji data pro tabulku `knihy`
--

INSERT INTO `knihy` (`id_knihy`, `nazev_knihy`, `autor_knihy`, `pocet_stranek`, `anotace`, `prebal_knihy`, `id_kategorie`) VALUES
(1, ' Robinson Crusoe ', 'Defoe, Daniel', 173, 'Světoznámý dobrodružný román o osudech trosečníka Robinsona vystaveného životní zkoušce v těžkých podmínkách na opuštěném ostrově.\r\nPodle románu Daniela Defoa vypráví autor příběh Robinsona, který se proti vůli svých rodičů vydává na moře. Jednou, po strašné bouři, však ztroskotá. Robinson se ocitá na pevnině, aby záhy zjistil, že se jedná o opuštěný ostrov. Tady začíná zápas Robinsona o přežití. Shání potravu, zařizuje si jeskyni, sestrojí sluneční hodiny a zřizuje si kalendář. Snaží se také rozdělat oheň, vyrábí si oblek a začíná pěstovat i zvířata. Do jeho života na ostrově zasahuje příchod lidožroutů. Nakonec Robinson nachází přítele. Text je doplněn ilustracemi Z. Buriana.', 'https://www.databazeknih.cz/img/books/41_/41145/robinson-crusoe-prev-41145.jpg', 1),
(2, ' Labyrint světa a ráj srdce ', 'Komenský, Jan Amos', 25, 'Dvě významná díla Jana Amose Komenského z okruhu děl tzv. útěšných. Komenský zachytil v básnickém zpodobení sebe jakožto poutníka poznávajícího s průvodci Všudybudem a Mámením lidské hemžení ve fiktivním městě.\r\n\r\nV tomto labyrintu – světě Komenského doby – však autor nenachází životní naplnění a uchyluje se do ráje vlastního srdce. Novodobá prezentace těchto časově již vzdálených děl zachycuje jejich podivuhodně současný obzor.', 'https://www.databazeknih.cz/img/books/16_/16596/bmid_truchlivy-zxO-16596.jpg', 1),
(3, ' Jeptiška ', 'Diderot, Denis', 38, 'Děj se odehrává ve Francii v 18. století a je zasazen do prostředí klášterů. Hlavní postavou je dívka Zuzana Simoninová, kterou matka umístila na výchovu do kláštera. Zuzana píše o svém utrpení v klášteře v dopisech adresovaných markýzi Croismarovi.', 'https://www.databazeknih.cz/img/books/81_/81501/bmid_jeptiska-Pjx-81501.jpg', 1),
(4, ' Utrpení mladého Werthera ', 'Goethe, Johann Wolfgang', 175, 'Námět k románu, který založil jeho světovou slávu, Goethe načerpal při své praxi praktikanta u soudu. Kromě vlastní lásky posloužila Goethovi jako námět sebevražda jeho kolegy, mladého právníka a filozofa K. W. Jerusalema, který se zastřelil za okolností, které Goethe věrně převzal do svého románu. Utrpení mladého Werthera (1774) je kombinací románu v dopisech a románu-deníku, v němž autor dokázal geniálně skloubit díky vyprávění v první osobě bohatý vnitřní svět hlavního hrdiny, vylíčení jeho duševních stavů a autenticitu, kterou celému textu dodávají vydavatelský úvod, poznámky a závěrečná zpráva o Wertherově smrti.\r\n\r\nNa samém počátku románu popisuje Werther vzájemné vztahy zúčastněných osob a zdůrazňuje krásu přátelství a význam vzdělání pro člověka. Nečekaná láska k Lottě se postupně změní v hluboký a vášnivý, ale bohužel jednostranný cit, který nakonec narazí na hráz předsudků měšťanského světa. Wertherova subjektivita ztroskotá na objektivitě okolí, na lidech, kteří jsou jinak uzpůsobeni pro život než on. Werther sám se ztotožňuje s přírodou, trpí omezeností své doby. Jeho štěstí z lásky k Lottě se mění tváří v tvář skutečnosti v zoufalství. Dobrovolně zvolené východisko – smrt – je pro něho krokem, který ho spojí s přírodou. Jeho soupeř v lásce Albert je naopak člověk veskrze praktický, ztělesňuje měšťanský životní princip, píli, šetrnost, svědomitost, mírnost a rozumový přístup k životu. Lotta je prostá, přímá, veskrze kladná žena, která žije v souladu s okolním světem a své štěstí omezuje na oddanost rodině, i když jí Wertherova vášnivá láska odhaluje jiný svět. Pro Werthera ztělesňuje ovšem půvab ženy, jakýsi ideál ženy jedné epochy. Werther si je však velmi dobře vědom omezenosti, přehrad a hrází, které svírají „všechny činorodé a poznávací síly člověka“. Vidí, že veškerá lidská snaha směřuje jedině k tomu, aby byly ukojeny nezbytné potřeby, jež nemají jiný účel než „prodloužit naši ubohou existenci“, pokouší se najít řešení ve svém nitru a najde je ve vlastním tragickém konci.\r\n\r\nUtrpení mladého Werthera vyvolalo velký ohlas i vlnu sebevražd. Lidé se v románu poznávali a zjišťovali, že jejich vlastní prožitky nejsou banální a že osobní problémy mohou mít obecnou platnost. Mladí lidé se bouřili a toužili po velikých činech, ale nedokázali tuto touhu uplatnit a realizovat. Werther jim ukázal cestu: je možné nepodrobovat se nízkým požadavkům doby, je možné se vzepřít, vzbouřit se a před skloněním hlavy dát přednost hrdému odchodu ze života.\r\n\r\nWertherovský příběh se svému tvůrci vymkl z rukou. V druhém, přepracovaném vydání (1787) proto považoval Goethe za nutné umístit jako motto výstrahu pro senzitivní čtenáře: „Buď muž a nenásleduj mne!“\r\n', 'https://www.databazeknih.cz/img/books/24_/2497/utrpeni-mladeho-werthera-S2D-2497.jpg', 1),
(5, ' Svatý Xaverius ', 'Arbes, Jakub', 135, 'Děj tohoto romaneta se točí okolo tajemného obrazu svatého Xaveria v chrámu sv. Mikuláše na Malé Straně. Spisovatel (autobiografie) jednoho odpoledne přišel do tohoto kostela. Bylo právě požehnání a chrám byl skoro prázdný. Spisovatele zaujal obraz sv. Xaveria, a čím více jej pozoroval, tím více upoutával obraz jeho pozornost, i když ničím zvláštním nevynikal (obraz představuje umírajícího světce). Aby se mohl na obraz dívat pohodlněji, otevřel zpovědnici naproti oltáři a sedl si do ní. Poté k postrannímu oltáři, nad nímž visel obraz sv. Xaveria, přistoupil mladý muž v černém obleku. Klekl si před obraz a sklonil hlavu do dlaní. Mezitím kněz ukončil pobožnost, lidé odešli a kostelník zavřel kostel. Když spisovatel chtěl upozornit kostelníka na to, že je ještě v kostele, zvedl se neznámý muž, jenž bedlivě pozoroval obraz sv. Xaveria. Spisovatel se s mužem seznámil a oba se stali důvěrnými přáteli. Po čase se od muže (Xaver) dozvěděl, proč si tak bedlivě obraz prohlížel...', 'https://www.databazeknih.cz/img/books/55_/5561/svaty-xaverius-5561.jpg', 2),
(6, ' Oliver Twist ', 'Dickens, Charles', 133, 'Oliver Twist je román od anglického spisovatele Charlese Dickense. Kniha byla zveřejněna v roce 1838 nakladatelstvím Chapman & Hall. Román byl také mnohokrát zfilmován, například v roce 2005, kdy ho skvěle zpracoval polský režisér Roman Polanski.\r\n\r\nHlavní hrdina románu – sirotek Oliver Twist – vyrůstá v chudobinci pod vládou krutého pana Bumbla. Poté, co požádá o jídlo navíc, je ale z chudobince vyhozen a dostává se jako učedník k hrobníkovi panu Sowerberrymu. Poté však utíká do Londýna, kde se Oliver dostává do bandy mladých zločinců, kterou vede Žid Fagin a v níž vyniká Oliverův učitel Ferina Lišák a lupič Bill Sikes se svou společnicí Nancy. Při jedné z krádeží je zadržen nevinný Oliver, před rozsudkem soudce jej však zachraňuje dobrotivý starý pan Brownlow. Ten mu také dá střechu nad hlavou a Oliver krátký čas bydlí v jeho domě. Poté je ale unesen kumpány, kteří se ho nechtějí vzdát...', 'https://www.databazeknih.cz/img/books/41_/411/oliver-twist-411.jpg', 2),
(7, ' Otec Goriot ', 'Balzac, Honoré de', 199, 'Otec Goriot pracuje jako dělník v továrně na výrobu těstovin, později se z něho stane obchodník. Daří se mu a finančně je velmi dobře zajištěný. Má dvě dcery (Anastázii a Delfínu), které jsou již vdané. Jedna si vzala bankéře, druhá šlechtice a od otce dostaly velmi tučná věna. Po čase se na věno zapomnělo a manželé zakázali dcerám, aby je chodil otec navštěvovat. Otec Goriot svůj majetek prodá a odstěhuje se do penzionu, kde je levné ubytování. Manželka, kterou měl velmi rád, mu zemřela velmi brzy a veškerou svou lásku věnoval svým dcerám. Dcery jsou rozmazlené, sobecké a za otce se stydí. I přesto chodí navštěvovat otce, ale ne pro lásku, ale pro peníze. Ve stejném penzionu bydlí druhá hlavní postava románu, student Evžen Rastignac. Evžen přichází do Paříže studovat práva. Pochází z chudé rodiny. Peníze, které dostává od rodičů stačí pouze na bydlení. Postupem času Evžen poznává, že se ve společnosti bez peněz neobejde. Peníze si půjčuje u svého kamaráda Vautrina. Na jednom plese se seznamuje s Delfinou a zamiluje se do ní. Kvůli ní se Evžen stane hazardním hráčem, Goriot již nemá mnoho peněz a dcery ho proto přestanou navštěvovat...', 'https://www.databazeknih.cz/img/books/32_/3203/otec-goriot-3203.jpg', 2),
(8, ' Jak je důležité míti Filipa ', 'Wilde, Oscar', 32, 'Anglický autor irského původu uvádí svou nejúspěšnější komedii podtitulem Lehkovážná komedie pro vážné lidi. Konverzační komedie o lásce a námluvách ve vyšší anglické společnosti, která skýtá autorovi nepřebernou studnici inspirace. Autor nešetří břitkým humorem. Co replika to vtip či bonmot. Stejně vtipné jsou i situace, které přinášejí neustále nové překvapivé zvraty. To vše a nenapodobitelný suchý anglický humor láká divadelníky k novým a novým inscenacím. Na své si přijde i čtenář této hry.', 'https://www.databazeknih.cz/img/books/14_/143936/big_jak-dulezite-je-mit-filipa-jzr-143936.jpg', 2),
(9, ' Pán prstenů ', 'Tolkien, John Ronald Reuel', 133, 'Nechme se okouzlit strhujícím příběhem kouzelného prstenu, který hraje klíčovou roli v boji dobra a zla v dávné Středozemi. Nechme se pohltit Středozemí, obdivujme se zoufalému hrdinství malého hobita, který jediný se může pokusit donést temný prsten tam, kde bude možné ho zničit, strachujme se, že by snad svůj úkol splnit nedokázal a nezachránil Středozemi před přílivem tmy, která by její obyvatele uvrhla do otroctví a beznaděje. Nechme se okouzlit – Pán prstenů nám tu možnost dává, nezávisle na tom, jestli jsme seriózní dospělci nebo dychtivé a naivní děti.', 'https://www.databazeknih.cz/img/books/9_/2/big_pan-prstenu-spolecenstvo-prstenu-7Bu-2.jpg', 3),
(10, ' Cizinec ', 'Camus, Albert', 148, 'Hlavním hrdinou existenciálního románu Alberta Camuse je úředník Mersault, Francouz žijící v Alžíru. Dozvídá se, že mu v několik kilometrů vzdáleném útulku zemřela matka, a jede jí na pohřeb. Protože ji dlouho neviděl a navzájem si už neměli co říct, nijak ho její smrt nezasáhla. Na pohřbu neplakal, dokonce ani neznal její věk a hned druhý den šel se svou milenkou Marií do kina na komedii, jako by se nic nestalo. Poté se setkává s Raymondem, kterého opustila milenka a on se jí chce pomstít...\r\nVe druhé části knihy Mersault uvažuje o životě a jeho smyslu, potýká se s vnitřní prázdnotou. Odmítá se obrátit k Bohu, přestože jej k tomu neustále přesvědčuje kaplan.', 'https://www.databazeknih.cz/img/books/57_/5749/bmid_cizinec-qsA-5749.jpg', 3),
(11, ' Hlava XXII ', 'Heller, Joseph', 159, 'Hellerův nejznámější a nejlepší román, autor vychází z vlastních zkušeností – román je svým způsobem absurdní, ale realistický. Hlavní postavou je poručík letectva Yossarian, který je trochu klaun a trochu blázen (svým způsobem obdoba Haškova Švejka). Dílo nemá jednotnou koncepci, jedná se prostě o vylíčení mnoha absurdních situací. Název díla je odvozen podle vojenského paragrafu XXII, který říká, že voják může požádat o propuštění z armády, je-li blázen, ale zároveň říká, že uvědomuje-li si, že je blázen, nemůže být bláznem. J. Heller se na tento román pokusil navázat, ale další díl zdaleka nedosahuje kvalit prvního. – Zfilmoval Mike Nichols (1970)', 'https://www.databazeknih.cz/img/books/40_/403/bmid_hlava-xxii-DIX-403.jpg', 3),
(12, ' Malý princ ', 'Saint-Exupéry, Antoine de', 118, 'Není princ jako princ. Tenhle je skutečně jen jeden – Malý princ, jedno z nejslavnějších děl moderní světové literatury.\r\nS Malým princem se v africké poušti setkává opuštěný letec, autor této knížky. Zatímco se pokouší opravit havarovaný stroj, povídají si o všeličem. O tajemství podivuhodné pouti Malého prince, o dobru a zlu, o přátelství a kráse, o pravém štěstí, o odpovědnosti za ty, které máme rádi. A vůbec nezáleží na tom, odkud pocházíme: Malý princ pocházel z tak malinké planetky, že si to možná ani neumíme představit. Ale věděl, že je třeba chránit květinu, kterou vypěstoval, a že mu to přineslo větší radost než pijákovi plná láhev, podnikateli peníze a panovačnému králi nezměrná moc.', 'https://www.databazeknih.cz/img/books/19_/190863/big_maly-princ-dC9-190863.jpg', 3),
(13, ' Blaník ', 'Cimrman, Jára – Smoljak, Ladislav – Svěrák, Z', 106, 'Jedenáctý sešit souborného vydání Seminářů a her Divadla Járy Cimrmana.', 'https://www.databazeknih.cz/img/books/81_/81987/blanik-81987.jpg', 4),
(14, ' Válka s mloky ', 'Čapek, Karel', 2, 'Karel Čapek svůj světově proslulý román Válka s mloky napsal v roce 1935. Díky své schopnosti citlivě reagovat na dění ve společnosti a ve světě, si zřetelně uvědomoval nebezpečí nastupujícího fašismu a jeho destruktivní ideologie. Přestože Karel Čapek před Adolfem Hitlerem a jeho vzrůstající moci neustále varoval a burcoval, jeho slovům málokdo věřil.\r\nKnihu Válka s mloky lze považovat za literární vyjádření autových obav a strachu z reálné hrozby další světové války. Jak dneska víme, jeho obavy se naplnily a fašisté v čele s diktátorem Hitlerem, které Čapek ve svém díle vyobrazil jako mloky, rozpoutali celosvětový válečný konflikt, který přinesl smrt, utrpení a zkázu milionům lidí.\r\nAutentičnosti románu napomáhá autorova schopnost měnit styl psaní, fiktivní novinová část, či použití neexistujících jazyků.\r\nAčkoliv má Válka s mloky některé atributy sci-fi žánru, stal se tento román mementem varujícím před hrozbou lidské lhostejnosti, fanatismu a touhy po moci.', 'https://www.databazeknih.cz/img/books/34_/343486/big_valka-s-mloky-ECX-343486.jpg', 4),
(15, ' Moji přátelé ', 'Deml, Jakub', 3, 'Poetické texty (promluvy k rostlinám, které autor miloval), z nichž každý má více významových rovin, vycházejí tentokrát s ilustracemi akademického malíře Vojtěcha Štolfy. Vzniklo tak vyvážené dílo dvou uměleckých osobností dvou různých generací.', 'https://www.databazeknih.cz/img/books/11_/11717/big_moji-pratele-11717.jpg', 4),
(16, ' Slezské písně ', 'Bezruč, Petr', 197, 'Jedná se o básně velmi často s národní a sociální tematikou, jsou zde však např. i básně milostné. Původně vydáno pod názvem Slezské číslo, teprve po rozšíření získalo svůj známý název Slezské písně.\r\nPomník Maryčky Magdonové ve Starých Hamrech', 'https://www.databazeknih.cz/img/books/60_/605/big_slezske-pisne-DNp-605.jpg', 4),
(17, ' R. U. R. ', 'Čapek, Karel', 83, 'Čapkovo utopistické drama, v němž se světu poprvé představilo slovo robot. Vypráví o továrně, v níž vznikají roboti, kteří pracují za lidi a umožňují tak vzniku jakéhosi ráje. Jenomže nic netrvá věčně a i roboti můžou začít myslet na sebe...', 'https://www.databazeknih.cz/img/books/52_/5204/bmid_r-u-r-YYg-5204.jpg', 4),
(18, ' Rub a líc ', 'Voskovec, Jiří – Werich, Jan', 69, 'Popis knihy zde zatím bohužel není.', 'https://www.databazeknih.cz/img/books/12_/123678/rub-a-lic-123678.jpg', 4),
(19, ' Konec masopustu ', 'Topol, Josef', 4, 'Tato básnická a dramatická hra na téma kolektivizace vesnice, která ohrožuje existenci starých hodnot života na venkově, popisuje těžký boj posledního soukromého rolníka, patří mezi významná díla české dramatiky minulého století, divadla ji s úspěchem uvádějí i dnes.', 'https://www.databazeknih.cz/img/books/91_/91772/big_konec-masopustu-yZR-91772.jpg', 4);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `knihy`
--
ALTER TABLE `knihy`
  ADD PRIMARY KEY (`id_knihy`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `knihy`
--
ALTER TABLE `knihy`
  MODIFY `id_knihy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
