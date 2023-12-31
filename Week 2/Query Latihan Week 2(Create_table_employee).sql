--Buat table pegawai dan input data
CREATE TABLE employees (
  employee_id int,
  store_city_id int,
  first_name varchar(255),
  last_name varchar(255),
  email varchar(255),
  department varchar(255),
  hire_date date,
  salary_2021 int,
  salary_2022 int,
  salary_2023 int, 
  primary key(employee_id),
  -- Foreign key referencing the city table
  CONSTRAINT fk_city_emp
  	FOREIGN KEY (store_city_id)		
	REFERENCES city(city_id)
);

INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (1,5,'Willa','Grady','willa-grady@outlook.ca','Web Developer','2018-10-27',9344,9400,2775),
  (2,7,'Daphne','Fuller','d_fuller7591@yahoo.edu','Human Resources','2020-01-09',3532,7064,10547),
  (3,8,'Henry','Camden','camdenhenry@hotmail.org','Quality Assurance','2018-03-22',2433,7606,11525),
  (4,6,'Channing','Robert','robertchanning18@protonmail.ca','Asset Management','2019-11-17',7772,4146,2558),
  (5,2,'Tanek','Ocean','tanek-ocean5079@yahoo.net','Customer Service','2018-10-19',5145,11952,9702),
  (6,5,'Ursa','Gary',null,'Quality Assurance','2020-01-25',6689,5761,7853),
  (7,4,'Giacomo','Victor','v_giacomo3763@protonmail.net','Payroll','2018-06-05',5324,4831,8916),
  (8,8,'Christopher','Scott','cscott9124@google.ca','Data Scientist','2018-02-08',8045,6694,1843),
  (9,6,'Orlando','MacKensie','orlando-mackensie@yahoo.ca','Data Analyst','2019-03-03',6829,7614,12372),
  (10,9,'Calvin','Sandra','c_sandra@google.ca','Asset Management','2018-04-14',8365,11707,5733);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (11,5,'Inez','Tashya','tashyainez537@yahoo.org','Quality Assurance','2018-09-12',7764,5380,3929),
  (12,6,'Ima','Heather','heather-ima4730@hotmail.net','Accounting','2019-03-07',5323,3414,4148),
  (13,2,'Adam','Deborah',null,'Sales and Marketing','2018-05-10',2146,3186,7408),
  (14,5,'Bruno','Honorato','bruno.honorato@icloud.ca','Data Scientist','2020-01-10',7754,4224,5225),
  (15,9,'Aaron','Finn','aaronfinn@icloud.ca','Data Scientist','2018-08-08',8141,3497,5714),
  (16,11,'Neil','Norman','norman.neil7410@google.org','Media Relations','2019-01-27',2411,8585,5627),
  (17,4,'Mira','Amity','amity.mira1096@outlook.edu','Data Analyst','2018-02-07',5686,7251,8796),
  (18,5,'Cameron','Jameson','jameson-cameron1069@aol.com','Tech Support','2020-02-20',9246,4524,12083),
  (19,10,'Jameson','Eleanor','eleanor.jameson@google.couk','Payroll','2018-02-24',3513,1762,9641),
  (20,3,'Harper','Lydia','h_lydia@protonmail.couk','Advertising','2018-04-18',5867,1384,1936);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (21,7,'Nigel','Jason',null,'Asset Management','2019-10-13',8037,6659,4696),
  (22,6,'Xantha','Erin','erin-xantha280@icloud.edu','Tech Support','2019-11-04',4076,4435,12728),
  (23,8,'Jaime','Gray','j.gray2539@hotmail.net','Sales and Marketing','2018-05-01',6910,2747,9351),
  (24,11,'Benjamin','Charles','charlesbenjamin8718@yahoo.ca','Public Relations','2018-08-12',1836,6405,7285),
  (25,11,'Nash','Deanna','nash_deanna@yahoo.net','Data Scientist','2019-09-25',9724,4091,7418),
  (26,9,'McKenzie','Fiona','m_fiona9437@outlook.edu','Research and Development','2018-06-10',3675,2844,12177),
  (27,5,'Rylee','Jordan','j.rylee4606@outlook.ca','Data Analyst','2018-03-25',2279,11187,3563),
  (28,11,'Cruz','Leroy','c-leroy@aol.couk','Accounting','2019-09-22',5514,7930,7500),
  (29,8,'Wyatt','Omar','wyatt_omar@yahoo.ca','Advertising','2019-09-12',9590,9317,8201),
  (30,12,'Nolan','Kellie','n.kellie@google.com','Accounting','2020-02-14',8654,2187,12865);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (31,9,'Christopher','Violet','vchristopher@yahoo.ca','Legal Department','2019-11-01',9369,8921,12225),
  (32,6,'Ryder','Simone','s-ryder@google.org','Human Resources','2019-07-13',2689,6764,8748),
  (33,12,'Barry','Molly','molly_barry@hotmail.net','Software Engineer','2018-03-19',1019,7672,2138),
  (34,6,'Leigh','Carly','leigh-carly@icloud.com','Media Relations','2019-07-12',6873,6140,1550),
  (35,7,'Zeph','Edward','edwardzeph9558@hotmail.com','Media Relations','2019-05-10',1294,8061,12098),
  (36,6,'Darryl','Quyn','d_quyn@protonmail.edu','Advertising','2018-05-19',2022,4306,2309),
  (37,7,'Riley','Zane','z_riley6896@outlook.com','Payroll','2018-02-05',1948,7032,12408),
  (38,12,'Karyn','Brock','karyn_brock982@hotmail.com','Research and Development','2019-12-27',8930,3666,12536),
  (39,6,'Ruby','Kiona','r_kiona@outlook.com','Sales and Marketing','2020-01-24',7539,9168,12106),
  (40,5,'Brian','Jada','jada_brian7861@protonmail.com','Public Relations','2018-10-24',4423,5400,7428);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (41,13,'Brittany','Caryn','caryn-brittany8388@outlook.edu','Human Resources','2019-08-23',9703,10449,2729),
  (42,8,'Daria','Summer','d_summer6196@google.org','Data Analyst','2018-02-01',1401,5935,12648),
  (43,7,'Nora','Kennedy','nora.kennedy@aol.edu','Data Scientist','2018-03-18',5844,1585,12747),
  (44,4,'Erasmus','Dai','e_dai@outlook.com','Finances','2019-01-01',3465,3951,7071),
  (45,1,'Lenore','Marsden','marsden-lenore@hotmail.edu','Data Analyst','2019-05-19',9478,1553,12041),
  (46,7,'Jennifer','Chelsea','jennifer.chelsea9846@aol.edu','Payroll','2018-10-19',9968,9308,1521),
  (47,9,'Stacy','Colette','c_stacy9913@icloud.ca','Accounting','2019-12-02',6321,5894,11675),
  (48,13,'Cameron','Magee','cameronmagee@icloud.com','Asset Management','2018-05-18',9299,2422,12954),
  (49,13,'Chaney','Jackson','chaney-jackson8752@hotmail.ca','Customer Relations','2018-10-26',5544,8277,3770),
  (50,5,'Wayne','Dawn','dawn-wayne7851@protonmail.com','Data Analyst','2019-03-13',1333,5851,11062);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (51,16,'Gareth','Christian','christian_gareth@icloud.com','Sales and Marketing','2019-05-23',3923,1308,7388),
  (52,15,'Declan','Darius','ddeclan6358@yahoo.ca','Software Engineer','2019-09-15',9177,11188,10499),
  (53,14,'Amelia','Kerry','kamelia22@yahoo.ca','Media Relations','2018-05-12',1882,4389,9654),
  (54,18,'Tobias','Zachary','zacharytobias@google.com','Web Developer','2019-03-01',6330,6677,11551),
  (55,11,'Lacy','Anne',null,'Accounting','2020-02-17',4830,2577,9801),
  (56,1,'Keiko','Chiquita','k-chiquita@yahoo.com','Quality Assurance','2020-02-05',8041,11535,11637),
  (57,9,'Brynn','Zephr','zephrbrynn9450@icloud.couk','Media Relations','2018-08-17',9732,8661,8988),
  (58,8,'Fuller','Addison','addison.fuller@google.ca','Sales and Marketing','2019-03-27',3131,10044,8404),
  (59,4,'Blaze','Noel','b_noel@hotmail.couk','Finances','2019-01-26',4642,7247,10204),
  (60,6,'Dieter','Kylan','dkylan532@outlook.com','Finances','2018-04-03',7972,2997,12514);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (61,7,'Reece','Rhoda','r_rhoda4229@hotmail.org','Quality Assurance','2019-05-04',5477,11947,5884),
  (62,14,'Palmer','Winter','winter_palmer4319@outlook.edu','Media Relations','2018-12-20',3269,1334,7379),
  (63,3,'Abdul','Yasir','a_yasir565@aol.ca','Web Developer','2018-08-02',4834,10908,1872),
  (64,9,'Colby','Kasper','kaspercolby5222@hotmail.edu','Accounting','2018-07-16',4924,10021,9091),
  (65,14,'Cora','Iliana','iliana_cora@aol.couk','Research and Development','2019-05-13',5244,9224,7031),
  (66,6,'Caesar','Julian','julian.caesar@aol.couk','Software Engineer','2019-07-20',5215,8464,9290),
  (67,8,'Amir','Alisa',null,'Customer Relations','2019-02-01',5970,11325,8290),
  (68,14,'Thor','Shannon','shannon_thor@aol.net','Media Relations','2019-09-21',7921,9463,3364),
  (69,15,'Robert','Graham','r_graham@icloud.couk','Finances','2018-01-17',6713,6663,3568),
  (70,7,'Josiah','Alisa','alisajosiah@hotmail.couk','Data Scientist','2020-01-13',6976,5560,4099);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (71,15,'Addison','Kristen','a-kristen@hotmail.net','Customer Service','2018-01-27',6233,9060,11760),
  (72,10,'Hakeem','Winter','hwinter9992@protonmail.net','Finances','2019-10-22',3560,5053,9143),
  (73,5,'Mark','Nevada','m.nevada@google.edu','Customer Relations','2019-02-01',8597,4991,7927),
  (74,7,'Bianca','Craig','c-bianca@hotmail.ca','Web Developer','2019-05-26',2553,9318,3261),
  (75,10,'Chaney','Malcolm','malcolmchaney@icloud.org','Accounting','2019-10-14',7451,3180,6365),
  (76,2,'Malcolm','Aidan','aidan-malcolm1903@icloud.net','Accounting','2019-03-07',6135,2511,8325),
  (77,2,'Maxwell','Clio',null,'Data Analyst','2019-11-09',6816,4674,8406),
  (78,9,'Elaine','Ashely','aelaine@google.edu','Payroll','2018-01-07',4230,8254,6716),
  (79,5,'Ria','Yuli','ria_yuli4709@aol.edu','Tech Support','2018-06-07',8153,9093,11157),
  (80,3,'Clio','Cynthia','c_clio2418@protonmail.edu','Web Developer','2019-07-30',9863,9595,9187);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (81,7,'Farrah','Cooper','farrah.cooper9285@hotmail.couk','Media Relations','2020-02-17',5314,2574,10876),
  (82,16,'Lee','Valentine','l.valentine6623@google.com','Research and Development','2019-10-25',5130,2042,7040),
  (83,5,'Driscoll','Colin','cdriscoll4259@outlook.com','Media Relations','2019-12-17',5344,5410,6835),
  (84,5,'Rhona','Darryl','darryl-rhona1816@protonmail.org','Legal Department','2019-12-21',2695,6885,5578),
  (85,7,'Madeline','Galvin','m-galvin6021@hotmail.edu','Research and Development','2019-01-28',9420,7288,5033),
  (86,3,'Ahmed','Xena','ahmed.xena@protonmail.com','Media Relations','2019-10-24',4262,5473,5750),
  (87,5,'Hoyt','Jerry','h-jerry@hotmail.ca','Customer Service','2019-02-02',7370,4530,10480),
  (88,9,'Frances','Aquila','a_frances2632@google.ca','Sales and Marketing','2019-02-19',5320,3858,6516),
  (89,8,'Linda','Kylie','k.linda@aol.ca','Tech Support','2019-07-04',4601,10417,9566),
  (90,7,'Phyllis','Jerry','jphyllis@outlook.couk','Customer Relations','2019-10-23',7790,11484,6661);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (91,5,'Ashely','Brynne','brynne.ashely@aol.couk','Human Resources','2018-03-01',9014,7261,3580),
  (92,17,'Caleb','Cole','cole-caleb1330@outlook.org','Legal Department','2018-01-13',8711,11917,11197),
  (93,17,'Olympia','Henry','h_olympia@outlook.couk','Finances','2018-04-13',7658,5305,3491),
  (94,2,'Azalia','Robin','robin.azalia@outlook.couk','Media Relations','2020-01-24',8799,9822,2971),
  (95,8,'Shay','Isaac','ishay3959@protonmail.org','Sales and Marketing','2019-12-19',3982,10996,10235),
  (96,5,'Kevyn','Nolan','k_nolan@outlook.com','Customer Service','2019-11-19',1793,5246,5239),
  (97,6,'Kiona','Yael','kyael@hotmail.couk','Legal Department','2018-11-02',7271,6355,10014),
  (98,2,'Lane','Mason','mason_lane2898@outlook.ca','Payroll','2018-04-26',7256,3624,1824),
  (99,17,'Carlos','Cullen','carlos_cullen7365@aol.edu','Accounting','2018-12-22',9845,3271,7624),
  (100,5,'Amena','Fallon','fallon.amena@protonmail.net','Payroll','2018-08-30',7249,5105,10774);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (101,10,'Quamar','Duncan','q_duncan@outlook.couk','Media Relations','2018-07-07',6985,1866,2198),
  (102,8,'Roth','Galvin','galvinroth@protonmail.edu','Human Resources','2019-08-20',1342,10258,10926),
  (103,7,'Kyla','Damian','damian-kyla@hotmail.ca','Human Resources','2018-03-30',1647,1699,5337),
  (104,10,'Eagan','Kaye','eagan-kaye@outlook.edu','Asset Management','2018-06-01',7231,9985,10874),
  (105,18,'Buffy','Shana',null,'Tech Support','2019-04-03',3630,9837,5147),
  (106,4,'Quin','Prescott','prescott-quin8562@aol.net','Legal Department','2018-02-20',7677,11135,9433),
  (107,4,'Charity','Conan','ccharity@aol.org','Tech Support','2018-04-28',6671,10775,5401),
  (108,7,'Daryl','Giacomo','d_giacomo631@yahoo.edu','Software Engineer','2018-10-21',7551,6870,10709),
  (109,4,'Aileen','Micah','a_micah2283@aol.com','Quality Assurance','2019-10-21',3744,5586,5805),
  (110,6,'Nyssa','Nola','nyssa-nola6890@protonmail.edu','Customer Service','2018-06-28',7610,10954,10195);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (111,9,'Ross','Dale','dale_ross1112@protonmail.org','Legal Department','2019-10-22',4470,6704,11740),
  (112,9,'Larissa','Ainsley','ainsleylarissa1607@icloud.com','Web Developer','2018-02-23',6969,1257,12202),
  (113,9,'Elton','Catherine','c-elton2666@outlook.edu','Finances','2018-07-07',5966,8225,8313),
  (114,3,'Belle','Thane','belle-thane839@aol.edu','Quality Assurance','2018-03-23',7065,3494,12378),
  (115,18,'Alana','Cathleen','acathleen5739@yahoo.edu','Payroll','2018-09-15',1020,7544,4514),
  (116,2,'Jaquelyn','Oscar','oscar_jaquelyn9870@google.edu','Customer Service','2020-02-03',4801,11546,6533),
  (117,6,'Amos','Tucker','amos.tucker@aol.org','Web Developer','2018-10-13',7692,2765,3615),
  (118,4,'Madeson','Otto','omadeson@yahoo.net','Payroll','2018-09-09',3343,1674,6828),
  (119,9,'Kirestin','Russell','kirestin_russell@yahoo.org','Quality Assurance','2018-07-13',9082,3078,2159),
  (120,8,'Brendan','Nayda','nayda.brendan@google.ca','Media Relations','2018-02-01',5979,8110,11858);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (121,4,'Griffith','Benedict','g_benedict9974@icloud.edu','Accounting','2019-06-03',5492,1425,2319),
  (122,3,'Halla','Lars',null,'Software Engineer','2018-12-22',8421,6775,2852),
  (123,4,'Natalie','Ulysses','ulysses.natalie36@outlook.net','Quality Assurance','2020-02-05',2710,5229,4937),
  (124,7,'Patrick','Gisela','gisela_patrick6856@protonmail.net','Data Analyst','2018-10-06',4204,10134,5076),
  (125,3,'Maisie','Armando','maisie.armando@outlook.org','Tech Support','2018-11-06',7389,1937,7638),
  (126,5,'Gabriel','Aurora','g.aurora@google.edu','Customer Service','2019-07-27',2890,3420,3045),
  (127,4,'Alea','Denton','a_denton514@hotmail.edu','Public Relations','2019-08-09',3290,5210,11613),
  (128,10,'Dahlia','Hu','h_dahlia9265@icloud.ca','Data Analyst','2018-04-24',6139,2194,1874),
  (129,8,'Xaviera','Nell','xnell7971@hotmail.ca','Tech Support','2018-06-24',5455,11319,4742),
  (130,5,'Fulton','Roth','roth_fulton@hotmail.com','Advertising','2019-11-17',1194,7688,7129);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (131,4,'Dennis','Laith','l-dennis6517@google.couk','Accounting','2018-01-25',9550,7029,8450),
  (132,3,'Macy','Elton','m_elton@icloud.net','Advertising','2018-03-22',3225,1229,3398),
  (133,2,'Mikayla','Zachary','m.zachary@yahoo.com','Software Engineer','2018-09-09',5897,6532,10665),
  (134,3,'Malachi','India','malachi_india@icloud.net','Tech Support','2019-04-19',2337,6819,8943),
  (135,5,'Idona','Channing','i-channing@hotmail.org','Tech Support','2019-06-29',1849,8185,10574),
  (136,7,'Signe','Jamalia','sjamalia6343@aol.net','Data Scientist','2019-11-21',1859,4129,2936),
  (137,9,'Ria','Knox','knox_ria7809@outlook.net','Human Resources','2019-08-04',4353,10375,5615),
  (138,7,'Linda','Rashad','linda.rashad1384@protonmail.ca','Payroll','2019-06-27',9292,8631,7256),
  (139,2,'Leslie','Raymond','l.raymond@google.edu','Advertising','2019-11-12',6826,11159,7738),
  (140,8,'Beau','Lyle','lylebeau@protonmail.couk','Tech Support','2018-06-08',4710,6467,4303);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (141,9,'Jelani','Frances','jfrances5278@aol.couk','Media Relations','2019-01-23',6474,1908,6529),
  (142,3,'Walker','Brennan','b-walker@yahoo.couk','Accounting','2018-03-02',7665,4106,1461),
  (143,2,'Basia','Carly','carly.basia4859@outlook.edu','Research and Development','2018-10-28',7024,5610,3588),
  (144,8,'Hashim','Brett','brett.hashim1295@yahoo.ca','Media Relations','2019-02-09',8025,5005,3993),
  (145,10,'Florence','Jocelyn','florence_jocelyn6817@outlook.net','Data Analyst','2018-07-07',2264,8390,4209),
  (146,8,'Stacey','Doris','doris_stacey385@aol.ca','Human Resources','2019-03-25',1138,7760,7424),
  (147,8,'Kylie','Stuart',null,'Legal Department','2018-06-23',7723,6143,6773),
  (148,2,'Kuame','Whilemina','whilemina-kuame9842@google.couk','Public Relations','2019-07-01',8416,10426,5686),
  (149,9,'Brian','Hiroko','h_brian@aol.ca','Asset Management','2018-05-31',7601,3313,5568),
  (150,8,'Martha','Zachary','zachary_martha652@hotmail.edu','Legal Department','2018-07-13',9131,8934,3436);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (151,2,'Teegan','Cassady','teegan.cassady9044@outlook.org','Accounting','2018-12-07',4888,9565,7447),
  (152,1,'Ciaran','August','aciaran8620@icloud.com','Public Relations','2019-09-12',8054,10156,10381),
  (153,5,'Kamal','Brian',null,'Customer Relations','2019-12-23',9848,3410,8532),
  (154,2,'Tate','Jakeem','jakeem-tate@aol.com','Tech Support','2018-07-09',4351,10041,3062),
  (155,1,'Bevis','Ramona','bevis_ramona1783@protonmail.edu','Sales and Marketing','2019-03-03',9492,11697,3589),
  (156,9,'Fay','Kareem','f_kareem520@icloud.ca','Accounting','2018-05-16',3980,10680,12657),
  (157,2,'Kirestin','Michael','kirestin_michael9518@icloud.ca','Customer Relations','2018-06-20',8060,5353,2988),
  (158,9,'Dominic','Tatyana','tatyana_dominic7103@aol.org','Customer Relations','2018-03-27',3979,6948,2477),
  (159,1,'Jared','Caesar','caesarjared2281@protonmail.net','Research and Development','2020-01-13',2736,3373,4462),
  (160,8,'Garrett','Vera','garrettvera3243@yahoo.ca','Asset Management','2019-10-12',9051,9257,6872);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (161,5,'Cullen','Isabella','c_isabella5588@hotmail.edu','Asset Management','2018-10-05',4009,9759,3711),
  (162,3,'Hadassah','Ainsley','ainsleyhadassah@aol.ca','Finances','2019-01-17',2357,10570,10480),
  (163,9,'Raven','Leroy','raven_leroy3145@yahoo.edu','Customer Service','2018-08-18',8138,4494,11155),
  (164,2,'Jin','Brynne','bjin@icloud.org','Customer Service','2019-02-05',5219,2664,9403),
  (165,7,'Sacha','Chester','schester9601@aol.net','Media Relations','2019-10-22',5756,1585,9688),
  (166,8,'Armand','Rhonda','rhonda-armand3688@yahoo.edu','Data Analyst','2020-01-28',1346,10314,2104),
  (167,8,'Hedley','Alisa','alisahedley@hotmail.org','Payroll','2019-05-27',8727,11849,8076),
  (168,5,'Trevor','Duncan','d_trevor@protonmail.net','Customer Service','2018-05-21',6878,5580,4358),
  (169,9,'Olivia','Nina','o_nina4496@outlook.com','Public Relations','2018-10-20',2362,5926,4045),
  (170,7,'Kiona','Hector','k.hector@yahoo.org','Advertising','2018-11-11',7002,2189,2577);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (171,5,'Serina','Leandra','l-serina@hotmail.couk','Web Developer','2018-05-21',1711,10789,10311),
  (172,3,'Lewis','Brielle','brielle_lewis4473@icloud.couk','Tech Support','2019-05-19',1390,8183,12784),
  (173,8,'Dahlia','Kai','kai.dahlia@hotmail.ca','Legal Department','2018-01-08',1328,5007,10155),
  (174,2,'Isaiah','Palmer','pisaiah7091@google.net','Quality Assurance','2018-04-09',7548,11785,3204),
  (175,8,'Roanna','Mikayla','rmikayla@outlook.edu','Data Analyst','2019-04-13',6593,8847,7352),
  (176,5,'Sandra','Vivian','vivian-sandra2293@google.org','Web Developer','2018-11-25',1868,4047,10520),
  (177,4,'Guy','Craig','guy_craig@yahoo.net','Data Scientist','2018-01-15',5629,3429,5669),
  (178,7,'Eve','Conan','e-conan@yahoo.com','Web Developer','2019-12-28',9771,7023,1480),
  (179,6,'Erasmus','Isabelle','eisabelle@hotmail.org','Accounting','2019-12-16',2601,1414,4655),
  (180,6,'Haviva','Richard','rhaviva@google.couk','Software Engineer','2018-09-04',3382,1218,12185);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (181,2,'Fallon','Benjamin','benjaminfallon@hotmail.net','Data Analyst','2018-06-03',9470,1590,11873),
  (182,4,'Doris','Mari','dorismari@protonmail.edu','Quality Assurance','2019-12-17',2736,4593,12272),
  (183,5,'Anjolie','Clementine','clementineanjolie6629@hotmail.couk','Customer Service','2019-06-10',4664,10442,7662),
  (184,10,'Oscar','Cruz','ocruz94@hotmail.com','Customer Service','2018-02-09',4065,8242,10107),
  (185,5,'Daphne','Bradley','bradley.daphne@google.net','Human Resources','2019-12-08',4417,9723,9141),
  (186,3,'Kiayada','Stuart','k.stuart9958@yahoo.edu','Software Engineer','2019-02-11',5751,8315,4989),
  (187,7,'Ferris','Damian','ferris.damian@outlook.net','Asset Management','2018-01-07',7534,11283,12706),
  (188,6,'Noah','Lionel','lnoah@icloud.com','Research and Development','2018-08-18',7338,3484,8704),
  (189,10,'Stone','Ralph','s_ralph8913@protonmail.org','Customer Relations','2019-09-28',9946,3737,3682),
  (190,3,'Harrison','Coby','h.coby4815@google.couk','Media Relations','2018-10-12',5635,3890,12018);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (191,6,'Jorden','Cailin','c-jorden6445@outlook.couk','Tech Support','2018-10-26',4907,6909,5627),
  (192,1,'Buckminster','Ryan','buckminster-ryan5428@icloud.net','Tech Support','2018-03-05',5853,3733,3120),
  (193,2,'Ivor','Shaeleigh','ishaeleigh48@google.net','Tech Support','2018-04-27',5496,11368,12503),
  (194,3,'Nita','Jordan','jordan.nita@yahoo.com','Tech Support','2018-10-19',6185,4045,7014),
  (195,3,'Jerome','Fitzgerald','j.fitzgerald1349@outlook.couk','Media Relations','2018-03-06',8702,5237,8798),
  (196,9,'Maya','Alan','alanmaya5291@google.net','Web Developer','2019-01-06',3918,7575,2959),
  (197,5,'Jescie','Philip','j_philip@yahoo.ca','Advertising','2019-07-14',3912,2085,9555),
  (198,6,'Victoria','Jameson','victoriajameson@hotmail.com','Quality Assurance','2019-10-20',9630,6111,8661),
  (199,9,'Dustin','Kirestin','dustinkirestin4770@protonmail.edu','Research and Development','2018-05-18',2112,4807,6693),
  (200,3,'Kirsten','Mark','k-mark47@protonmail.ca','Tech Support','2018-04-24',5687,1653,12120);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (201,1,'Dalton','Zia','d-zia3006@google.org','Research and Development','2019-10-27',6958,1511,8108),
  (202,9,'Hamilton','Hammett','h_hammett@outlook.ca','Legal Department','2019-11-18',8469,6348,10946),
  (203,10,'Zena','Minerva','zena.minerva4080@icloud.net','Quality Assurance','2018-03-10',9946,10092,9000),
  (204,6,'Justina','Wing','w-justina543@yahoo.org','Legal Department','2018-12-04',9468,2207,10388),
  (205,1,'Yasir','Elton','elton.yasir3094@hotmail.couk','Sales and Marketing','2019-06-12',3384,5336,7388),
  (206,9,'Kiona','Oprah','kionaoprah@icloud.ca','Advertising','2020-02-12',5803,2225,11545),
  (207,2,'Florence','Kaseem','fkaseem@aol.net','Customer Service','2019-11-28',3458,2037,7164),
  (208,8,'Veda','Denton','dentonveda@aol.couk','Asset Management','2018-01-15',3204,10328,2844),
  (209,4,'Daryl','Brody','d-brody4608@hotmail.couk','Software Engineer','2018-11-10',8649,1274,8449),
  (210,7,'Germane','Zenia','g.zenia4946@aol.edu','Customer Relations','2018-12-12',1327,1319,8919);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (211,4,'Keith','Iliana','iliana.keith@google.org','Data Scientist','2018-11-05',1362,7336,3684),
  (212,4,'Fallon','Kelsey','fallon.kelsey6882@yahoo.net','Asset Management','2018-07-03',6974,4481,7183),
  (213,6,'Adena','Ira','iraadena@protonmail.net','Customer Service','2018-08-18',4697,2273,8064),
  (214,7,'Fiona','Clark','f-clark4083@aol.ca','Customer Service','2018-11-14',7066,10539,12861),
  (215,2,'Christen','Mohammad','cmohammad@yahoo.ca','Tech Support','2020-01-23',7992,1279,2816),
  (216,8,'Henry','Lawrence','h_lawrence5085@aol.edu','Finances','2018-04-22',7427,10457,12825),
  (217,2,'Nadine','Keefe','keefe-nadine5798@protonmail.com','Media Relations','2018-07-08',2859,9725,1816),
  (218,6,'Walter','Ivan','iwalter8547@outlook.net','Legal Department','2019-05-01',7557,2892,2207),
  (219,2,'Sylvia','Victoria','victoria_sylvia@protonmail.edu','Legal Department','2018-08-20',8650,2133,1849),
  (220,6,'Benedict','Nathaniel','nathanielbenedict@aol.couk','Finances','2018-08-31',8540,6467,11450);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (221,7,'Blake','Yolanda','b.yolanda@hotmail.org','Sales and Marketing','2019-05-26',6898,5539,5134),
  (222,8,'Inga','Laurel','laurelinga@yahoo.com','Payroll','2019-10-19',2935,7692,10276),
  (223,7,'Evangeline','Ezekiel','e_evangeline@hotmail.net','Legal Department','2018-05-26',2690,5046,12615),
  (224,1,'Chiquita','Emerson','emerson_chiquita8677@protonmail.ca','Sales and Marketing','2018-06-26',9941,3133,7021),
  (225,7,'Amity','August','amityaugust7634@google.couk','Customer Service','2019-04-27',5235,4213,1979),
  (226,7,'Melodie','Alec','alec.melodie@icloud.net','Public Relations','2018-05-23',7262,11405,9358),
  (227,9,'Ahmed','Zachary','ahmedzachary7187@yahoo.com','Legal Department','2019-07-17',3432,7463,6518),
  (228,3,'Judah','Karly','k.judah@protonmail.com','Legal Department','2019-02-25',5560,2077,12259),
  (229,2,'Akeem','Raymond','r.akeem@protonmail.org','Customer Service','2018-04-06',3751,2484,3406),
  (230,3,'Abdul','Tatum','tatum_abdul777@icloud.org','Customer Service','2018-09-27',9691,4259,5355);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (231,7,'Erin','Hannah','erin_hannah@protonmail.ca','Asset Management','2019-10-26',6878,3945,6994),
  (232,3,'Ivory','Brett','bivory@protonmail.com','Quality Assurance','2019-03-13',4505,3681,12591),
  (233,9,'Elijah','Myra','e.myra@google.edu','Research and Development','2018-11-08',8538,7233,5983),
  (234,10,'Joshua','Cecilia','c.joshua7511@yahoo.edu','Accounting','2018-04-04',4297,5525,11804),
  (235,8,'Sara','Desiree','sara_desiree6196@yahoo.edu','Asset Management','2019-04-23',7281,5581,7972),
  (236,8,'Anthony','Adena','a_adena201@yahoo.org','Web Developer','2018-08-01',4645,4754,7977),
  (237,6,'Dieter','Brendan','dbrendan772@google.com','Customer Service','2018-06-06',1658,1898,6683),
  (238,6,'Richard','Olga','rolga2342@protonmail.couk','Finances','2019-02-18',2163,8707,8656),
  (239,5,'Hope','Leroy','h.leroy@protonmail.ca','Research and Development','2019-12-25',8933,7685,2086),
  (240,5,'Dieter','Jael','j-dieter8474@aol.couk','Customer Relations','2019-11-15',2958,10213,5714);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (241,2,'Dalton','Michelle','daltonmichelle@protonmail.edu','Data Analyst','2018-04-16',4858,2652,2223),
  (242,8,'Mariam','MacKensie','mackensie-mariam6859@google.net','Research and Development','2019-08-16',6535,5043,9009),
  (243,4,'Sydney','Hammett','sydneyhammett4843@icloud.ca','Data Scientist','2019-02-18',2383,7324,6907),
  (244,9,'Jaime','Damon','j.damon768@icloud.ca','Finances','2019-06-25',5383,6880,12247),
  (245,7,'Perry','Patrick','ppatrick9458@aol.ca','Tech Support','2018-03-03',4236,8732,6366),
  (246,3,'Sean','Arthur','sarthur2375@yahoo.org','Customer Service','2018-09-22',7020,6077,8608),
  (247,7,'Abel','Barrett','b-abel@yahoo.ca','Customer Service','2019-11-03',5955,10923,12169),
  (248,9,'Perry','Mufutau','mufutau-perry@yahoo.com','Data Scientist','2018-12-30',4759,7955,12085),
  (249,5,'Macaulay','Lacy','lacy.macaulay@outlook.couk','Web Developer','2019-07-03',4905,6885,12896),
  (250,8,'Jordan','Jacob','jacobjordan1332@aol.org','Tech Support','2019-01-23',9610,11203,7297);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (251,5,'Alec','Dorian','dorian-alec1803@hotmail.ca','Quality Assurance','2019-08-30',1802,2535,2205),
  (252,8,'Ivy','Theodore','ivy_theodore4303@hotmail.edu','Customer Relations','2020-02-03',2523,6549,9945),
  (253,7,'Graiden','Deborah','d.graiden7552@hotmail.org','Human Resources','2018-04-23',6677,5697,4791),
  (254,8,'Tad','Noelle','noelle_tad@hotmail.ca','Payroll','2019-06-04',5313,11133,7681),
  (255,6,'Jermaine','Paloma','j.paloma286@icloud.couk','Payroll','2018-12-12',9936,9571,11301),
  (256,9,'Robin','Stephanie','r-stephanie727@protonmail.couk','Legal Department','2018-09-13',6186,2358,12999),
  (257,10,'Mira','Scarlet','scarlet_mira2366@hotmail.ca','Customer Relations','2018-09-29',4174,9689,3005),
  (258,2,'Angela','Rinah','rangela@protonmail.com','Customer Relations','2018-04-15',7692,5844,7831),
  (259,4,'Todd','Shaeleigh','shaeleigh.todd@icloud.net','Asset Management','2018-07-30',4530,10775,10302),
  (260,5,'Lucas','Vance','l-vance6485@hotmail.net','Legal Department','2019-05-28',7284,11785,3716);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (261,5,'Brielle','Harrison','b.harrison@protonmail.edu','Legal Department','2019-12-14',4663,1669,12669),
  (262,4,'Elizabeth','Nehru','nehru-elizabeth@protonmail.com','Finances','2018-03-18',3470,9791,11349),
  (263,3,'Illiana','Allen','allen.illiana@aol.net','Quality Assurance','2019-12-27',4701,9394,1349),
  (264,1,'Wendy','Sheila','sheila-wendy@aol.com','Public Relations','2019-07-01',8935,4980,1511),
  (265,2,'Duncan','Harper','harperduncan9471@outlook.org','Quality Assurance','2019-10-23',4641,9726,12588),
  (266,10,'Vielka','Leslie','v.leslie@google.edu','Payroll','2019-03-29',3066,9125,9555),
  (267,1,'Bernard','Nigel','nigel-bernard@aol.ca','Public Relations','2018-08-06',6740,3180,4350),
  (268,8,'Kaseem','Lawrence','k_lawrence3764@yahoo.ca','Research and Development','2018-05-14',5186,9875,4042),
  (269,6,'Ifeoma','Nita','ifeoma-nita@aol.com','Finances','2018-04-25',8988,7734,11772),
  (270,1,'Quentin','Caldwell','q.caldwell4226@google.net','Web Developer','2018-06-27',8500,6384,3489);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (271,7,'Whitney','Hakeem','h_whitney@yahoo.edu','Quality Assurance','2018-07-30',3716,4800,6407),
  (272,3,'Nomlanga','Nehru','nomlanga_nehru@yahoo.org','Software Engineer','2019-08-18',9475,9945,1549),
  (273,6,'Nola','Barrett','nola_barrett@protonmail.org','Web Developer','2019-05-04',4440,1426,8433),
  (274,4,'Tanya','Nayda','tnayda1138@google.net','Software Engineer','2019-04-17',3096,3993,11947),
  (275,5,'Shaeleigh','Chester','c_shaeleigh@google.org','Sales and Marketing','2019-03-21',1676,11839,10191),
  (276,9,'Orli','Aurelia','o_aurelia@icloud.com','Software Engineer','2019-07-21',2048,7729,6470),
  (277,1,'Jordan','Griffith','g.jordan@aol.org','Sales and Marketing','2019-01-19',1166,4000,7882),
  (278,5,'Jasper','Portia','j_portia@outlook.couk','Advertising','2018-09-30',2036,5137,5385),
  (279,1,'Doris','Lucas','doris_lucas6057@yahoo.net','Data Analyst','2018-08-11',3290,10435,12220),
  (280,3,'Hyatt','Quemby','hquemby5849@icloud.com','Public Relations','2018-09-18',7779,3483,2807);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (281,4,'Uriel','Raja','r-uriel@hotmail.edu','Sales and Marketing','2019-06-04',5232,10338,2396),
  (282,8,'Zane','Winter','zane-winter1405@yahoo.couk','Accounting','2018-09-23',8024,7474,4992),
  (283,5,'Byron','Gabriel','bgabriel3169@protonmail.net','Payroll','2019-12-13',8634,11494,7428),
  (284,7,'Colorado','Shay','cshay@google.couk','Asset Management','2019-03-27',9009,7105,6102),
  (285,8,'Ina','Dora','ina_dora8994@protonmail.couk','Legal Department','2019-01-05',4529,7559,6598),
  (286,3,'Joan','Kathleen','kathleen.joan2552@outlook.net','Tech Support','2018-09-30',3931,7369,12384),
  (287,8,'Evan','Acton','evan-acton5052@google.ca','Customer Relations','2018-05-02',8075,2943,12882),
  (288,3,'Kyle','Logan','logan-kyle@outlook.net','Tech Support','2018-03-22',7101,9965,7347),
  (289,3,'Brooke','Christine','cbrooke@outlook.net','Research and Development','2019-08-24',1427,8912,7820),
  (290,8,'Rajah','Brenna','r_brenna6094@google.com','Payroll','2019-08-23',1205,7272,3661);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (291,9,'Danielle','Daphne','daphnedanielle@google.com','Customer Service','2019-09-03',3217,2672,4231),
  (292,7,'Kyla','Daphne','k_daphne@yahoo.com','Public Relations','2019-11-07',8913,11002,8178),
  (293,8,'Brett','Hedda','hbrett@aol.org','Software Engineer','2018-10-01',3192,7038,6007),
  (294,4,'Vivian','Ivana','ivana_vivian511@hotmail.edu','Human Resources','2019-06-28',3578,10857,9214),
  (295,5,'Sylvia','Magee','sylvia.magee539@outlook.com','Media Relations','2018-10-26',1023,3736,5091),
  (296,5,'Sade','Honorato','s.honorato4540@protonmail.couk','Payroll','2018-09-24',5861,2938,4770),
  (297,9,'Ferris','Melvin','mferris@protonmail.net','Public Relations','2019-06-19',8191,4736,2247),
  (298,8,'Debra','Chancellor','debrachancellor4660@icloud.net','Tech Support','2018-09-25',5922,1885,8122),
  (299,7,'Fleur','Angela','f.angela@outlook.net','Media Relations','2019-10-19',6661,9780,8145),
  (300,5,'Nina','Evelyn','evelyn.nina1839@google.org','Customer Service','2019-02-20',5293,1697,10151);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (301,10,'Savannah','Joel','savannah.joel@hotmail.couk','Media Relations','2019-05-31',2234,4233,4095),
  (302,10,'Murphy','Karleigh','k_murphy7939@icloud.org','Public Relations','2020-01-04',6351,5916,6553),
  (303,10,'Elmo','Craig','e.craig@yahoo.couk','Accounting','2018-09-27',6053,2065,5496),
  (304,5,'Stephanie','Denise','sdenise6657@hotmail.edu','Web Developer','2018-12-13',8212,10737,11280),
  (305,8,'Micah','Cathleen','micahcathleen@outlook.ca','Payroll','2018-10-10',2603,10079,2361),
  (306,6,'Ali','Erasmus','a-erasmus@yahoo.ca','Payroll','2018-05-23',5207,6216,12444),
  (307,8,'Quinn','Imani','qimani@protonmail.edu','Customer Relations','2019-12-13',6351,2224,6204),
  (308,7,'Keiko','Shana','shana.keiko7518@icloud.net','Customer Relations','2019-08-07',3914,1439,5495),
  (309,7,'Alexa','Maia','malexa@protonmail.couk','Advertising','2018-11-04',1109,7031,9981),
  (310,9,'Cody','Branden','branden-cody8278@icloud.org','Tech Support','2019-08-22',5600,8262,1536);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (311,2,'Mara','Dale','mara_dale@aol.com','Legal Department','2019-04-10',7071,10833,11993),
  (312,9,'William','Cody','w-cody@aol.couk','Customer Service','2020-01-29',4881,8490,12310),
  (313,5,'David','Basil','basil_david9992@outlook.org','Customer Relations','2018-10-19',7092,7410,8978),
  (314,2,'Amir','Ali','aliamir6459@aol.couk','Data Scientist','2018-12-14',5752,7149,1918),
  (315,6,'Holmes','Megan','megan_holmes@yahoo.couk','Software Engineer','2018-05-07',6546,9288,7103),
  (316,6,'Edan','Keaton','keaton.edan@aol.ca','Quality Assurance','2019-12-22',4701,7546,8576),
  (317,8,'Ethan','Cole','cole-ethan@icloud.org','Data Analyst','2019-11-23',7134,5618,2204),
  (318,4,'Ian','Hillary','hillaryian@protonmail.couk','Quality Assurance','2018-11-30',8055,6749,10195),
  (319,7,'Tanner','Stella','t.stella@google.org','Legal Department','2019-07-06',6937,8627,1508),
  (320,2,'Yael','Jarrod','jarrod.yael8564@yahoo.edu','Finances','2018-05-22',6442,11720,1341);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (321,5,'Cara','Maia','c_maia@google.ca','Software Engineer','2019-08-11',9590,11746,4449),
  (322,3,'William','Yuri','ywilliam@google.net','Research and Development','2018-05-25',9871,7968,1311),
  (323,6,'Tamara','Keane','ktamara@yahoo.com','Tech Support','2018-07-28',6118,5772,8606),
  (324,5,'Jolene','Rhiannon','rhiannonjolene@yahoo.net','Web Developer','2019-04-02',4424,10326,6070),
  (325,9,'Ramona','Porter','porter-ramona9576@outlook.couk','Media Relations','2019-02-14',8179,6099,4527),
  (326,6,'Yeo','Nathan','yeonathan@aol.couk','Sales and Marketing','2018-03-28',1610,10495,5743),
  (327,5,'Scarlett','Whitney','swhitney9220@protonmail.org','Media Relations','2018-07-29',4899,11030,6571),
  (328,7,'Leah','Cade','lcade8334@yahoo.edu','Legal Department','2018-05-14',3090,11697,7300),
  (329,8,'Abdul','Hu','a.hu@aol.ca','Data Analyst','2018-05-18',4748,4148,3613),
  (330,6,'Bo','Emerson','emerson-bo@outlook.edu','Finances','2018-05-13',1714,10288,7751);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (331,4,'Christopher','Rhiannon','rhiannon.christopher@yahoo.org','Tech Support','2019-05-24',8946,9896,6764),
  (332,5,'Cyrus','Bianca','cyrus-bianca@hotmail.com','Customer Relations','2019-02-06',9019,8377,6767),
  (333,5,'Maryam','Drake','maryamdrake540@aol.com','Customer Relations','2018-10-09',7835,1322,7554),
  (334,7,'Edward','MacKenzie','mackenzie-edward@yahoo.ca','Public Relations','2018-03-29',2001,5348,7211),
  (335,9,'Jarrod','Melvin','j_melvin3652@icloud.ca','Software Engineer','2018-07-22',1232,3144,3424),
  (336,1,'Wynne','Beau','b.wynne5868@yahoo.net','Media Relations','2018-11-29',5649,8682,12176),
  (337,8,'Irene','Brett','birene@outlook.org','Data Analyst','2020-01-05',4924,1621,6585),
  (338,2,'Wayne','Kyle','wayne.kyle5889@hotmail.com','Payroll','2019-11-21',9304,1436,11767),
  (339,1,'Lars','Jennifer','j_lars@outlook.org','Tech Support','2018-12-16',3609,6666,4978),
  (340,7,'Alvin','Orli','aorli@hotmail.ca','Advertising','2018-11-15',7574,3263,8577);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (341,2,'Rigel','Maxwell','rigelmaxwell@hotmail.com','Accounting','2019-04-12',6564,5290,6115),
  (342,1,'Eve','Carson','carson.eve5390@outlook.ca','Quality Assurance','2018-10-19',9551,9739,6766),
  (343,8,'Keelie','Alana','alana.keelie@google.net','Customer Service','2019-07-09',1485,4217,12133),
  (344,3,'Colin','Ezekiel','ezekiel-colin@icloud.edu','Tech Support','2020-02-01',1225,10385,6842),
  (345,9,'Jaime','Jillian','jillian_jaime@icloud.edu','Customer Service','2018-03-03',2995,9199,9175),
  (346,6,'Velma','Naomi','n.velma@hotmail.org','Tech Support','2018-07-06',2833,5583,12631),
  (347,9,'Jesse','Samson','j.samson1556@aol.org','Advertising','2018-01-25',2074,10636,8503),
  (348,2,'Sierra','Yuli','syuli7333@protonmail.net','Software Engineer','2018-02-16',1762,7607,6690),
  (349,6,'Bruno','Yardley','byardley5585@icloud.edu','Research and Development','2019-06-26',5559,1370,5764),
  (350,4,'Cecilia','Fleur','f.cecilia2097@aol.edu','Advertising','2019-08-04',3360,7832,7567);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (351,10,'Jared','Giacomo','giacomo_jared8074@icloud.couk','Customer Relations','2019-09-04',2260,1385,5726),
  (352,7,'Clinton','Farrah','c_farrah@icloud.couk','Payroll','2019-02-01',3784,5999,12175),
  (353,8,'Channing','Ignacia','ignacia-channing@google.couk','Web Developer','2019-06-16',6942,11415,9736),
  (354,5,'Liberty','Caleb','caleb-liberty723@hotmail.couk','Customer Relations','2019-09-08',2315,5726,6437),
  (355,3,'Keith','Kareem','k_keith@icloud.edu','Customer Service','2018-02-04',3549,10407,7312),
  (356,6,'Clementine','Farrah','farrah.clementine9857@aol.edu','Software Engineer','2018-07-04',6141,7060,10900),
  (357,6,'Omar','Quinn','quinn-omar6620@aol.ca','Tech Support','2018-12-01',7084,2389,3126),
  (358,5,'Hadley','Lila','h-lila5337@outlook.edu','Public Relations','2018-11-29',3661,4647,9909),
  (359,8,'Lara','Gabriel','l.gabriel3264@protonmail.ca','Advertising','2019-05-01',2672,3056,3734),
  (360,6,'Alice','Samuel','alice-samuel8097@aol.net','Public Relations','2019-02-09',3603,6491,6353);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (361,5,'Bree','Signe','signe_bree466@google.org','Finances','2018-12-18',4383,7065,7550),
  (362,6,'Robin','Carlos','carlos_robin866@outlook.net','Customer Relations','2018-03-15',8951,7924,12785),
  (363,9,'Reece','Aurelia','aurelia.reece922@google.edu','Customer Relations','2019-03-30',6346,11943,10752),
  (364,9,'Gillian','Sacha','gillian-sacha5713@hotmail.org','Payroll','2019-04-19',3409,1201,3773),
  (365,10,'Stephen','Neve','s-neve9701@aol.couk','Data Analyst','2019-08-07',7072,4330,10458),
  (366,5,'Rahim','Hilel','h.rahim@google.couk','Customer Service','2018-01-05',8911,11646,10938),
  (367,10,'Nash','Cailin','n.cailin@hotmail.org','Tech Support','2018-08-12',4962,4328,10031),
  (368,6,'Madeson','Kirby','m-kirby998@aol.net','Tech Support','2018-02-26',8947,9923,2890),
  (369,4,'Kermit','Jameson','k.jameson@icloud.net','Accounting','2019-04-22',9899,9757,3322),
  (370,2,'Quin','Mark','m_quin@google.edu','Payroll','2018-04-03',6925,8921,11356);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (371,3,'Ezekiel','Amber','e-amber5387@protonmail.couk','Public Relations','2018-05-09',2409,9074,3013),
  (372,1,'Chaim','Russell','russell.chaim4513@aol.couk','Tech Support','2019-06-20',4392,2476,3730),
  (373,4,'Calista','Michelle','m_calista5217@icloud.couk','Legal Department','2019-01-14',5408,9509,11356),
  (374,4,'Deborah','Nita','ndeborah317@icloud.edu','Tech Support','2018-09-06',3970,5750,9780),
  (375,6,'Bruno','Gretchen','gbruno7942@hotmail.com','Data Analyst','2019-04-21',6259,3661,9808),
  (376,6,'Kaitlin','Kaseem','kkaseem@hotmail.net','Advertising','2019-04-03',2603,4876,4532),
  (377,8,'Bernard','Dara','dara.bernard@google.edu','Software Engineer','2020-02-06',4691,10113,6750),
  (378,2,'Walker','MacKenzie','m_walker7730@protonmail.org','Legal Department','2019-08-15',8455,5512,5106),
  (379,6,'Yetta','Tucker','yettatucker@google.ca','Advertising','2019-07-05',8362,10422,7385),
  (380,2,'Maite','Tanisha','tanisha.maite@icloud.ca','Sales and Marketing','2019-07-03',8374,7258,2405);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (381,5,'Hall','Mannix','mannix.hall1653@yahoo.couk','Human Resources','2018-02-08',5149,1954,4968),
  (382,9,'Elijah','Maxwell','elijah_maxwell5577@protonmail.couk','Web Developer','2019-07-06',9784,2758,4171),
  (383,1,'Cameran','Imogene','imogenecameran@protonmail.edu','Asset Management','2019-04-10',3183,4600,7578),
  (384,1,'Baxter','Harriet','harriet-baxter2144@aol.edu','Web Developer','2019-02-07',3292,9713,1420),
  (385,8,'Daquan','Quin','daquanquin4382@hotmail.com','Legal Department','2019-12-09',3427,4695,5253),
  (386,4,'Jenna','Liberty','l-jenna1740@yahoo.couk','Human Resources','2019-01-15',4255,4069,8289),
  (387,3,'Henry','Sacha','henry.sacha@aol.net','Advertising','2019-04-30',8563,7360,9679),
  (388,2,'Jakeem','Logan','j.logan9396@protonmail.net','Public Relations','2018-08-05',6715,6827,5935),
  (389,2,'Merrill','Kennan','kennan_merrill@hotmail.ca','Public Relations','2018-10-06',2484,11837,2772),
  (390,4,'Judith','Kirk','j-kirk@icloud.couk','Tech Support','2019-02-18',5978,5423,6043);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (391,10,'Brian','Austin','brianaustin930@icloud.org','Research and Development','2018-02-24',4536,11493,9089),
  (392,3,'Logan','Evangeline','evangeline-logan8345@outlook.ca','Software Engineer','2019-12-02',7654,10242,3530),
  (393,9,'Patricia','Tucker','patriciatucker3013@hotmail.couk','Finances','2018-09-16',6531,11850,11259),
  (394,7,'Trevor','Adele','adele-trevor1059@outlook.ca','Web Developer','2018-02-14',2856,4815,11609),
  (395,3,'Isaiah','Gisela','isaiah-gisela@aol.net','Data Analyst','2020-01-04',4585,6586,7397),
  (396,4,'Maite','Maris','m-maite@icloud.org','Tech Support','2019-02-25',2908,2158,9560),
  (397,4,'Hayes','Xenos','h.xenos8136@google.net','Software Engineer','2018-03-04',2655,6530,5447),
  (398,6,'Isaac','Alvin','i-alvin@outlook.org','Software Engineer','2018-12-05',5732,10793,9810),
  (399,9,'Rahim','Oliver','rahim-oliver3680@hotmail.couk','Data Analyst','2018-04-02',3436,8771,2361),
  (400,2,'Dexter','Julian','jdexter6531@outlook.net','Customer Relations','2018-02-25',6002,6652,4758);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (401,6,'Athena','Noelle','anoelle@outlook.couk','Payroll','2018-02-24',4993,2419,6750),
  (402,6,'Evan','Plato','evan-plato2785@outlook.couk','Human Resources','2018-04-08',6733,8320,11696),
  (403,9,'Ina','Jonah','i.jonah9620@outlook.net','Customer Relations','2018-06-03',3834,9357,7377),
  (404,9,'Marshall','Zephr','zephrmarshall@hotmail.net','Research and Development','2019-02-21',7182,4162,12483),
  (405,10,'Cameron','Rajah','r.cameron1099@yahoo.org','Customer Relations','2018-08-27',5575,8984,9260),
  (406,10,'Martin','Raymond','raymond-martin4707@icloud.ca','Accounting','2019-10-07',8754,7572,10946),
  (407,8,'Ayanna','Jolene','joleneayanna@outlook.net','Data Analyst','2019-06-06',1581,10773,7591),
  (408,10,'Guinevere','Cecilia','ceciliaguinevere4345@yahoo.couk','Asset Management','2019-06-03',4861,11665,4901),
  (409,2,'Regina','Maryam','r.maryam@yahoo.edu','Legal Department','2019-12-29',4963,11057,10501),
  (410,5,'Rina','Ira','ira.rina@outlook.edu','Software Engineer','2019-04-01',9109,4489,2188);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (411,1,'Amos','Blake','blake-amos2557@google.net','Payroll','2019-03-01',8842,4590,7776),
  (412,7,'Brent','Chloe','chloebrent@hotmail.com','Web Developer','2019-03-07',4922,5667,5149),
  (413,1,'Walker','Silas','s-walker@protonmail.edu','Data Analyst','2019-09-12',5441,2275,3667),
  (414,9,'Galena','Knox','galenaknox7099@google.net','Quality Assurance','2018-02-28',4569,3632,10683),
  (415,9,'Shellie','Macey','s_macey604@hotmail.couk','Software Engineer','2018-10-28',2120,8536,12856),
  (416,8,'Brody','Christopher','brodychristopher2805@protonmail.couk','Web Developer','2020-01-27',1387,6596,9568),
  (417,8,'Kamal','Erin','k-erin4649@protonmail.com','Customer Relations','2018-12-06',5594,7624,10770),
  (418,6,'Adrienne','MacKenzie','amackenzie@protonmail.org','Asset Management','2019-04-24',4470,7934,10644),
  (419,6,'Patricia','Chase','pchase@yahoo.edu','Sales and Marketing','2018-08-27',9019,3450,11111),
  (420,1,'Baker','Maxine','maxinebaker7798@icloud.net','Data Analyst','2018-03-04',4460,1920,5395);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (421,10,'Moana','Risa','risa-moana1423@protonmail.org','Tech Support','2018-03-05',9495,8563,7257),
  (422,5,'Leonard','Gannon','gannonleonard7286@aol.com','Media Relations','2019-12-30',5321,6539,10689),
  (423,2,'Noelle','Lilah','n_lilah8870@google.org','Public Relations','2020-01-16',2194,1635,4715),
  (424,8,'Orli','Kyle','orli-kyle@aol.com','Customer Relations','2019-05-16',3264,7584,2990),
  (425,3,'Kaseem','Michelle','michelle_kaseem@hotmail.com','Sales and Marketing','2019-03-24',8702,7952,2442),
  (426,5,'Tarik','Myles','mylestarik@aol.edu','Research and Development','2019-08-14',5394,5404,4873),
  (427,2,'Caldwell','Kasimir','kasimir-caldwell8917@google.com','Payroll','2018-12-08',3405,7641,8652),
  (428,6,'Whoopi','Gillian','gillianwhoopi7204@aol.org','Web Developer','2019-12-30',6467,2801,2704),
  (429,6,'Jacob','Jared','jared.jacob6957@aol.com','Payroll','2018-04-02',7274,10219,10551),
  (430,5,'Duncan','Erin','erin_duncan8671@google.edu','Advertising','2019-02-06',9070,3525,9333);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (431,10,'Buffy','Karleigh','karleigh.buffy@aol.couk','Tech Support','2019-06-07',5962,9498,12884),
  (432,4,'Illana','Lilah','i_lilah2580@protonmail.net','Research and Development','2019-01-04',8278,3855,4317),
  (433,6,'Lee','Deacon','l.deacon@google.edu','Research and Development','2018-06-20',8203,11856,8093),
  (434,6,'Raven','Jamal','jamal.raven494@aol.com','Human Resources','2019-05-03',9323,3285,6180),
  (435,9,'Petra','Ulric','petra.ulric6002@protonmail.com','Asset Management','2018-08-09',3925,8979,12302),
  (436,7,'Herman','Medge','h_medge5442@icloud.net','Customer Relations','2018-08-26',9220,10302,7165),
  (437,9,'Ruth','Savannah','rsavannah@yahoo.ca','Customer Service','2018-07-02',2454,8900,4403),
  (438,10,'Aquila','Kasimir','a_kasimir@yahoo.net','Quality Assurance','2018-05-09',8034,6111,1810),
  (439,5,'Linda','Jeanette','l-jeanette@protonmail.org','Legal Department','2018-10-23',7699,1484,4537),
  (440,5,'Abdul','Nehru','a_nehru1003@hotmail.net','Tech Support','2019-12-11',2047,2262,9899);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (441,5,'Yen','Shay','s.yen@hotmail.ca','Media Relations','2018-07-23',4028,10730,10502),
  (442,1,'Kristen','Fulton','fkristen@hotmail.net','Software Engineer','2019-08-23',9848,7019,8580),
  (443,7,'Lee','Ann','a_lee8236@icloud.couk','Web Developer','2018-09-15',6707,4584,9849),
  (444,9,'Zoe','Anjolie','anjolie-zoe6409@icloud.net','Legal Department','2018-06-09',4517,4489,8617),
  (445,9,'Mia','Mikayla','m_mia@outlook.net','Legal Department','2019-07-08',9447,8353,9616),
  (446,7,'George','Charity','georgecharity@icloud.net','Accounting','2019-06-10',9350,10342,5465),
  (447,6,'Conan','Hedda','c_hedda@aol.net','Public Relations','2019-10-11',2551,6204,1812),
  (448,8,'Chanda','Amery','amerychanda@aol.net','Advertising','2019-03-05',4056,10095,8497),
  (449,5,'Clark','Channing','clark-channing@outlook.com','Research and Development','2019-05-17',8793,7304,2080),
  (450,1,'Brynn','Phyllis','brynn.phyllis@aol.com','Software Engineer','2018-03-17',6107,1934,6762);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (451,5,'Keely','Imelda','imeldakeely4580@icloud.edu','Public Relations','2020-01-20',1132,5836,5190),
  (452,7,'Dominique','Logan','logandominique4502@hotmail.ca','Quality Assurance','2018-04-11',5431,5940,10107),
  (453,7,'Gary','Alfreda','a-gary219@protonmail.com','Customer Service','2018-05-01',3987,11537,8596),
  (454,8,'Plato','Desiree','desiree-plato@google.couk','Customer Service','2019-01-16',8095,1262,11951),
  (455,4,'Amery','Fleur','amery_fleur@aol.org','Accounting','2018-11-18',1174,11785,12012),
  (456,1,'Carl','Sade','carl-sade@google.edu','Advertising','2019-02-22',2304,5636,4470),
  (457,5,'Roary','Calista','rcalista1294@aol.com','Advertising','2018-07-12',7283,7440,3279),
  (458,3,'Nayda','Fredericka','fredericka_nayda9194@outlook.edu','Tech Support','2019-05-06',9985,3814,9746),
  (459,5,'Otto','Veda','o-veda@yahoo.org','Data Scientist','2019-05-07',8757,3154,2611),
  (460,6,'Russell','Steel','steel.russell@google.edu','Data Analyst','2019-09-01',4653,5766,9664);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (461,7,'Robin','Bruce','bruce.robin6675@hotmail.org','Software Engineer','2018-10-10',6006,4671,9980),
  (462,7,'Audra','Kelly','kelly.audra2517@icloud.com','Public Relations','2020-01-26',6627,3638,1340),
  (463,8,'Magee','Salvador','m.salvador@yahoo.ca','Sales and Marketing','2019-01-13',6610,11174,4624),
  (464,6,'Myra','Carolyn','c-myra8020@hotmail.com','Human Resources','2018-10-21',1844,9492,9763),
  (465,6,'Austin','Martin','a-martin@outlook.edu','Web Developer','2019-06-16',6832,9326,7913),
  (466,7,'Travis','George','tgeorge5900@protonmail.couk','Tech Support','2019-11-06',5624,8254,4555),
  (467,4,'Jescie','Chandler','chandlerjescie4272@hotmail.couk','Tech Support','2019-10-22',6073,6310,6904),
  (468,10,'Mikayla','Giselle','giselle-mikayla@aol.couk','Sales and Marketing','2018-04-21',9698,9778,3193),
  (469,9,'Brian','Wyatt','w_brian4329@icloud.ca','Payroll','2018-03-04',2293,9787,10433),
  (470,5,'Quinn','Ignacia','i_quinn@icloud.net','Software Engineer','2018-10-17',8746,11627,10784);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (471,5,'Slade','Colton','s.colton3126@hotmail.ca','Public Relations','2019-05-15',8660,9620,1528),
  (472,3,'Suki','Kameko','kameko_suki@protonmail.org','Legal Department','2018-01-06',9607,6391,2321),
  (473,1,'Francis','Tanya','tanya_francis5658@protonmail.couk','Public Relations','2018-03-23',4032,9354,6017),
  (474,3,'Bruce','Channing','channingbruce@yahoo.couk','Customer Relations','2019-08-16',8700,11584,7647),
  (475,5,'Quinn','Wayne','wayne.quinn5244@protonmail.org','Research and Development','2019-09-09',8866,10488,11134),
  (476,7,'Charity','Edan','c-edan@hotmail.edu','Quality Assurance','2019-07-22',3193,11700,3427),
  (477,8,'Graiden','Miranda','g-miranda2693@yahoo.org','Tech Support','2018-07-24',6544,2362,6677),
  (478,3,'Upton','Samson','uptonsamson@icloud.edu','Sales and Marketing','2019-12-06',8950,4249,7158),
  (479,5,'Colorado','Jael','c-jael1638@icloud.ca','Asset Management','2019-02-10',3675,6397,6543),
  (480,9,'Yoshio','Martena','m_yoshio@icloud.ca','Quality Assurance','2018-10-23',9187,10491,3327);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (481,5,'Mannix','Eliana','eliana_mannix3704@outlook.net','Software Engineer','2018-10-20',2159,9900,8817),
  (482,7,'Micah','Debra','debra.micah9440@icloud.edu','Payroll','2019-05-04',9956,6691,8031),
  (483,4,'Demetria','Lynn','l-demetria2970@icloud.com','Software Engineer','2018-11-20',9231,3495,7612),
  (484,8,'Jordan','Salvador','salvadorjordan@protonmail.edu','Finances','2019-04-18',6968,5066,8473),
  (485,3,'Karleigh','Mariam','mariam_karleigh@aol.net','Data Analyst','2019-09-07',4609,8390,4908),
  (486,6,'Destiny','Orlando','o-destiny@protonmail.com','Tech Support','2018-09-04',8055,10987,8388),
  (487,2,'Calvin','Fiona','calvin-fiona@yahoo.edu','Data Scientist','2018-08-23',4478,7987,5326),
  (488,6,'Zephania','Hope','zephania_hope9977@icloud.edu','Advertising','2019-08-21',3353,5440,4089),
  (489,8,'Jennifer','Libby','jenniferlibby1110@aol.couk','Advertising','2020-02-02',7379,3710,7212),
  (490,1,'Britanni','Colt','c.britanni@icloud.couk','Payroll','2019-12-17',6456,4357,12980);
INSERT INTO employees (employee_id,store_city_id,first_name,last_name,email,department,hire_date,salary_2021,salary_2022,salary_2023)
VALUES
  (491,5,'Zeus','Germane','g_zeus@icloud.ca','Quality Assurance','2020-01-21',4197,6654,10867),
  (492,6,'Virginia','Naida','n-virginia6760@icloud.org','Finances','2020-02-11',9772,8059,8517),
  (493,6,'Jermaine','Jerome','j-jerome@google.com','Finances','2018-06-19',5897,3021,9719),
  (494,1,'Cullen','Dawn','cullen-dawn9330@google.org','Accounting','2019-12-21',6792,4645,5141),
  (495,3,'Brooke','Merrill','merrill.brooke@google.edu','Public Relations','2018-11-25',9823,9062,3857),
  (496,2,'Karyn','Hyacinth','hyacinth.karyn6749@aol.ca','Legal Department','2018-02-18',8834,7187,6981),
  (497,7,'Jade','Yvette','yvette-jade@outlook.net','Sales and Marketing','2018-09-23',7877,5931,8504),
  (498,9,'Davis','Dylan','dylan.davis9719@icloud.ca','Advertising','2019-12-14',5101,2409,12770),
  (499,3,'Wade','Lunea','l-wade@protonmail.com','Data Scientist','2019-11-07',3151,5702,2776),
  (500,3,'Martina','Honorato','m_honorato@outlook.ca','Media Relations','2019-06-06',1435,1727,11418);
