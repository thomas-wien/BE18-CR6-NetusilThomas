-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 15. Apr 2023 um 12:19
-- Server-Version: 10.4.27-MariaDB
-- PHP-Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be18_cr6_bigeventsnetusilthomas`
--
CREATE DATABASE IF NOT EXISTS `be18_cr6_bigeventsnetusilthomas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be18_cr6_bigeventsnetusilthomas`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `number` varchar(15) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `typa` varchar(255) DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `description`, `capacity`, `email`, `phone`, `location`, `street`, `number`, `zip`, `city`, `url`, `typa`, `long_description`, `image_name`, `image_size`, `updated_at`) VALUES
(1, '200 Years of J. & L. Lobmeyr', '2023-04-17 18:00:00', '\"Passionswege\" of Viennese Design Week', 0, 'office@lobmayer.at', 'n/a', 'J. & L. Lobmeyr', 'Kärntner Straße', '26', '1010', 'Wien', 'http://www.lobmeyr.at/', 'exhibition', 'Crystal glass manufacturer J. & L. Lobmeyr was among the best-known participants in the 1873 Vienna World\'s Fair and celebrated great success there. Company founder Ludwig Lobmeyr received numerous awards for his designs and also sat on the judging panel himself. Incidentally, the company was even able to fit out the Imperial Pavilion, among other things with the lavishly engraved Emperor service and am impressive mirror, which can still be marveled at today in the store on Kärntner Strasse. The family company established in 1823 is known for extremely delicate drinking glasses in countless designs, but also for its impressive and magnificent chandeliers.  One of the oldest series at Lobmeyr is Service No. 4 from 1856. It was shown at the 1873 World\'s Fair and has been a permanent bestseller ever since. Now as then, the service impresses with its simplicity.  In 2023, J. & L. Lobmeyr celebrates its 200th anniversary. Two exhibitions at the Lobmeyr headquarters on Kärntner Straße 26 are dedicated to the world exhibition and Lobmeyr\'s company anniversary.  The anniversary will be celebrated with two exhibitions on the second floor of the Lobmeyr head office at Kärntner Strasse 26: From April to July 2023, the focus is on Lobmeyr at (world) exhibitions and spans an arc from the 1862 London World\'s Fair via Vienna in 1873, Cologne in 1914, and Paris in 1925 to the \"Passionswege\" of Viennese Design Week of more recent times. From September to December 2023, an exhibition will run under the motto \"Design\" and deal with the design process, the understanding of materials, and the icons that arose at Lobmeyr over the last 200 years.', 'lobmeyr-geschaft-643977f29b51c269330822.jpg', 47885, '2023-04-14 17:57:38'),
(2, 'Daniel & Michael Barenboim • Kian S', '2023-04-15 15:30:00', 'Ludwig van Beethoven', 250, 'tickets@musikverein.at', '+43 1 505 81 90', 'Musikverein', 'Musikvereinsplatz', '1', '1010', 'Wien', 'www.musikverein.at', 'music', 'Daniel Barenboim, piano Michael Barenboim, violin Kian Soltani, violoncello  Ludwig van Beethoven: Trio for piano, violin and violoncello in E flat major, op. 1/1 Trio for Piano, Violin and Violoncello in C minor, op. 1/3 Trio for piano, violin and violoncello G major, op. 1/2 Trio for piano, violin and violoncello D major, op. 70/1, \"Ghost Trio\"', 'mv-grossersaal1-1-643a55157dbc6347894944.jpg', 48964, '2023-04-15 09:41:09'),
(3, 'Der fliegende Holländer', '2023-04-16 18:00:00', 'Opera by Richard Wagner', 800, 'tickets@volksoper.at', '+43 1 51444-3670', 'Vienna Volksoper', 'Währinger Straße', '78', '1090', 'Wien', 'www.volksoper.at', 'opera', 'in German language with German surtitles  Direction: Aron Stiehl  After invoking the devil during a perilous journey around a headland, the Flying Dutchman is condemned to a restless odyssey and an eternal search – unless he can find a woman whose unconditional loyalty will bring him salvation from his undead existence. But he can only go ashore to find his soulmate once every seven years …', '40558-1-643a56b964b07563548033.jpg', 31302, '2023-04-15 09:48:09'),
(4, 'Avril Lavigne', '2023-04-27 20:00:00', 'Love Sux - Europe Tour 2023', 1200, 'office@stadthalle.at', '+43 1 79 999 79', 'Vienna Stadthalle', 'Roland-Rainer-Platz', '1', '1150', 'Wien', 'www.stadthalle.com', 'music', 'Die kanadische Pop/Rock-Sängerin und Songwriterin Avril Lavigne aka. Sk8er-Girl wurde in den 2000er Jahren mit ihrem Skatepunk-Image zu einem internationalen Star. Vor allem ihre Single „Skater Boy“ kennt nun wirklich jeder und wird nach wie vor, zwar falsch, aber dafür laut und mit voller Begeisterung mitgesungen. Mit ihren 17 Jahren wurde sie zum Teenie-Idol und revolutionierte mit ihren Tank Tops und ihren, immer leicht gebundenen Krawatten, auch die Modewelt.  Ihr neuestes Album \"Love Sux\" bringt sie zurück nach Österreich, in die Wiener Stadthalle am 27. April 2023  In Europa werden €2 von jedem Ticket der Avril Lavigne Foundation gespendet. Die Foundation unterstützt an Lymeborreliose erkrankte Personen sowie Personen mit anderen schweren Krankheiten oder körperlichen Einschränkungen. Durch Programme und Zuschüsse werden Präventionsressourcen bereitgestellt, um Behandlungen und die Forschung zu finanzieren, um Hoffnung zu schaffen und das Leben zu verändern.', '151-wienerstadthalle-halled-credit-bildagenturzolles-yz-2373-edit-1-643a5856f34e9573118700.jpg', 26795, '2023-04-15 09:55:03'),
(5, 'Wie es euch gefällt', '2023-04-18 19:30:00', 'by William Shakespeare', 350, 'office@burgtheater.at', '+43 1 51444 4140', 'Burgtheater', 'Universitätsring', '2', '1010', 'Wien', 'www.burgtheater.at', 'theatre', 'Rosalinde, Tochter des alten Herzogs, verkleidet sich als Mann, um ihren in die Wälder von Arden verbannten Vater aufzusuchen und der Gewalt seines Bruders, des machtgierigen Autokraten Frederick, zu entgehen. Oder will sie dort vielmehr den ebenfalls verbannten und in Beziehungsfragen wenig erfahrenen Orlando zu einem Liebesspiel verführen? In der Rolle ihres Alter Egos „Ganymed“ gibt sie vor, Orlando zu lehren, wie er seine Verliebtheit in sie selbst, Rosalinde, überwinden könne.   Mit WIE ES EUCH GEFÄLLT (1599) dichtete William Shakespeare die vielleicht entzückendste Beziehungskomödie aller Zeiten, mit einer immer noch ungewöhnlich vielschichtigen und faszinierenden Protagonistin als Dreh- und Angelpunkt. Das Stück scheint Billy Wilder, Woody Allen und Serien wie „Sex Education“ inspiriert zu haben. Sein Thema ist der Traum von der großen Liebe, die durch Zweifel, Unreife, Missverständnisse und gesellschaftliche Konventionen unerreichbar erscheint, aber im richtigen Moment zum Greifen nah ist. Ein sinnlicher Klassiker geprägt von farbenfrohen Figuren, aphrodisierender Sprache und überraschenden erotischen Funken. WIE ES EUCH GEFÄLLT spielt mit Fragen von Autorität und Anarchie, Subversion und Rollenspiel, Therapie und Selbst(er)findung – all das in einer Fantasiewelt der unerwarteten Wendung und der steten Verwandlung, in der alle aufgefordert sind, sich selbst und ihre Gegenüber immer neu zu betrachten.', '40760-643a5c7bde87a222271382.jpg', 43306, '2023-04-15 10:12:43'),
(6, 'The Hunchback of Notre Dame', '2023-04-15 19:30:00', 'The musical based on the world-famous Disney film', 250, 'office@ronachar.at', '+43 1 588 85', 'Ronacher', 'Seilerstätte', '9', '1010', 'Wien', 'www.wien-ticket.at', 'music', 'Austrian premiere of Disney\'s \"The Hunchback of Notre Dame\": The story about Quasimodo and the beautiful Esmeralda touches young and old. All Disney songs from the film can also be heard in the musical.  The unforgettable Disney songs are part of the fascinating musical adaptation of the emotional story about the bell ringer Quasimodo, the beautiful Esmeralda and the Cathedral of Notre Dame. The live orchestra provides opulent orchestral sound; impressive church choirs and sensitive ballads touch the audience. - No matter what age: Disney\'s \"The Hunchback of Notre Dame\" provides adults as well as children (recommended for ages eight and up) with an unforgettable musical evening.  Two greats of the musical biz are the creators of Disney\'s musical adaptation of \"The Hunchback of Notre Dame\": legendary musical composer and eight-time Oscar, eleven-time Grammy, Emmy Award and Tony Award winner Alan Menken (including Sister Act, Beauty and the Beast, Pocahontas) and songwriter and three-time Oscar, Golden Globe and Grammy Award winner Stephen Schwartz (including Wicked).  Scott Schwarz has staged the musical lavishly and powerfully with spectacular stage design. After many international productions, for example in the USA, Berlin and Tokyo, the successful musical can now finally be seen for the first time in Vienna at the Ronacher.', 'glockner-von-notredame-643a5d9815216666716600.jpg', 30429, '2023-04-15 10:17:28'),
(7, 'Picasso', '2023-04-15 10:00:00', 'On the 50th Anniversary of his Death', 50, 'info@albertina.at', '+43 1 534 83 0', 'Albertina', 'Albertinaplatz', '1', '1010', 'Wien', 'www.albertina.at', 'exhibition', 'Exactly half a century after his passing, the Albertina Museum is commemorating the life and works of Pablo Picasso, that greatest and most influential artist of the 20th century—a pioneer of its first half with cubism, a central protagonist of symbolism during his Blue Period, a forerunner of the 1920s’ neoclassicist tendencies, and in his late works an ideal to be emulated by the neoexpressionist movements of the 1980s. His oeuvre, encompassing approximately 50,000 works, reflects the momentous political transformations and dynamic avant-garde movements of his era, which stretched from the dawn of the 20th century into the early 1970s.  The Albertina Museum holds central works from all of the important phases of Picasso’s career: from the Blue Period painting The Sleepy Drinker of 1902 to masterpieces created amidst the Second World War and its aftermath and on to late works such as Naked Woman with Bird and Flute Player or his late graphic prints, which bear witness to his grappling with life’s ephemerality and “painting against time.\" This exhibition shows 18 paintings from the Museum’s own collection and a total of over 70 works by a man who, even during his own lifetime, had become the archetype of the modern artist.', 'pablo-picasso-mittelmeerlandschaft-1952-albertina-wien-succession-picasso-bildrecht-643a5e6d175d5884363609.jpg', 55774, '2023-04-15 10:21:01'),
(8, 'The Festival Viennale', '2023-10-19 19:00:00', 'The Film Festival', 200, 'office@gartenbau.at', '+43 1 512 23 54', 'Gartenbau Kino', 'Parkring', '12', '1010', 'Wien', 'www.gartenbaukino.at', 'movie', 'The Viennale is Austria’s most important international film event, as well as one of the oldest and best-known festivals in the German-speaking world. Every October, the Viennale takes place in beautiful cinemas in Vienna’s historic center, providing the festival with an international orientation and a distinctive urban flair. A high percentage of the more than 92,000 visitors (previous to the pandemic) to the festival from Austria and abroad is made up of a decidedly young audience.  In its program, the Viennale shows a carefully picked selection of new films from all over the globe as well as from Austria, some of them international premieres. The choice of about 300 films offers a cross-section of bold film-making which stands apart from the aesthetics of mainstream conventionality and is politically relevant.In the program you will find great titles premiered around the world, from Cannes to Buenos Aires, in a great variety of forms and lengths, as well as tones and genres.  The Viennale receives regular international acclaim for the large-scale retrospective on relevant aspects of film history it organises every year in collaboration with the Austrian Filmmuseum, its numerous Special Programs, as well as for its Monogrphies, Cinematographies and Historiographies. The conclusion of the festival sees the awarding of the FIPRESCI Prize of the International Film Critics’ Association,  the Vienna Film Prize of the City of Vienna, the Erste Bank MoreVALUE Filmaward and the DER STANDARD-Viennale-Audience-Award.  Gala screenings, special events and parties are as much part of the festival as interviews, audience discussions and opportunities to meet the many international guests of the festival. In recent years, the Viennale has established a secure place for itself on the international festival scene: It has become a festival which offers a program of high quality in a relaxed urban atmosphere in autumn, when Vienna is at its most attractive. It presents an exciting array of newest trends contrasted with historical reference points. It is a festival of information, surprises, discoveries and above all, of films.', 'geschichte-643a6c3deb29e294733048.jpg', 77152, '2023-04-15 11:19:57'),
(10, 'Manon', '2023-04-30 19:30:00', 'Opera by Jules Massenet', 600, 'ticket@wiener-staatsoper.at', '+43 1 514 44 2250', 'Vienna State Opera', 'Opernring', '2', '1010', 'Wien', 'www.wiener-staatsoper.at', 'opera', 'Musical direction: Bertrand de Billy Production: Andrei Serban  With the world premiere of Manon in 1884, Jules Massenet was able to celebrate what is probably the greatest triumph of his career as a composer – both in his home country of France and abroad. What impressed the audience from the very beginning was the variety of musical forms and textures: it abruptly switches from mass scenes to sections reminiscent of a chamber play, where each scene, however brief, is given its own, multi-faceted mood between genre painting, comedy and sensitive tragedy. Compared to the novel, Massenet elevates the mysteriousness of the seductive Manon, the child wife who drifts between love and luxury. Andrei Serban\'s staging takes up the rhythm of the score and, with the help of projections, allows lavish long shots of the stage to follow clear close ups, occasionally expanding the space of the stage in an unusually ingenious way by using mirrors', 'oper-643a7306c61ac959807169.jpg', 35007, '2023-04-15 11:48:54');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'thomas@ariadne.at', '[]', '$2y$13$R9r4890/KQebreTjdkmjWOhOz/oXdjlcen3O6N4zgyZC3erLSBJkG'),
(3, 'admin@ariadne.at', '[\"ROLE_ADMIN\"]', '$2y$13$m1YApW0ZCdDaEDfxBAEq6u8au1mVBlNYYI/sb6BCcch9yYSHZcBOu');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
