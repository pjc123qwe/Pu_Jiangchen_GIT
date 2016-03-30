-- phpMyAdmin SQL Dump
-- version 4.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2016 at 01:55 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: db_bluray
--

-- --------------------------------------------------------

--
-- Table structure for table tbl_cast
--

CREATE TABLE tbl_cast (
  cast_id smallint(4) unsigned NOT NULL,
  cast_fname varchar(75) NOT NULL,
  cast_lname varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table tbl_cast
--

INSERT INTO tbl_cast (cast_id, cast_fname, cast_lname) VALUES
(1, 'Kevin', 'Bacon'),
(2, 'Fred', 'Ward'),
(3, 'Finn', 'Carter'),
(4, 'Michael', 'Gross'),
(5, 'Reba', 'McEntire'),
(6, 'Robert', 'Jayne'),
(7, 'Jeffery', 'Morgan'),
(8, 'Natasha', 'Calis'),
(9, 'Kyra', 'Sedgwick'),
(10, 'Jay', 'Brazeau'),
(11, 'Madison', 'Davenport'),
(12, 'Grant', 'Show'),
(13, 'Dale', 'Midkiff'),
(14, 'Fred', 'Gwynne'),
(15, 'Denise', 'Crosby'),
(16, 'Brad', 'Greenquist'),
(17, 'Michael', 'Lombard'),
(18, 'Miko', 'Hughes'),
(19, 'Patrick', 'Fabian'),
(20, 'Ashley', 'Bell'),
(21, 'Iris', 'Bahr'),
(22, 'Louis', 'Herthum'),
(23, 'Caleb', 'Jones'),
(24, 'Tony', 'Bentley'),
(25, 'Jennifer', 'Lawrence'),
(26, 'Max', 'Thieriot'),
(27, 'Elisabeth', 'Shue'),
(28, 'Gil', 'Bellows'),
(29, 'Nolan', 'Funk'),
(30, 'Eva', 'Link'),
(31, 'Jamie Lee', 'Curtis'),
(32, 'Donald', 'Pleasence'),
(33, 'Charles', 'Cyphers'),
(34, 'Jeffery', 'Kramer'),
(35, 'Lance', 'Guest'),
(36, 'Pamela', 'Shoop'),
(37, 'Bruce', 'Campbell'),
(38, 'Embeth', 'Davidtz'),
(39, 'Marcus', 'Gilbert'),
(40, 'Ian', 'Abercrombie'),
(41, 'Richard', 'Grove'),
(42, 'Timothy', 'Quill'),
(43, 'Ben', 'Burtt'),
(44, 'Elissa', 'Knight'),
(45, 'Jeff', 'Garlin'),
(46, 'Fred', 'Willard'),
(47, 'John', 'Ratzenberger'),
(48, 'Kathy', 'Najimy'),
(49, 'Steve', 'Carell'),
(50, 'Jason', 'Segel'),
(51, 'Russel', 'Brand'),
(52, 'Julie', 'Andrews'),
(53, 'Will', 'Arnett'),
(54, 'Kristen', 'Wiig'),
(55, 'Catherine', 'O''Hara'),
(56, 'Martin', 'Short'),
(57, 'Martin', 'Landau'),
(58, 'Charlie', 'Tahan'),
(59, 'Atticus', 'Shaffer'),
(60, 'Winona', 'Ryder'),
(61, 'James', 'McAvoy'),
(62, 'Emily', 'Blunt'),
(63, 'Ashley', 'Jensen'),
(64, 'Michael', 'Caine'),
(65, 'Matt', 'Lucas'),
(66, 'Jim', 'Cummings'),
(67, 'Eunice', 'Cho'),
(68, 'Karen', 'Disher'),
(69, 'Harrison', 'Fahn'),
(70, 'Maile', 'Flanagan'),
(71, 'Jason', 'Fricchione'),
(72, 'Bill', 'Hader'),
(73, 'Edward', 'Asner'),
(74, 'Christopher', 'Plummer'),
(75, 'Jordan', 'Nagai'),
(76, 'Bob', 'Peterson'),
(77, 'Delroy', 'Lindo'),
(78, 'Jerome', 'Ranft'),
(79, 'Ben', 'Burtt'),
(80, 'Elissa', 'Knight'),
(81, 'Jeff', 'Garlin'),
(82, 'Fred', 'Willard'),
(83, 'John', 'Ratzenberger'),
(84, 'Kathy', 'Najimy'),
(85, 'Alec', 'Baldwin'),
(86, 'Geena', 'Davis'),
(87, 'Annie', 'McEnroe'),
(88, 'Maurice', 'Page'),
(89, 'Hugo', 'Stanger'),
(90, 'Michael', 'Keaton'),
(91, 'Bill', 'Murray'),
(92, 'Dan', 'Aykroyd'),
(93, 'Sigourney', 'Weaver'),
(94, 'Harold', 'Ramis'),
(95, 'Rick', 'Moranis'),
(96, 'Annie', 'Potts'),
(97, 'Jason', 'Bateman'),
(98, 'Steve', 'Wiebe'),
(99, 'Kevin', 'Spacey'),
(100, 'Charlie', 'Day'),
(101, 'Lindsay', 'Sloane'),
(102, 'Michael', 'Albala'),
(103, 'Aaron', 'Taylor-Johnson'),
(104, 'Garret', 'Brown'),
(105, 'Evan', 'Peters'),
(106, 'Deborah', 'Twiss'),
(107, 'Lyndsy', 'Fonseca'),
(108, 'Shophie', 'Wu'),
(109, 'Benicio', 'Del Toro'),
(110, 'Dennis', 'Farina'),
(111, 'Vinnie', 'Jones'),
(112, 'Brad', 'Pitt'),
(113, 'Rade', 'Serbedzija'),
(114, 'Jason', 'Statham'),
(115, 'Bradley', 'Cooper'),
(116, 'Ed', 'Helms'),
(117, 'Zach', 'Galifianakis'),
(118, 'Justin', 'Bartha'),
(119, 'Heather', 'Graham'),
(120, 'Sasha', 'Barrese'),
(121, 'Judy', 'Davis'),
(122, 'Flavio', 'Parenti'),
(123, 'Roberto', 'Benigni'),
(124, 'Alison', 'Pill'),
(125, 'Alessandro', 'Tiberi'),
(126, 'Alessandra', 'Mastronardi'),
(127, 'Josh', 'Hartnett'),
(128, 'Ewan', 'McGregor'),
(129, 'Tom', 'Sizemore'),
(130, 'Eric', 'Bana'),
(131, 'William', 'Fichtner'),
(132, 'Ewen', 'Bremner'),
(133, 'Karl', 'Urban'),
(134, 'Evan', 'Wood'),
(135, 'Andile', 'Mngadi'),
(136, 'Porteus', 'Xandau'),
(137, 'Jason', 'Cope'),
(138, 'Emma', 'Breschi'),
(139, 'Jet', 'Li'),
(140, 'Xun', 'Chen'),
(141, 'Kun', 'Chen'),
(142, 'Gwei', 'Lun_Mei'),
(143, 'Yuchun', 'Li'),
(144, 'Mavis', 'Fan'),
(145, 'Robert', 'Downey Jr.'),
(146, 'Gwyneth', 'Paltrow'),
(147, 'Don', 'Cheadle'),
(148, 'Scarlett', 'Johansson'),
(149, 'Sam', 'Rockwell'),
(150, 'Mickey', 'Rourke'),
(151, 'Liam', 'Neeson'),
(152, 'Maggie', 'Grace'),
(153, 'Famke', 'Janssen'),
(154, 'Leland', 'Orser'),
(155, 'Jon', 'Gries'),
(156, 'Daneil Bernard', 'Sweeney'),
(157, 'Shia', 'LeBeouf'),
(158, 'Rosie', 'Huntington-Whiteley'),
(159, 'Josh', 'Duhamel'),
(160, 'John', 'Turturro'),
(161, 'Tyrese', 'Gibson'),
(162, 'Patrick', 'Dempsey'),
(163, 'Stephen', 'Baldwin'),
(164, 'Gabriel', 'Byrne'),
(165, 'Kevin', 'Pollak'),
(166, 'Chazz', 'Palminteri');

-- --------------------------------------------------------

--
-- Table structure for table tbl_cat
--

CREATE TABLE tbl_cat (
  cat_id smallint(4) unsigned NOT NULL,
  cat_name varchar(30) NOT NULL,
  cat_desc varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table tbl_cat
--

INSERT INTO tbl_cat (cat_id, cat_name, cat_desc) VALUES
(1, 'action', 'Think of Chuck Norris'),
(2, 'comedy', 'Think of Eddie Murphy'),
(3, 'family', 'Think of Disney'),
(4, 'horror', 'Think of Borat in a bikini');

-- --------------------------------------------------------

--
-- Table structure for table tbl_director
--

CREATE TABLE tbl_director (
  dir_id smallint(4) unsigned NOT NULL,
  dir_fname varchar(75) NOT NULL,
  dir_lname varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table tbl_director
--

INSERT INTO tbl_director (dir_id, dir_fname, dir_lname) VALUES
(1, 'Ridley', 'Scott'),
(2, 'Pete', 'Travis'),
(3, 'Hark', 'Tsui'),
(4, 'Jon', 'Favreau'),
(5, 'Olivier', 'Megaton'),
(6, 'Michael', 'Bay'),
(7, 'Bryan', 'Singer'),
(8, 'Tim', 'Burton'),
(9, 'Ivan', 'Reitman'),
(10, 'Seth', 'Gordon'),
(11, 'Matthew', 'Vaughn'),
(12, 'Guy', 'Ritchie'),
(13, 'Todd', 'Phillips'),
(14, 'Woody', 'Allen'),
(15, 'Phil', 'Lord'),
(16, 'Chris', 'Miller'),
(17, 'Pierre', 'Coffin'),
(18, 'Chris', 'Renaud'),
(19, 'Kelly', 'Asbury'),
(20, 'Carlos', 'Saldanha'),
(21, 'Mike', 'Thurmeier'),
(22, 'Pete', 'Doctor'),
(23, 'Bob', 'Peterson'),
(24, 'Andrew', 'Stanton'),
(25, 'Sam', 'Raimi'),
(26, 'Rick', 'Rosenthai'),
(27, 'Mark', 'Tonderai'),
(28, 'Daniel', 'Stamm'),
(29, 'Mary', 'Lambert'),
(30, 'Ole', 'Bornedal'),
(31, 'Ron', 'Underwood');

-- --------------------------------------------------------

--
-- Table structure for table tbl_L_mc
--

CREATE TABLE tbl_L_mc (
  mc_id smallint(4) unsigned NOT NULL,
  movies_id smallint(4) NOT NULL,
  cat_id smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table tbl_L_mc
--

INSERT INTO tbl_L_mc (mc_id, movies_id, cat_id) VALUES
(1, 22, 1),
(2, 23, 1),
(3, 24, 1),
(4, 25, 1),
(5, 26, 1),
(6, 27, 1),
(7, 28, 1),
(8, 1, 4),
(9, 2, 4),
(10, 3, 4),
(11, 4, 4),
(12, 5, 4),
(13, 6, 4),
(14, 7, 4),
(15, 8, 3),
(16, 9, 3),
(17, 10, 3),
(18, 11, 3),
(19, 12, 3),
(20, 13, 3),
(21, 14, 3),
(22, 15, 2),
(23, 16, 2),
(24, 17, 2),
(25, 18, 2),
(26, 19, 2),
(27, 20, 2),
(28, 21, 2);

-- --------------------------------------------------------

--
-- Table structure for table tbl_L_md
--

CREATE TABLE tbl_L_md (
  md_id smallint(4) unsigned NOT NULL,
  movies_id smallint(4) NOT NULL,
  dir_id smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table tbl_L_md
--

INSERT INTO tbl_L_md (md_id, movies_id, dir_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table tbl_movies
--

CREATE TABLE tbl_movies (
  movies_id smallint(4) unsigned NOT NULL,
  movies_thumb varchar(50) NOT NULL DEFAULT 'noThumb.jpg',
  movies_fimg varchar(50) NOT NULL DEFAULT 'nofImg.jpg',
  movies_bimg varchar(50) NOT NULL DEFAULT 'nobImg.jpg',
  movies_title varchar(75) NOT NULL,
  movies_year varchar(20) NOT NULL,
  movies_storyline text NOT NULL,
  movies_runtime varchar(25) NOT NULL,
  movies_trailer varchar(50) NOT NULL,
  movies_price varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table tbl_movies
--

INSERT INTO tbl_movies (movies_id, movies_thumb, movies_fimg, movies_bimg, movies_title, movies_year, movies_storyline, movies_runtime, movies_trailer, movies_price) VALUES
(1, 'TH_Tremors.jpg', 'Tremors.jpg', 'nobImg.jpg', 'Tremors', '1990', 'A small town gradually becomes aware of a strange creature which picks off people one by one. But what is this creature, and where is it? At the same time, a seismologist is working in the area, she detects tremors. The creature lives underground, and can pop up without warning. Trapped in their town, the town-folk have no escape.', '96 min', 'trailer.mp4', '26.99'),
(2, 'TH_ThePossession.jpg', 'ThePossession.jpg', 'nobImg.jpg', 'The Possession', '2012', 'A young girl buys an antique box at a yard sale, unaware that inside the collectible lives a malicious ancient spirit. The girl''s father teams with his ex-wife to find a way to end the curse upon their child. ', '92 min', 'trailer.mp4', '26.99'),
(3, 'TH_PetSematary.jpg', 'PetSematary.jpg', 'nobImg.jpg', 'Pet Sematary', '1989', 'The Creeds have just moved to a new house in the countryside. Their house is perfect, except for two things: the semi-trailers that roar past on the narrow road, and the mysterious cemetary in the woods behind the house. The Creed''s neighbours are reluctant to talk about the cemetary, and for good reason too.', '103 min', 'trailer.mp4', '22.99'),
(4, 'TH_LastExorcism.jpg', 'LastExorcism.jpg', 'nobImg.jpg', 'Last Exorcism', '2010', 'In Baton Rouge, Louisiana, the evangelical Reverend Cotton Marcus was raised by his father to be a preacher. He agrees that the filmmaker Iris Reisen and the cameraman Daniel Moskowitz make a documentary about his life. Cotton tells that when his wife Shanna Marcus had troubles in the delivery of their son Justin, he prioritized the doctor help to God and since then he questions his faith. Further, he tells that exorcisms are frauds but the results are good for the believers because they believe it is true. When Cotton is summoned by the farmer Louis Sweetzer to perform an exorcism in his daughter Nell, Cotton sees the chance to prove to the documentary crew what he has just told. They head to Ivanwood and they have a hostile reception from Louis''s son Caleb. Cotton performs the exorcism in Nell, exposing his tricks to the camera, but sooner they learn that the dysfunctional Sweetzer family has serious problems.', '87 min', 'trailer.mp4', '28.99'),
(5, 'TH_HouseAtTheEndOfTheStreet.jpg', 'HouseAtTheEndOfTheStreet.jpg', 'nobImg.jpg', 'House At The End Of The Street', '2012', 'Newly divorced Sarah and her daughter Elissa find the house of their dreams in a small, upscale, rural town. But when startling and unexplainable events begin to happen, Sarah and Elissa learn the town is in the shadows of a chilling secret.', '101 min', 'trailer.mp4', '26.99'),
(6, 'TH_Halloween2.jpg', 'Halloween2.jpg', 'nobImg.jpg', 'Halloween 2', '1981', 'It''s the same night as the original Halloween. Michael Myers is around the neighborhood, after being gunned by Dr.Loomis six times. Now, he''s in a hospital where the girl Laurie Strode was taken. And there''s a reason why Michael is after her', '92 min', 'trailer.mp4', '19.99'),
(7, 'TH_ArmyOfDarkness.jpg', 'ArmyOfDarkness.jpg', 'nobImg.jpg', 'Army Of Darkness', '1992', 'In this sequel to the Evil Dead films, a discount-store employee ("Name''s Ash. Housewares.") is time-warped to a medieval castle beset by monstrous forces. Initially mistaken for an enemy, he is soon revealed as the prophecised savior who can quest for the Necronomicon, a book which can dispel the evil. Unfortunately, he screws up the magic words while collecting the tome, and releases an army of skeletons, led by his own Deadite counterpart. What follows is a thrilling, yet tongue-in-cheek battle between Ash''s 20th Century tactics and the minions of darkness.', '81 min', 'trailer.mp4', '6.99'),
(8, 'TH_CloudyWithAChanceOfMeatballs.jpg', 'CloudyWithAChanceOfMeatballs.jpg', 'nobImg.jpg', 'Cloudy With A Chance Of Meatballs', '2009', 'Flint Lockwood thinks he''s a genius. But none of the things he invented are things that make sense or are useful. However, he has the support of his mother but when she dies, he''s left alone with his father who thinks he should give it up. When the community that he lives in, is in an economic crisis because their primary source of income a sardine cannery was shut down, Flint decides to try his latest invention, a machine that can turn water into food. But something goes wrong and the machine ends up in the atmosphere. Later it starts raining food. The shifty mayor tries to use this as a way to help their community, but when Flint senses something wrong with the machine, the mayor convinces him to ignore it. However, as Flint predicts, chaos ensues.', '90 min', 'trailer.mp4', '26.99'),
(9, 'TH_DespicableMe.jpg', 'DespicableMe.jpg', 'nobImg.jpg', 'Despicable Me', '2009', 'In a happy suburban neighborhood surrounded by white picket fences with flowering rose bushes, sits a black house with a dead lawn. Unbeknownst to the neighbors, hidden beneath this home is a vast secret hideout. Surrounded by a small army of minions, we discover Gru, planning the biggest heist in the history of the world. He is going to steal the moon. (Yes, the moon!) Gru delights in all things wicked. Armed with his arsenal of shrink rays, freeze rays, and battle-ready vehicles for land and air, he vanquishes all who stand in his way. Until the day he encounters the immense will of three little orphaned girls who look at him and see something that no one else has ever seen: a potential Dad. The world''s greatest villain has just met his greatest challenge: three little girls named Margo, Edith and Agnes. ', '95 min', 'trailer.mp4', '26.99'),
(10, 'TH_Frankenweenie4pk.jpg', 'Frankenweenie4pk.jpg', 'nobImg.jpg', 'Frankenweenie', '2012', 'When young Victor''s pet dog Sparky (who stars in Victor''s home-made monster movies) is hit by a car, Victor decides to bring him back to life the only way he knows how. But when the bolt-necked "monster" wreaks havoc and terror in the hearts of Victor''s neighbors, he has to convince them (and his parents) that despite his appearance, Sparky''s still the good loyal friend he''s always been.', '87 min', 'trailer.mp4', '32.99'),
(11, 'TH_GnomeoAndJuliet.jpg', 'GnomeoAndJuliet.jpg', 'nobImg.jpg', 'Gnomeo And Juliet', '2011', 'Garden gnomes Gnomeo (voice of McAvoy) and Juliet (voice of Blunt) have as many obstacles to overcome as their quasi namesakes when they are caught up in a feud between neighbors. But with plastic pink flamingos and lawnmower races in the mix, can this young couple find lasting happiness? ', '84 min', 'trailer.mp4', '22.99'),
(12, 'TH_IceAgeDOTD.jpg', 'IceAgeDOTD.jpg', 'nobImg.jpg', 'Ice Age: Dawn of the Dinosaurs', '2009', 'After the events of "Ice Age: The Meltdown", life begins to change for Manny and his friends: Scrat is still on the hunt to hold onto his beloved acorn, while finding a possible romance in a female sabre-toothed squirrel named Scratte. Manny and Ellie, having since become an item, are expecting a baby, which leaves Manny anxious to ensure that everything is perfect for when his baby arrives. Diego is fed up with being treated like a house-cat and ponders the notion that he is becoming too laid-back. Sid begins to wish for a family of his own, and so steals some dinosaur eggs which leads to Sid ending up in a strange underground world where his herd must rescue him, while dodging dinosaurs and facing danger left and right, and meeting up with a one-eyed weasel known as Buck who hunts dinosaurs intently. ', '94 min', 'trailer.mp4', '22.99'),
(13, 'TH_Up.jpg', 'Up.jpg', 'nobImg.jpg', 'Up', '2009', 'A young Carl Fredrickson meets a young adventure-spirited girl named Ellie. They both dream of going to a lost land in South America. 70 years later, Ellie has died. Carl remembers the promise he made to her. Then, when he inadvertently hits a construction worker, he is forced to go to a retirement home. But before they can take him, he and his house fly away. However, he has a stowaway aboard: an 8-year-old boy named Russell, who''s trying to get an Assisting the Elderly badge. Together, they embark on an adventure, where they encounter talking dogs, an evil villain and a rare bird named Kevin. ', '96 min', 'trailer.mp4', '26.99'),
(14, 'th_Wall_E.jpg', 'Wall_E.jpg', 'nobImg.jpg', 'Wall E', '2008', 'In a distant, but not so unrealistic, future where mankind has abandoned earth because it has become covered with trash from products sold by the powerful multi-national Buy N Large corporation, WALL-E, a garbage collecting robot has been left to clean up the mess. Mesmerized with trinkets of Earth''s history and show tunes, WALL-E is alone on Earth except for a sprightly pet cockroach. One day, EVE, a sleek (and dangerous) reconnaissance robot, is sent to Earth to find proof that life is once again sustainable. WALL-E falls in love with EVE. WALL-E rescues EVE from a dust storm and shows her a living plant he found amongst the rubble. Consistent with her "directive", EVE takes the plant and automatically enters a deactivated state except for a blinking green beacon. WALL-E, doesn''t understand what has happened to his new friend, but, true to his love, he protects her from wind...', '98 min', 'trailer.mpv', '26.99'),
(15, 'TH_Beetlejuice.jpg', 'Beetlejuice.jpg', 'nobImg.jpg', 'Beetlejuice', '1988', 'Adam and Barbara are a normal couple...who happen to be dead. They have given their precious time to decorate the house and make it their own, but unfortunately a family is moving in, and not quietly. Adam and Barbara try to scare them out, but ends up becoming the main attraction to the money making family. They call upon Beetlejuice to help, but Beetlejuice has more in mind than just helping.', '92', 'trailer.mp4', '9.99'),
(16, 'TH_Ghostbusters.jpg', 'Ghostbusters.jpg', 'nobImg.jpg', 'Ghostbusters', '1984', 'Three odd-ball scientists get kicked out of their cushy positions at a university in New York City where they studied the occult. They decide to set up shop in an old firehouse and become Ghostbusters, trapping pesky ghosts, spirits, haunts, and poltergeists for money. They wise-crack their way through the city, and stumble upon a gateway to another dimension, one which will release untold evil upon the city. The Ghostbusters are called on to save the Big Apple.', '105 min', 'trailer.mp4', '9.99'),
(17, 'TH_HorribleBosses.jpg', 'HorribleBosses.jpg', 'nobImg.jpg', 'Horrible Bosses', '2011', 'Nick hates his boss, mostly because he''s expected to work from before sunrise to after sunset and his boss, Mr. Harken, calls him out for being a minute late and blackmails him so he can''t quit. Dale hates his boss, Dr. Julia Harris, because she makes unwelcome sexual advances when he''s about to get married. But Dale is on that pesky list of child offenders so he can''t quit. Kurt actually likes his job and his boss, well, up until his boss dies and the boss''s coked-out, psychopathic son takes over. But who would be crazy enough to quit their jobs in such poor economic times? Instead Nick, Dale and Kurt drunkenly and hypothetically discuss how to kill their bosses, and before they know it, they''ve hired a murder consultant to help them pull off the three deeds.', '98 min', 'trailer.mp4', '22.99'),
(18, 'TH_Kick_Ass.jpg', 'Kick_Ass.jpg', 'nobImg.jpg', 'Kick-Ass', '2010', 'Dave Lizewski is an unnoticed high school student and comic book fan with a few friends and who lives alone with his father. His life is not very difficult and his personal trials not that overwhelming. However, one day he makes the simple decision to become a super-hero even though he has no powers or training', '117 min', 'trailer.mp4', '26.99'),
(19, 'TH_Snatch.jpg', 'Snatch.jpg', 'nobImg.jpg', 'Snatch', '2000', 'Turkish and his close friend/accomplice Tommy get pulled into the world of match fixing by the notorious Brick Top. Things get complicated when the boxer they had lined up gets the shit kicked out of him by Pitt, a ''pikey'' ( slang for an Irish Gypsy)- who comes into the equation after Turkish, an unlicensed boxing promoter wants to buy a caravan off the Irish Gypsies. They then try to convince Pitt not only to fight for them, but to lose for them too. Whilst all this is going on, a huge diamond heist takes place, and a fistful of motley characters enter the story, including ''Cousin Avi'', ''Boris The Blade'', ''Franky Four Fingers'' and ''Bullet Tooth Tony''. Things go from bad to worse as it all becomes about the money, the guns, and the damned dog! ', '104 min', 'trailer.mp4', '19.99'),
(20, 'TH_TheHangover.jpg', 'TheHangover.jpg', 'nobImg.jpg', 'The Hangover', '2009', 'Angelenos Doug Billings and Tracy Garner are about to get married. Two days before the wedding, the four men in the wedding party - Doug, Doug''s two best buddies Phil Wenneck and Stu Price, and Tracy''s brother Alan Garner - hop into Tracy''s father''s beloved Mercedes convertible for a 24-hour stag party to Las Vegas. Phil, a married high school teacher, has the same maturity level as his students when he''s with his pals. Stu, a dentist, is worried about everything, especially what his controlling girlfriend Melissa thinks. Because she disapproves of traditional male bonding rituals, Stu has to lie to her about the stag, he telling her that they are going on a wine tasting tour in the Napa Valley. Regardless, he intends on eventually marrying her, against the advice and wishes of his friends. And Alan seems to be unaware of what are considered the social graces of the western world...', '100 min', 'trailer.mp4', '22.99'),
(21, 'TH_ToRomeWithLove.jpg', 'ToRomeWithLove.jpg', 'nobImg.jpg', 'To Rome With Love', '2012', 'In Rome, the America tourist Hayley meets the local lawyer Michelangelo on the street and soon they fall in love with each other. Hayley''s parents, the psychiatrist Phyllis and the retired music producer Jerry, travel to Rome to meet Michelangelo and his parents. When Jerry listens to Michelangelo''s father Giancarlo singing opera in the shower, he is convinced that he is a talented opera singer. But there is a problem: Giancarlo can only sing in the shower. The couple Antonio and Milly travel to Rome to meet Antonio''s relatives that belong to the high society. Milly goes to the hairdresser while Antonio waits for her in the room. Milly gets lost in Rome and the prostitute Anna mistakenly goes to Antonio''s room. Out of the blue, his relatives arrive in the room and they believe Anna is Antonio''s wife. Meanwhile the shy Milly meets her favorite actor Luca Salta (Antonio Albanese) and goes to his hotel room to...', '112 min', 'trailer.mp4', '22.99'),
(22, 'TH_BlackHawkDown.jpg', 'BlackHawkDown.jpg', 'nobImg.jpg', 'Black Hawk Down', '2001', 'Action/war drama based on the best-selling book detailing a near-disastrous mission in Somalia on October 3, 1993. On this date nearly 100 U.S. Army Rangers, commanded by Capt. Mike Steele, were dropped by helicopter deep into the capital city of Mogadishu to capture two top lieutenants of a Somali warlord. This lead to a large and drawn-out firefight between the Rangers and hundreds of Somali gunmen, leading to the destruction of two U.S. Black Hawk helicopters. This film focuses on the heroic efforts of various Rangers to get to the downed black hawks, centering on Sgt. Eversmann, leading the Ranger unit Chalk Four to the first black hawk crash site, Warrant Officer Durant who was captured after being the only survivor of the second black hawk crash, as well as many others who were involved. ', '144 min', 'trailer.mp4', '22.99'),
(23, 'TH_Dredd.jpg', 'Dredd3D.jpg', 'nobImg.jpg', 'Dredd', '2012', 'The future America is an irradiated waste land. On its East Coast, running from Boston to Washington DC, lies Mega City One - a vast, violent metropolis where criminals rule the chaotic streets. The only force of order lies with the urban cops called "Judges" who possess the combined powers of judge, jury and instant executioner. Known and feared throughout the city, Dredd is the ultimate Judge, challenged with ridding the city of its latest scourge - a dangerous drug epidemic that has users of "Slo-Mo" experiencing reality at a fraction of its normal speed. During a routine day on the job, Dredd is assigned to train and evaluate Cassandra Anderson, a rookie with powerful psychic abilities thanks to a genetic mutation. A heinous crime calls them to a neighborhood where fellow Judges rarely dare to venture - a 200 storey vertical slum controlled by prostitute turned drug lord Ma-Ma and her ruthless clan...', '95 min', 'trailer.mp4', '26.99'),
(24, 'TH_FlyingSwordsOfDragonGate.jpg', 'FlyingSwordsOfDragonGate.jpg', 'nobImg.jpg', 'Flying Swords of Dragon Gate', '2011', 'Set three years after Dragon Inn, innkeeper Jade has disappeared and a new inn has risen from the ashes - one that''s staffed by marauders masquerading as law-abiding citizens, who hope to unearth the fabled lost city buried in the desert. ', '122 min', 'trailer.mp4', '22.99'),
(25, 'TH_IronMan2.jpg', 'IronMan2.jpg', 'nobImg.jpg', 'Iron Man 2', '2010', 'With the world now aware of his dual life as the armored superhero Iron Man, billionaire inventor Tony Stark faces pressure from the government, the press, and the public to share his technology with the military. Unwilling to let go of his invention, Stark, along with Pepper Potts, and James "Rhodey" Rhodes at his side, must forge new alliances - and confront powerful enemies.', '124 min', 'trailer.mp4', '26.99'),
(26, 'TH_Taken2.jpg', 'Taken2.jpg', 'nobImg.jpg', 'Taken 2', '2012', 'Bryan Mills, the retired CIA agent, stopped at nothing to save his daughter Kim from Albanian kidnappers. The father of one of the kidnappers has sworn revenge and takes Bryan and his wife hostage during their family vacation in Istanbul. Bryan enlists his daughter to help them escape.', '92 min', 'trailer.mp4', '26.99'),
(27, 'TH_TransformersDOTM.jpg', 'TransformersDOTM.jpg', 'nobImg.jpg', 'Transformers Dark Side Of The Moon', '2011', 'Autobots Bumblebee, Ratchet, Ironhide, Mirage (aka Dino), Wheeljack (aka Que) and Sideswipe led by Optimus Prime, are back in action taking on the evil Decepticons, who are eager to avenge their recent defeat. The Autobots and Decepticons become involved in a perilous space race between the United States and Russia, to reach a hidden Cybertronian spacecraft on the moon and learn its secrets, and once again Sam Witwicky has to come to the aid of his robot friends. The new villain Shockwave is on the scene while the Autobots and Decepticons continue to battle it out on Earth.', '154 min', 'trailer.mp4', '26.99'),
(28, 'TH_UsualSuspects.jpg', 'UsualSuspects.jpg', 'nobImg.jpg', 'The Usual Suspects', '1995', 'Following a truck hijack in New York, five conmen are arrested and brought together for questioning. As none of them is guilty, they plan a revenge operation against the police. The operation goes well, but then the influence of a legendary mastermind criminal called Keyser Söze is felt. It becomes clear that each one of them has wronged Söze at some point and must pay back now. The payback job leaves 27 men dead in a boat explosion, but the real question arises now: Who actually is Keyser Soze? ', '106 min', 'trailer.mp4', '22.99');

-- --------------------------------------------------------

--
-- Table structure for table tbl_rating
--

CREATE TABLE tbl_rating (
  rating_id smallint(4) unsigned NOT NULL,
  rating_name varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table tbl_rating
--

INSERT INTO tbl_rating (rating_id, rating_name) VALUES
(1, '1 star'),
(2, '2 star'),
(3, '3 star'),
(4, '4 star'),
(5, '5 star');

-- --------------------------------------------------------

--
-- Table structure for table tbl_studio
--

CREATE TABLE tbl_studio (
  studio_id smallint(4) unsigned NOT NULL,
  studio_name varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table tbl_studio
--

INSERT INTO tbl_studio (studio_id, studio_name) VALUES
(1, 'Sony'),
(2, 'Lions Gate'),
(3, 'Beijing Liangzi Group'),
(4, 'Marvel Studios'),
(5, 'Twentieth Century Fox Film'),
(6, 'Paramount Pictures'),
(7, ' PolyGram'),
(8, 'Geffen Company'),
(9, 'Columbia Pictures'),
(10, 'New Line Cinema'),
(11, 'Warner Bros'),
(12, 'Medusa Film'),
(13, 'Universal Pictures'),
(14, 'Walt Disney Pictures'),
(15, 'Touchstone Pictures'),
(16, 'Pixar'),
(17, 'Relativity Media'),
(18, 'Strike Entertainment'),
(19, 'Ghost House Pictures');

-- --------------------------------------------------------

--
-- Table structure for table tbl_type
--

CREATE TABLE tbl_type (
  type_id smallint(4) unsigned NOT NULL,
  type_name varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table tbl_type
--

INSERT INTO tbl_type (type_id, type_name) VALUES
(1, 'Blu_Ray'),
(2, 'Blu_Ray Combo Pack'),
(3, 'Blu_Ray 3D');

-- --------------------------------------------------------

--
-- Table structure for table tbl_user
--

CREATE TABLE tbl_user (
  user_id smallint(4) unsigned NOT NULL,
  user_fname varchar(50) NOT NULL,
  user_lname varchar(50) NOT NULL,
  user_name varchar(50) NOT NULL,
  user_pass varchar(50) NOT NULL,
  user_level varchar(25) NOT NULL,
  user_ip varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table tbl_user
--

INSERT INTO tbl_user (user_id, user_fname, user_lname, user_name, user_pass, user_level, user_ip) VALUES
(1, 'Justin William', 'Brunner', 'jbrunner', 'password', '1', '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table tbl_cast
--
ALTER TABLE tbl_cast
  ADD PRIMARY KEY (cast_id);

--
-- Indexes for table tbl_cat
--
ALTER TABLE tbl_cat
  ADD PRIMARY KEY (cat_id);

--
-- Indexes for table tbl_director
--
ALTER TABLE tbl_director
  ADD PRIMARY KEY (dir_id);

--
-- Indexes for table tbl_L_mc
--
ALTER TABLE tbl_L_mc
  ADD PRIMARY KEY (mc_id);

--
-- Indexes for table tbl_L_md
--
ALTER TABLE tbl_L_md
  ADD PRIMARY KEY (md_id);

--
-- Indexes for table tbl_movies
--
ALTER TABLE tbl_movies
  ADD PRIMARY KEY (movies_id);

--
-- Indexes for table tbl_rating
--
ALTER TABLE tbl_rating
  ADD PRIMARY KEY (rating_id);

--
-- Indexes for table tbl_studio
--
ALTER TABLE tbl_studio
  ADD PRIMARY KEY (studio_id);

--
-- Indexes for table tbl_type
--
ALTER TABLE tbl_type
  ADD PRIMARY KEY (type_id);

--
-- Indexes for table tbl_user
--
ALTER TABLE tbl_user
  ADD PRIMARY KEY (user_id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table tbl_cast
--
ALTER TABLE tbl_cast
  MODIFY cast_id smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table tbl_cat
--
ALTER TABLE tbl_cat
  MODIFY cat_id smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table tbl_director
--
ALTER TABLE tbl_director
  MODIFY dir_id smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table tbl_L_mc
--
ALTER TABLE tbl_L_mc
  MODIFY mc_id smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table tbl_L_md
--
ALTER TABLE tbl_L_md
  MODIFY md_id smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table tbl_movies
--
ALTER TABLE tbl_movies
  MODIFY movies_id smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table tbl_rating
--
ALTER TABLE tbl_rating
  MODIFY rating_id smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table tbl_studio
--
ALTER TABLE tbl_studio
  MODIFY studio_id smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table tbl_type
--
ALTER TABLE tbl_type
  MODIFY type_id smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table tbl_user
--
ALTER TABLE tbl_user
  MODIFY user_id smallint(4) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
