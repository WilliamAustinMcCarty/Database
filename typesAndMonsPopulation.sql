CREATE TABLE IF NOT EXISTS Types (
	typeName VARCHAR(10) NOT NULL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS StrongAgainst (
	strongType VARCHAR(10) NOT NULL references Types(typeName),
	weakType VARCHAR(10) NOT NULL references Types(typeName)
);

CREATE TABLE IF NOT EXISTS WeakAgainst (
	weakType VARCHAR(10) NOT NULL references Types(typeName),
	strongType VARCHAR(10) NOT NULL references Types(typeName)
);

CREATE TABLE IF NOT EXISTS NoEffect (
	attackingType VARCHAR(10) NOT NULL references Types(typeName),
	unaffectedType VARCHAR(10) NOT NULL references Types(typeName)
);

CREATE TABLE IF NOT EXISTS NeutralAgainst (
	firstNeutral VARCHAR(10) NOT NULL references Types(typeName),
	secondNeutral VARCHAR(10) NOT NULL  references Types(typeName)
);

CREATE TABLE IF NOT EXISTS User (
	gmail VARCHAR(10) NOT NULL PRIMARY KEY
);

INSERT INTO Types VALUES('Normal')
INSERT INTO Types VALUES('Fire')
INSERT INTO Types VALUES('Water')
INSERT INTO Types VALUES('Electric')
INSERT INTO Types VALUES('Grass')
INSERT INTO Types VALUES('Ice')
INSERT INTO Types VALUES('Fighting')
INSERT INTO Types VALUES('Poison')
INSERT INTO Types VALUES('Ground')
INSERT INTO Types VALUES('Flying')
INSERT INTO Types VALUES('Psychic')
INSERT INTO Types VALUES('Bug')
INSERT INTO Types VALUES('Rock')
INSERT INTO Types VALUES('Ghost')
INSERT INTO Types VALUES('Dragon')
INSERT INTO Types VALUES('Dark')
INSERT INTO Types VALUES('Steel')
INSERT INTO Types VALUES('Fairy')

INSERT INTO StrongAgainst VALUES('Fighting','Normal')
INSERT INTO StrongAgainst VALUES('Fire','Grass')
INSERT INTO StrongAgainst VALUES('Fire','Ice')
INSERT INTO StrongAgainst VALUES('Fire','Bug')
INSERT INTO StrongAgainst VALUES('Fire','Steel')
INSERT INTO StrongAgainst VALUES('Water','Fire')
INSERT INTO StrongAgainst VALUES('Ground','Fire')
INSERT INTO StrongAgainst VALUES('Rock','Fire')
INSERT INTO StrongAgainst VALUES('Water','Ground')
INSERT INTO StrongAgainst VALUES('Water','Rock')
INSERT INTO StrongAgainst VALUES('Electric','Water')
INSERT INTO StrongAgainst VALUES('Grass','Water')
INSERT INTO StrongAgainst VALUES('Electric','Flying')
INSERT INTO StrongAgainst VALUES('Ground','Electric')
INSERT INTO StrongAgainst VALUES('Ice','Grass')
INSERT INTO StrongAgainst VALUES('Poison','Grass')
INSERT INTO StrongAgainst VALUES('Flying','Grass')
INSERT INTO StrongAgainst VALUES('Bug','Grass')
INSERT INTO StrongAgainst VALUES('Grass','Ground')
INSERT INTO StrongAgainst VALUES('Grass','Rock')
INSERT INTO StrongAgainst VALUES('Fighting','Ice')
INSERT INTO StrongAgainst VALUES('Rock','Ice')
INSERT INTO StrongAgainst VALUES('Steel','Ice')
INSERT INTO StrongAgainst VALUES('Ice','Ground')
INSERT INTO StrongAgainst VALUES('Ice','Flying')
INSERT INTO StrongAgainst VALUES('Ice','Dragon')
INSERT INTO StrongAgainst VALUES('Fighting','Rock')
INSERT INTO StrongAgainst VALUES('Fighting','Dark')
INSERT INTO StrongAgainst VALUES('Fighting','Steel')
INSERT INTO StrongAgainst VALUES('Flying','Fighting')
INSERT INTO StrongAgainst VALUES('Psychic','Fighting')
INSERT INTO StrongAgainst VALUES('Fairy','Fighting')
INSERT INTO StrongAgainst VALUES('Poison','Fairy')
INSERT INTO StrongAgainst VALUES('Ground','Poison')
INSERT INTO StrongAgainst VALUES('Psychic','Poison')
INSERT INTO StrongAgainst VALUES('Ground','Rock')
INSERT INTO StrongAgainst VALUES('Ground','Steel')
INSERT INTO StrongAgainst VALUES('Flying','Bug')
INSERT INTO StrongAgainst VALUES('Rock','Flying')
INSERT INTO StrongAgainst VALUES('Bug','Psychic')
INSERT INTO StrongAgainst VALUES('Ghost','Psychic')
INSERT INTO StrongAgainst VALUES('Dark','Psychic')
INSERT INTO StrongAgainst VALUES('Rock','Bug')
INSERT INTO StrongAgainst VALUES('Bug','Dark')
INSERT INTO StrongAgainst VALUES('Steel','Rock')
INSERT INTO StrongAgainst VALUES('Ghost','Ghost')
INSERT INTO StrongAgainst VALUES('Dark','Ghost')
INSERT INTO StrongAgainst VALUES('Dragon','Dragon')
INSERT INTO StrongAgainst VALUES('Fairy','Dragon')
INSERT INTO StrongAgainst VALUES('Fairy','Dark')
INSERT INTO StrongAgainst VALUES('Steel','Fairy')



INSERT INTO WeakAgainst VALUES('Normal','Rock')
INSERT INTO WeakAgainst VALUES('Normal','Steel')
INSERT INTO WeakAgainst VALUES('Fire','Fire')
INSERT INTO WeakAgainst VALUES('Fire','Water')
INSERT INTO WeakAgainst VALUES('Fire','Rock')
INSERT INTO WeakAgainst VALUES('Fire','Dragon')
INSERT INTO WeakAgainst VALUES('Grass','Fire')
INSERT INTO WeakAgainst VALUES('Ice','Fire')
INSERT INTO WeakAgainst VALUES('Bug','Fire')
INSERT INTO WeakAgainst VALUES('Steel','Fire')
INSERT INTO WeakAgainst VALUES('Fairy','Fire')
INSERT INTO WeakAgainst VALUES('Water','Water')
INSERT INTO WeakAgainst VALUES('Water','Grass')
INSERT INTO WeakAgainst VALUES('Water','Dragon')
INSERT INTO WeakAgainst VALUES('Ice','Water')
INSERT INTO WeakAgainst VALUES('Steel','Water')
INSERT INTO WeakAgainst VALUES('Electric','Electric')
INSERT INTO WeakAgainst VALUES('Electric','Grass')
INSERT INTO WeakAgainst VALUES('Electric','Dragon')
INSERT INTO WeakAgainst VALUES('Flying','Electric')
INSERT INTO WeakAgainst VALUES('Steel','Electric')
INSERT INTO WeakAgainst VALUES('Grass','Grass')
INSERT INTO WeakAgainst VALUES('Ground','Grass')
INSERT INTO WeakAgainst VALUES('Grass','Poison')
INSERT INTO WeakAgainst VALUES('Grass','Flying')
INSERT INTO WeakAgainst VALUES('Grass','Bug')
INSERT INTO WeakAgainst VALUES('Grass','Dragon')
INSERT INTO WeakAgainst VALUES('Grass','Steel')
INSERT INTO WeakAgainst VALUES('Ice','Ice')
INSERT INTO WeakAgainst VALUES('Ice','Steel')
INSERT INTO WeakAgainst VALUES('Fighting','Poison')
INSERT INTO WeakAgainst VALUES('Fighting','Flying')
INSERT INTO WeakAgainst VALUES('Fighting','Psychic')
INSERT INTO WeakAgainst VALUES('Fighting','Bug')
INSERT INTO WeakAgainst VALUES('Fighting','Fairy')
INSERT INTO WeakAgainst VALUES('Bug','Fighting')
INSERT INTO WeakAgainst VALUES('Rock','Fighting')
INSERT INTO WeakAgainst VALUES('Dark','Fighting')
INSERT INTO WeakAgainst VALUES('Poison','Poison')
INSERT INTO WeakAgainst VALUES('Poison','Ground')
INSERT INTO WeakAgainst VALUES('Poison','Rock')
INSERT INTO WeakAgainst VALUES('Poison','Ghost')
INSERT INTO WeakAgainst VALUES('Bug','Poison')
INSERT INTO WeakAgainst VALUES('Fairy','Poison')
INSERT INTO WeakAgainst VALUES('Ground','Bug')
INSERT INTO WeakAgainst VALUES('Rock','Ground')
INSERT INTO WeakAgainst VALUES('Flying','Rock')
INSERT INTO WeakAgainst VALUES('Flying','Steel')
INSERT INTO WeakAgainst VALUES('Bug','Flying')
INSERT INTO WeakAgainst VALUES('Psychic','Psychic')
INSERT INTO WeakAgainst VALUES('Psychic','Steel')
INSERT INTO WeakAgainst VALUES('Bug','Ghost')
INSERT INTO WeakAgainst VALUES('Bug','Steel')
INSERT INTO WeakAgainst VALUES('Bug','Fairy')
INSERT INTO WeakAgainst VALUES('Rock','Steel')
INSERT INTO WeakAgainst VALUES('Ghost','Dark')
INSERT INTO WeakAgainst VALUES('Dragon','Steel')
INSERT INTO WeakAgainst VALUES('Dark','Dark')
INSERT INTO WeakAgainst VALUES('Dark','Fairy')
INSERT INTO WeakAgainst VALUES('Steel','Steel')
INSERT INTO WeakAgainst VALUES('Fairy','Steel')


INSERT INTO NeutralAgainst VALUES('Fairy','Fairy')
INSERT INTO NeutralAgainst VALUES('Normal','Normal')
INSERT INTO NeutralAgainst VALUES('Fire','Normal')
INSERT INTO NeutralAgainst VALUES('Water','Normal')
INSERT INTO NeutralAgainst VALUES('Electric','Normal')
INSERT INTO NeutralAgainst VALUES('Grass','Normal')
INSERT INTO NeutralAgainst VALUES('Ice','Normal')
INSERT INTO NeutralAgainst VALUES('Poison','Normal')
INSERT INTO NeutralAgainst VALUES('Ground','Normal')
INSERT INTO NeutralAgainst VALUES('Flying','Normal')
INSERT INTO NeutralAgainst VALUES('Psychic','Normal')
INSERT INTO NeutralAgainst VALUES('Bug','Normal')
INSERT INTO NeutralAgainst VALUES('Rock','Normal')
INSERT INTO NeutralAgainst VALUES('Dragon','Normal')
INSERT INTO NeutralAgainst VALUES('Dark','Normal')
INSERT INTO NeutralAgainst VALUES('Steel','Normal')
INSERT INTO NeutralAgainst VALUES('Fairy','Normal')
INSERT INTO NeutralAgainst VALUES('Fire','Electric')
INSERT INTO NeutralAgainst VALUES('Fire','Fighting')
INSERT INTO NeutralAgainst VALUES('Fire','Poison')
INSERT INTO NeutralAgainst VALUES('Fire','Ground')
INSERT INTO NeutralAgainst VALUES('Fire','Flying')
INSERT INTO NeutralAgainst VALUES('Fire','Psychic')
INSERT INTO NeutralAgainst VALUES('Fire','Ghost')
INSERT INTO NeutralAgainst VALUES('Fire','Dark')
INSERT INTO NeutralAgainst VALUES('Fire','Fairy')
INSERT INTO NeutralAgainst VALUES('Normal','Fire')
INSERT INTO NeutralAgainst VALUES('Normal','Water')
INSERT INTO NeutralAgainst VALUES('Normal','Electric')
INSERT INTO NeutralAgainst VALUES('Normal','Grass')
INSERT INTO NeutralAgainst VALUES('Normal','Ice')
INSERT INTO NeutralAgainst VALUES('Normal','Fighting')
INSERT INTO NeutralAgainst VALUES('Normal','Poison')
INSERT INTO NeutralAgainst VALUES('Normal','Ground')
INSERT INTO NeutralAgainst VALUES('Normal','Flying')
INSERT INTO NeutralAgainst VALUES('Normal','Psychic')
INSERT INTO NeutralAgainst VALUES('Normal','Bug')
INSERT INTO NeutralAgainst VALUES('Normal','Dragon')
INSERT INTO NeutralAgainst VALUES('Normal','Dark')
INSERT INTO NeutralAgainst VALUES('Normal','Fairy')
INSERT INTO NeutralAgainst VALUES('Electric','Fire')
INSERT INTO NeutralAgainst VALUES('Fighting','Fire')
INSERT INTO NeutralAgainst VALUES('Poison','Fire')
INSERT INTO NeutralAgainst VALUES('Flying','Fire')
INSERT INTO NeutralAgainst VALUES('Psychic','Fire')
INSERT INTO NeutralAgainst VALUES('Ghost','Fire')
INSERT INTO NeutralAgainst VALUES('Dragon','Fire')
INSERT INTO NeutralAgainst VALUES('Dark','Fire')
INSERT INTO NeutralAgainst VALUES('Water','Electric')
INSERT INTO NeutralAgainst VALUES('Water','Ice')
INSERT INTO NeutralAgainst VALUES('Water','Fighting')
INSERT INTO NeutralAgainst VALUES('Water','Poison')
INSERT INTO NeutralAgainst VALUES('Water','Flying')
INSERT INTO NeutralAgainst VALUES('Water','Psychic')
INSERT INTO NeutralAgainst VALUES('Water','Bug')
INSERT INTO NeutralAgainst VALUES('Water','Ghost')
INSERT INTO NeutralAgainst VALUES('Water','Dark')
INSERT INTO NeutralAgainst VALUES('Water','Steel')
INSERT INTO NeutralAgainst VALUES('Water','Fairy')
INSERT INTO NeutralAgainst VALUES('Fighting','Water')
INSERT INTO NeutralAgainst VALUES('Poison','Water')
INSERT INTO NeutralAgainst VALUES('Ground','Water')
INSERT INTO NeutralAgainst VALUES('Flying','Water')
INSERT INTO NeutralAgainst VALUES('Psychic','Water')
INSERT INTO NeutralAgainst VALUES('Bug','Water')
INSERT INTO NeutralAgainst VALUES('Rock','Water')
INSERT INTO NeutralAgainst VALUES('Ghost','Water')
INSERT INTO NeutralAgainst VALUES('Dragon','Water')
INSERT INTO NeutralAgainst VALUES('Dark','Water')
INSERT INTO NeutralAgainst VALUES('Fairy','Water')
INSERT INTO NeutralAgainst VALUES('Electric','Ice')
INSERT INTO NeutralAgainst VALUES('Electric','Fighting')
INSERT INTO NeutralAgainst VALUES('Electric','Poison')
INSERT INTO NeutralAgainst VALUES('Electric','Psychic')
INSERT INTO NeutralAgainst VALUES('Electric','Bug')
INSERT INTO NeutralAgainst VALUES('Electric','Rock')
INSERT INTO NeutralAgainst VALUES('Electric','Ghost')
INSERT INTO NeutralAgainst VALUES('Electric','Dark')
INSERT INTO NeutralAgainst VALUES('Electric','Steel')
INSERT INTO NeutralAgainst VALUES('Electric','Fairy')
INSERT INTO NeutralAgainst VALUES('Grass','Electric')
INSERT INTO NeutralAgainst VALUES('Fighting','Electric')
INSERT INTO NeutralAgainst VALUES('Poison','Electric')
INSERT INTO NeutralAgainst VALUES('Psychic','Electric')
INSERT INTO NeutralAgainst VALUES('Bug','Electric')
INSERT INTO NeutralAgainst VALUES('Rock','Electric')
INSERT INTO NeutralAgainst VALUES('Ghost','Electric')
INSERT INTO NeutralAgainst VALUES('Dragon','Electric')
INSERT INTO NeutralAgainst VALUES('Dark','Electric')
INSERT INTO NeutralAgainst VALUES('Fairy','Electric')
INSERT INTO NeutralAgainst VALUES('Ice','Electric')
INSERT INTO NeutralAgainst VALUES('Fighting','Grass')
INSERT INTO NeutralAgainst VALUES('Psychic','Grass')
INSERT INTO NeutralAgainst VALUES('Rock','Grass')
INSERT INTO NeutralAgainst VALUES('Ghost','Grass')
INSERT INTO NeutralAgainst VALUES('Dragon','Grass')
INSERT INTO NeutralAgainst VALUES('Dark','Grass')
INSERT INTO NeutralAgainst VALUES('Steel','Grass')
INSERT INTO NeutralAgainst VALUES('Fairy','Grass')
INSERT INTO NeutralAgainst VALUES('Grass','Ice')
INSERT INTO NeutralAgainst VALUES('Grass','Fighting')
INSERT INTO NeutralAgainst VALUES('Grass','Psychic')
INSERT INTO NeutralAgainst VALUES('Grass','Ghost')
INSERT INTO NeutralAgainst VALUES('Grass','Dark')
INSERT INTO NeutralAgainst VALUES('Grass','Fairy')
INSERT INTO NeutralAgainst VALUES('Poison','Ice')
INSERT INTO NeutralAgainst VALUES('Ground','Ice')
INSERT INTO NeutralAgainst VALUES('Flying','Ice')
INSERT INTO NeutralAgainst VALUES('Psychic','Ice')
INSERT INTO NeutralAgainst VALUES('Bug','Ice')
INSERT INTO NeutralAgainst VALUES('Ghost','Ice')
INSERT INTO NeutralAgainst VALUES('Dragon','Ice')
INSERT INTO NeutralAgainst VALUES('Dark','Ice')
INSERT INTO NeutralAgainst VALUES('Fairy','Ice')
INSERT INTO NeutralAgainst VALUES('Ice','Fighting')
INSERT INTO NeutralAgainst VALUES('Ice','Poison')
INSERT INTO NeutralAgainst VALUES('Ice','Psychic')
INSERT INTO NeutralAgainst VALUES('Ice','Bug')
INSERT INTO NeutralAgainst VALUES('Ice','Rock')
INSERT INTO NeutralAgainst VALUES('Ice','Ghost')
INSERT INTO NeutralAgainst VALUES('Ice','Dark')
INSERT INTO NeutralAgainst VALUES('Ice','Fairy')
INSERT INTO NeutralAgainst VALUES('Fighting','Fighting')
INSERT INTO NeutralAgainst VALUES('Fighting','Ground')
INSERT INTO NeutralAgainst VALUES('Fighting','Dragon')
INSERT INTO NeutralAgainst VALUES('Poison','Fighting')
INSERT INTO NeutralAgainst VALUES('Ground','Fighting')
INSERT INTO NeutralAgainst VALUES('Ghost','Fighting')
INSERT INTO NeutralAgainst VALUES('Dragon','Fighting')
INSERT INTO NeutralAgainst VALUES('Steel','Fighting')
INSERT INTO NeutralAgainst VALUES('Poison','Flying')
INSERT INTO NeutralAgainst VALUES('Poison','Psychic')
INSERT INTO NeutralAgainst VALUES('Poison','Bug')
INSERT INTO NeutralAgainst VALUES('Poison','Dragon')
INSERT INTO NeutralAgainst VALUES('Poison','Dark')
INSERT INTO NeutralAgainst VALUES('Flying','Poison')
INSERT INTO NeutralAgainst VALUES('Rock','Poison')
INSERT INTO NeutralAgainst VALUES('Ghost','Poison')
INSERT INTO NeutralAgainst VALUES('Dragon','Poison')
INSERT INTO NeutralAgainst VALUES('Dark','Poison')
INSERT INTO NeutralAgainst VALUES('Steel','Poison')
INSERT INTO NeutralAgainst VALUES('Ground','Ground')
INSERT INTO NeutralAgainst VALUES('Ground','Psychic')
INSERT INTO NeutralAgainst VALUES('Ground','Ghost')
INSERT INTO NeutralAgainst VALUES('Ground','Dragon')
INSERT INTO NeutralAgainst VALUES('Ground','Dark')
INSERT INTO NeutralAgainst VALUES('Ground','Fairy')
INSERT INTO NeutralAgainst VALUES('Flying','Ground')
INSERT INTO NeutralAgainst VALUES('Psychic','Ground')
INSERT INTO NeutralAgainst VALUES('Bug','Ground')
INSERT INTO NeutralAgainst VALUES('Ghost','Ground')
INSERT INTO NeutralAgainst VALUES('Dragon','Ground')
INSERT INTO NeutralAgainst VALUES('Dark','Ground')
INSERT INTO NeutralAgainst VALUES('Steel','Ground')
INSERT INTO NeutralAgainst VALUES('Fairy','Ground')
INSERT INTO NeutralAgainst VALUES('Flying','Psychic')
INSERT INTO NeutralAgainst VALUES('Flying','Ghost')
INSERT INTO NeutralAgainst VALUES('Flying','Dark')
INSERT INTO NeutralAgainst VALUES('Flying','Dragon')
INSERT INTO NeutralAgainst VALUES('Flying','Fairy')
INSERT INTO NeutralAgainst VALUES('Flying','Flying')
INSERT INTO NeutralAgainst VALUES('Psychic','Flying')
INSERT INTO NeutralAgainst VALUES('Ghost','Flying')
INSERT INTO NeutralAgainst VALUES('Dragon','Flying')
INSERT INTO NeutralAgainst VALUES('Dark','Flying')
INSERT INTO NeutralAgainst VALUES('Steel','Flying')
INSERT INTO NeutralAgainst VALUES('Fairy','Flying')
INSERT INTO NeutralAgainst VALUES('Psychic','Bug')
INSERT INTO NeutralAgainst VALUES('Psychic','Rock')
INSERT INTO NeutralAgainst VALUES('Psychic','Ghost')
INSERT INTO NeutralAgainst VALUES('Psychic','Dragon')
INSERT INTO NeutralAgainst VALUES('Psychic','Fairy')
INSERT INTO NeutralAgainst VALUES('Rock','Psychic')
INSERT INTO NeutralAgainst VALUES('Dragon','Psychic')
INSERT INTO NeutralAgainst VALUES('Steel','Psychic')
INSERT INTO NeutralAgainst VALUES('Fairy','Psychic')
INSERT INTO NeutralAgainst VALUES('Bug','Bug')
INSERT INTO NeutralAgainst VALUES('Bug','Rock')
INSERT INTO NeutralAgainst VALUES('Bug','Dragon')
INSERT INTO NeutralAgainst VALUES('Ghost','Bug')
INSERT INTO NeutralAgainst VALUES('Dragon','Bug')
INSERT INTO NeutralAgainst VALUES('Dark','Bug')
INSERT INTO NeutralAgainst VALUES('Steel','Bug')
INSERT INTO NeutralAgainst VALUES('Fairy','Bug')
INSERT INTO NeutralAgainst VALUES('Rock','Rock')
INSERT INTO NeutralAgainst VALUES('Ghost','Rock')
INSERT INTO NeutralAgainst VALUES('Rock','Ghost')
INSERT INTO NeutralAgainst VALUES('Rock','Dragon')
INSERT INTO NeutralAgainst VALUES('Dark','Rock')
INSERT INTO NeutralAgainst VALUES('Rock','Dark')
INSERT INTO NeutralAgainst VALUES('Fairy','Rock')
INSERT INTO NeutralAgainst VALUES('Rock','Fairy')
INSERT INTO NeutralAgainst VALUES('Ghost','Dragon')
INSERT INTO NeutralAgainst VALUES('Ghost','Steel')
INSERT INTO NeutralAgainst VALUES('Ghost','Fairy')
INSERT INTO NeutralAgainst VALUES('Dragon','Rock')
INSERT INTO NeutralAgainst VALUES('Dragon','Ghost')
INSERT INTO NeutralAgainst VALUES('Steel','Ghost')
INSERT INTO NeutralAgainst VALUES('Fairy','Ghost')
INSERT INTO NeutralAgainst VALUES('Dragon','Dark')
INSERT INTO NeutralAgainst VALUES('Dark','Dragon')
INSERT INTO NeutralAgainst VALUES('Steel','Dragon')
INSERT INTO NeutralAgainst VALUES('Dark','Steel')
INSERT INTO NeutralAgainst VALUES('Steel','Dark')


INSERT INTO NoEffect VALUES('Ghost','Normal')
INSERT INTO NoEffect VALUES('Normal','Ghost')
INSERT INTO NoEffect VALUES('Electric','Ground')
INSERT INTO NoEffect VALUES('Fighting','Ghost')
INSERT INTO NoEffect VALUES('Poison','Steel')
INSERT INTO NoEffect VALUES('Ground','Flying')
INSERT INTO NoEffect VALUES('Psychic','Dark')
INSERT INTO NoEffect VALUES('Dragon','Fairy')


INSERT INTO Pokemon VALUES (101, 'Default', 'Electrode', 1, 'https://img.pokemondb.net/artwork/electrode.jpg', 60, 50, 80, 150, 70, 80);
INSERT INTO EvolveFrom VALUES (101, 'Default', 100, 'Default');
INSERT INTO egg_grp VALUES (101, 'Default', 'Mineral')
INSERT INTO has VALUES (101, 'Default', 'Electric')

INSERT INTO Pokemon VALUES (101, 'Hisuian', 'Electrode', 1, 'https://img.pokemondb.net/artwork/electrode-hisuian.jpg', 60, 50, 80, 150, 70, 80);
INSERT INTO EvolveFrom VALUES (101, 'Hisuian', 100, 'Hisuian');
INSERT INTO egg_grp VALUES (101, 'Hisuian', 'Undiscovered')
INSERT INTO has VALUES (101, 'Hisuian', 'Electric')
INSERT INTO has VALUES (101, 'Hisuian', 'Grass')


INSERT INTO Pokemon VALUES (102, 'Default', 'Exeggcute', 1, 'https://img.pokemondb.net/artwork/exeggcute.jpg', 60, 40, 60, 40, 80, 45);
INSERT INTO egg_grp VALUES (102, 'Default', 'Grass')
INSERT INTO has VALUES (102, 'Default', 'Psychic')
INSERT INTO has VALUES (102, 'Default', 'Grass')

INSERT INTO Pokemon VALUES (103, 'Default', 'Exeggutor', 1, 'https://img.pokemondb.net/artwork/exeggutor.jpg', 95, 95, 125, 55, 85, 75);
INSERT INTO egg_grp VALUES (103, 'Default', 'Grass')
INSERT INTO has VALUES (103, 'Default', 'Psychic')
INSERT INTO has VALUES (103, 'Default', 'Grass')
INSERT INTO EvolveFrom VALUES (103, 'Default', 102, 'Default');

INSERT INTO Pokemon VALUES (103, 'Alolan', 'Exeggutor', 1, 'https://img.pokemondb.net/artwork/exeggutor-alolan.jpg', 95, 105, 125, 45, 85, 75);
INSERT INTO egg_grp VALUES (103, 'Alolan', 'Grass')
INSERT INTO has VALUES (103, 'Alolan', 'Dragon')
INSERT INTO has VALUES (103, 'Alolan', 'Grass')
INSERT INTO EvolveFrom VALUES (103, 'Alolan', 102, 'Default');

INSERT INTO Pokemon VALUES (104, 'Default', 'Cubone', 1, 'https://img.pokemondb.net/artwork/cubone.jpg', 50, 50, 40, 35, 95, 50);
INSERT INTO egg_grp VALUES (104, 'Default', 'Monster')
INSERT INTO has VALUES (104, 'Default', 'Ground')

INSERT INTO Pokemon VALUES (105, 'Default', 'Marowak', 1, 'https://img.pokemondb.net/artwork/marowak.jpg', 60, 80, 50, 45, 110, 80);
INSERT INTO egg_grp VALUES (105, 'Default', 'Monster')
INSERT INTO has VALUES (105, 'Default', 'Ground')
INSERT INTO EvolveFrom VALUES (105, 'Default', 104, 'Default');

INSERT INTO Pokemon VALUES (105, 'Alolan', 'Marowak', 1, 'https://img.pokemondb.net/artwork/marowak-alolan.jpg', 60, 80, 50, 45, 110, 80);
INSERT INTO egg_grp VALUES (105, 'Alolan', 'Monster')
INSERT INTO has VALUES (105, 'Alolan', 'Fire')
INSERT INTO has VALUES (105, 'Alolan', 'Ghost')
INSERT INTO EvolveFrom VALUES (105, 'Alolan', 104, 'Default');

INSERT INTO Pokemon VALUES (106, 'Default', 'Hitmonlee', 1, 'https://img.pokemondb.net/artwork/hitmonlee.jpg', 50, 120, 35, 87, 53, 110);
INSERT INTO egg_grp VALUES (106, 'Default', 'Human-Like')
INSERT INTO has VALUES (106, 'Default', 'Fighting')
INSERT INTO EvolveFrom VALUES (106, 'Default', 236, 'Default');

INSERT INTO Pokemon VALUES (107, 'Default', 'Hitmonchan', 1, 'https://img.pokemondb.net/artwork/hitmonchan.jpg', 50, 105, 35, 76, 79, 110);
INSERT INTO egg_grp VALUES (107, 'Default', 'Human-Like')
INSERT INTO has VALUES (107, 'Default', 'Fighting')
INSERT INTO EvolveFrom VALUES (107, 'Default', 236, 'Default');

INSERT INTO Pokemon VALUES (108, 'Default', 'Lickitung', 1, 'https://img.pokemondb.net/artwork/lickitung.jpg', 90, 55, 60, 30, 75, 75);
INSERT INTO egg_grp VALUES (108, 'Default', 'Monster')
INSERT INTO has VALUES (108, 'Default', 'Normal')

INSERT INTO Pokemon VALUES (109, 'Default', 'Koffing', 1, 'https://img.pokemondb.net/artwork/koffing.jpg', 40, 65, 60, 35, 95, 45);
INSERT INTO egg_grp VALUES (109, 'Default', 'Amorphous')
INSERT INTO has VALUES (109, 'Default', 'Poison')

INSERT INTO Pokemon VALUES (110, 'Default', 'Weezing', 1, 'https://img.pokemondb.net/artwork/weezing.jpg', 65, 90, 85, 60, 120, 70);
INSERT INTO egg_grp VALUES (110, 'Default', 'Amorphous')
INSERT INTO has VALUES (110, 'Default', 'Poison')
INSERT INTO EvolveFrom VALUES (110, 'Default', 109, 'Default');

INSERT INTO Pokemon VALUES (110, 'Galarian', 'Weezing', 1, 'https://img.pokemondb.net/artwork/weezing-galarian.jpg', 65, 90, 85, 60, 120, 70);
INSERT INTO egg_grp VALUES (110, 'Galarian', 'Amorphous')
INSERT INTO has VALUES (110, 'Galarian', 'Poison')
INSERT INTO has VALUES (110, 'Galarian', 'Fairy')
INSERT INTO EvolveFrom VALUES (110, 'Galarian', 109, 'Default');

INSERT INTO Pokemon VALUES (111, 'Default', 'Rhyhorn', 1, 'https://img.pokemondb.net/artwork/rhyhorn.jpg', 80, 85, 30, 25, 95, 30);
INSERT INTO egg_grp VALUES (111, 'Default', 'Field')
INSERT INTO egg_grp VALUES (111, 'Default', 'Monster')
INSERT INTO has VALUES (111, 'Default', 'Ground')
INSERT INTO has VALUES (111, 'Default', 'Rock')

INSERT INTO Pokemon VALUES (112, 'Default', 'Rhydon', 1, 'https://img.pokemondb.net/artwork/rhydon.jpg', 105, 130, 45, 40, 120, 45);
INSERT INTO egg_grp VALUES (112, 'Default', 'Field')
INSERT INTO egg_grp VALUES (112, 'Default', 'Monster')
INSERT INTO has VALUES (112, 'Default', 'Ground')
INSERT INTO has VALUES (112, 'Default', 'Rock')
INSERT INTO EvolveFrom VALUES (112, 'Default', 111, 'Default');

INSERT INTO Pokemon VALUES (113, 'Default', 'Chaney', 1, 'https://img.pokemondb.net/artwork/chansey.jpg', 50, 5, 35, 50, 5, 105);
INSERT INTO egg_grp VALUES (113, 'Default', 'Fairy')
INSERT INTO has VALUES (113, 'Default', 'Normal')
INSERT INTO EvolveFrom VALUES (113, 'Default', 440, 'Default');

INSERT INTO Pokemon VALUES (114, 'Default', 'Tangela', 1, 'https://img.pokemondb.net/artwork/tangela.jpg', 65, 55, 100, 60, 115, 40);
INSERT INTO egg_grp VALUES (114, 'Default', 'Grass')
INSERT INTO has VALUES (114, 'Default', 'Grass')

INSERT INTO Pokemon VALUES (115, 'Default', 'Kangaskhan', 1, 'https://img.pokemondb.net/artwork/kangaskhan.jpg', 105, 95, 40, 90, 80, 80);
INSERT INTO egg_grp VALUES (115, 'Default', 'Monster')
INSERT INTO has VALUES (115, 'Default', 'Normal')

INSERT INTO Pokemon VALUES (115, 'mega', 'Kangaskhan', 1, 'https://img.pokemondb.net/artwork/kangaskhan-mega.jpg', 105, 125, 60, 100, 100, 100);
INSERT INTO egg_grp VALUES (115, 'mega', 'Monster')
INSERT INTO has VALUES (115, 'mega', 'Normal')

INSERT INTO Pokemon VALUES (116, 'Default', 'Horsea', 1, 'https://img.pokemondb.net/artwork/horsea.jpg', 30, 40, 70, 60, 70, 25);
INSERT INTO egg_grp VALUES (116, 'Default', 'Dragon')
INSERT INTO egg_grp VALUES (116, 'Default', 'Water1')
INSERT INTO has VALUES (116, 'Default', 'Water')

INSERT INTO Pokemon VALUES (117, 'Default', 'Seadra', 1, 'https://img.pokemondb.net/artwork/seadra.jpg', 55, 65, 95, 85, 95, 45);
INSERT INTO egg_grp VALUES (117, 'Default', 'Dragon')
INSERT INTO egg_grp VALUES (117, 'Default', 'Water1')
INSERT INTO has VALUES (117, 'Default', 'Water')
INSERT INTO EvolveFrom VALUES (117, 'Default', 116, 'Default');

INSERT INTO Pokemon VALUES (118, 'Default', 'Goldeen', 1, 'https://img.pokemondb.net/artwork/goldeen.jpg', 45, 67, 35, 63, 60, 50);
INSERT INTO egg_grp VALUES (118, 'Default', 'Water2')
INSERT INTO has VALUES (118, 'Default', 'Water')

INSERT INTO Pokemon VALUES (119, 'Default', 'Seaking', 1, 'https://img.pokemondb.net/artwork/seaking.jpg', 80, 92, 65, 68, 95, 80);
INSERT INTO egg_grp VALUES (119, 'Default', 'Water2')
INSERT INTO has VALUES (119, 'Default', 'Water')
INSERT INTO EvolveFrom VALUES (119, 'Default', 118, 'Default');

INSERT INTO Pokemon VALUES (120, 'Default', 'Staryu', 1, 'https://img.pokemondb.net/artwork/staryu.jpg', 30, 45, 70, 85, 55, 55);
INSERT INTO egg_grp VALUES (120, 'Default', 'Water3')
INSERT INTO has VALUES (120, 'Default', 'Water')

INSERT INTO Pokemon VALUES (121, 'Default', 'Starmie', 1, 'https://img.pokemondb.net/artwork/starmie.jpg', 60, 75, 100, 115, 85, 85);
INSERT INTO egg_grp VALUES (121, 'Default', 'Water3')
INSERT INTO has VALUES (121, 'Default', 'Water')
INSERT INTO has VALUES (121, 'Default', 'Psychic')
INSERT INTO EvolveFrom VALUES (121, 'Default', 120, 'Default');

INSERT INTO Pokemon VALUES (122, 'Default', 'Mr. Mime', 1, 'https://img.pokemondb.net/artwork/mr-mime.jpg', 40, 45, 100, 90, 65, 120);
INSERT INTO egg_grp VALUES (122, 'Default', 'Human-Like')
INSERT INTO has VALUES (122, 'Default', 'Fairy')
INSERT INTO has VALUES (122, 'Default', 'Psychic')
INSERT INTO EvolveFrom VALUES (122, 'Default', 439, 'Default');

INSERT INTO Pokemon VALUES (122, 'Galarian', 'Mr. Mime', 1, 'https://img.pokemondb.net/artwork/mr-mime-galarian.jpg', 50, 65, 90, 100, 65, 90);
INSERT INTO egg_grp VALUES (122, 'Galarian', 'Human-Like')
INSERT INTO has VALUES (122, 'Galarian', 'Ice')
INSERT INTO has VALUES (122, 'Galarian', 'Psychic')
INSERT INTO EvolveFrom VALUES (122, 'Galarian', 439, 'Default');

INSERT INTO Pokemon VALUES (123, 'Default', 'Scyther', 1, 'https://img.pokemondb.net/artwork/scyther.jpg', 70, 110, 55, 105, 80, 80);
INSERT INTO egg_grp VALUES (123, 'Default', 'Bug')
INSERT INTO has VALUES (123, 'Default', 'Bug')
INSERT INTO has VALUES (123, 'Default', 'Flying')

INSERT INTO Pokemon VALUES (124, 'Default', 'Jynx', 1, 'https://img.pokemondb.net/artwork/jynx.jpg', 65, 50, 115, 95, 35, 95);
INSERT INTO egg_grp VALUES (124, 'Default', 'Human-Like')
INSERT INTO has VALUES (124, 'Default', 'Ice')
INSERT INTO has VALUES (124, 'Default', 'Psychic')
INSERT INTO EvolveFrom VALUES (124, 'Default', 238, 'Default');

INSERT INTO Pokemon VALUES (125, 'Default', 'Electabuzz', 1, 'https://img.pokemondb.net/artwork/electabuzz.jpg', 65, 83, 95, 105, 57, 85);
INSERT INTO egg_grp VALUES (124, 'Default', 'Human-Like')
INSERT INTO has VALUES (124, 'Default', 'Electric')
INSERT INTO EvolveFrom VALUES (124, 'Default', 239, 'Default');

INSERT INTO Pokemon VALUES (126, 'Default', 'Magmar', 1, 'https://img.pokemondb.net/artwork/magmar.jpg', 65, 95, 100, 93, 57, 85);
INSERT INTO egg_grp VALUES (126, 'Default', 'Human-Like')
INSERT INTO has VALUES (126, 'Default', 'Fire')
INSERT INTO EvolveFrom VALUES (126, 'Default', 240, 'Default');

INSERT INTO Pokemon VALUES (127, 'Default', 'Pinsir', 1, 'https://img.pokemondb.net/artwork/pinsir.jpg', 65, 125, 55, 85, 100, 70);
INSERT INTO egg_grp VALUES (127, 'Default', 'Bug')
INSERT INTO has VALUES (127, 'Default', 'Bug')

INSERT INTO Pokemon VALUES (127, 'Mega', 'Pinsir', 1, 'https://img.pokemondb.net/artwork/pinsir-mega.jpg', 65, 155, 120, 105, 120, 90);
INSERT INTO egg_grp VALUES (127, 'Mega', 'Bug')
INSERT INTO has VALUES (127, 'Mega', 'Bug')
INSERT INTO has VALUES (127, 'Mega', 'Flying')

INSERT INTO Pokemon VALUES (128, 'Default', 'Tauros', 1, 'https://img.pokemondb.net/artwork/tauros.jpg', 75, 100, 40, 110, 95, 70);
INSERT INTO egg_grp VALUES (128, 'Default', 'Field')
INSERT INTO has VALUES (128, 'Default', 'Normal')

INSERT INTO Pokemon VALUES (129, 'Default', 'Magikarp', 1, 'https://img.pokemondb.net/artwork/magikarp.jpg', 20, 10, 15, 80, 55, 20);
INSERT INTO egg_grp VALUES (129, 'Default', 'Dragon')
INSERT INTO egg_grp VALUES (129, 'Default', 'Water2')
INSERT INTO has VALUES (129, 'Default', 'Water')

INSERT INTO Pokemon VALUES (130, 'Default', 'Gyrados', 1, 'https://img.pokemondb.net/artwork/gyrados.jpg', 95, 125, 60, 81, 79, 100);
INSERT INTO egg_grp VALUES (130, 'Default', 'Dragon')
INSERT INTO egg_grp VALUES (130, 'Default', 'Water2')
INSERT INTO has VALUES (130, 'Default', 'Water')
INSERT INTO has VALUES (130, 'Default', 'Flying')
INSERT INTO EvolveFrom VALUES (130, 'Default', 129, 'Default');

INSERT INTO Pokemon VALUES (130, 'Mega', 'Gyrados', 1, 'https://img.pokemondb.net/artwork/gyrados-mega.jpg', 95, 155, 70, 81, 109, 130);
INSERT INTO egg_grp VALUES (130, 'Mega', 'Dragon')
INSERT INTO egg_grp VALUES (130, 'Mega', 'Water2')
INSERT INTO has VALUES (130, 'Mega', 'Water')
INSERT INTO has VALUES (130, 'Mega', 'Dark')
INSERT INTO EvolveFrom VALUES (130, 'Mega', 129, 'Default');

INSERT INTO Pokemon VALUES (131, 'Default', 'Lapras', 1, 'https://img.pokemondb.net/artwork/lapras.jpg', 130, 85, 85, 60, 80, 95);
INSERT INTO egg_grp VALUES (131, 'Default', 'Monster')
INSERT INTO egg_grp VALUES (131, 'Default', 'Water1')
INSERT INTO has VALUES (131, 'Default', 'Water')
INSERT INTO has VALUES (131, 'Default', 'Ice')

INSERT INTO Pokemon VALUES (132, 'Default', 'Ditto', 1, 'https://img.pokemondb.net/artwork/ditto.jpg', 48, 48, 48, 48, 48, 48);
INSERT INTO egg_grp VALUES (132, 'Default', 'Ditto')
INSERT INTO has VALUES (132, 'Default', 'Normal')

INSERT INTO Pokemon VALUES (133, 'Default', 'Eevee', 1, 'https://img.pokemondb.net/artwork/eevee.jpg', 55, 55, 45, 55, 50, 65);
INSERT INTO egg_grp VALUES (133, 'Default', 'Field')
INSERT INTO has VALUES (133, 'Default', 'Normal')

INSERT INTO Pokemon VALUES (134, 'Default', 'Vaporeon', 1, 'https://img.pokemondb.net/artwork/vaporeon.jpg', 130, 65, 110, 65, 60, 95);
INSERT INTO egg_grp VALUES (134, 'Default', 'Field')
INSERT INTO has VALUES (134, 'Default', 'Water')
INSERT INTO EvolveFrom VALUES (134, 'Default', 133, 'Default');

INSERT INTO Pokemon VALUES (135, 'Default', 'Jolteon', 1, 'https://img.pokemondb.net/artwork/jolteon.jpg', 65, 65, 110, 130, 60, 95);
INSERT INTO egg_grp VALUES (135, 'Default', 'Field')
INSERT INTO has VALUES (135, 'Default', 'Electric')
INSERT INTO EvolveFrom VALUES (135, 'Default', 133, 'Default');

INSERT INTO Pokemon VALUES (136, 'Default', 'Flareon', 1, 'https://img.pokemondb.net/artwork/flareon.jpg', 65, 130, 95, 65, 60, 110);
INSERT INTO egg_grp VALUES (136, 'Default', 'Field')
INSERT INTO has VALUES (136, 'Default', 'Fire')
INSERT INTO EvolveFrom VALUES (136, 'Default', 133, 'Default');

INSERT INTO Pokemon VALUES (137, 'Default', 'Porygon', 1, 'https://img.pokemondb.net/artwork/porygon.jpg', 65, 60, 85, 40, 70, 75);
INSERT INTO egg_grp VALUES (137, 'Default', 'Mineral')
INSERT INTO has VALUES (137, 'Default', 'Normal')

INSERT INTO Pokemon VALUES (138, 'Default', 'Omanyte', 1, 'https://img.pokemondb.net/artwork/omanyte.jpg', 35, 40, 90, 35, 100, 90);
INSERT INTO egg_grp VALUES (138, 'Default', 'Water1')
INSERT INTO egg_grp VALUES (138, 'Default', 'Water3')
INSERT INTO has VALUES (138, 'Default', 'Rock')
INSERT INTO has VALUES (138, 'Default', 'Water')

INSERT INTO Pokemon VALUES (139, 'Default', 'Omastar', 1, 'https://img.pokemondb.net/artwork/omastar.jpg', 70, 60, 115, 55, 125, 70);
INSERT INTO egg_grp VALUES (139, 'Default', 'Water1')
INSERT INTO egg_grp VALUES (139, 'Default', 'Water3')
INSERT INTO has VALUES (139, 'Default', 'Rock')
INSERT INTO has VALUES (139, 'Default', 'Water')
INSERT INTO EvolveFrom VALUES (139, 'Default', 138, 'Default');

INSERT INTO Pokemon VALUES (140, 'Default', 'Kabuto', 1, 'https://img.pokemondb.net/artwork/kabuto.jpg', 30, 80, 55, 55, 90, 45);
INSERT INTO egg_grp VALUES (140, 'Default', 'Water1')
INSERT INTO egg_grp VALUES (140, 'Default', 'Water3')
INSERT INTO has VALUES (140, 'Default', 'Rock')
INSERT INTO has VALUES (140, 'Default', 'Water')

INSERT INTO Pokemon VALUES (140, 'Default', 'Kabutops', 1, 'https://img.pokemondb.net/artwork/kabutops.jpg', 60, 115, 65, 80, 105, 70);
INSERT INTO egg_grp VALUES (140, 'Default', 'Water1')
INSERT INTO egg_grp VALUES (140, 'Default', 'Water3')
INSERT INTO has VALUES (140, 'Default', 'Rock')
INSERT INTO has VALUES (140, 'Default', 'Water')
INSERT INTO EvolveFrom VALUES (141, 'Default', 140, 'Default');

INSERT INTO Pokemon VALUES (142, 'Default', 'Aerodactyl', 1, 'https://img.pokemondb.net/artwork/aerodactyl.jpg', 80, 105, 60, 130, 65, 75);
INSERT INTO egg_grp VALUES (142, 'Default', 'Flying')
INSERT INTO has VALUES (142, 'Default', 'Rock')
INSERT INTO has VALUES (142, 'Default', 'Flying')

INSERT INTO Pokemon VALUES (143, 'Default', 'Snorlax', 1, 'https://img.pokemondb.net/artwork/snorlax.jpg', 160, 110, 65, 30, 65, 110);
INSERT INTO egg_grp VALUES (143, 'Default', 'Monster')
INSERT INTO has VALUES (143, 'Default', 'Normal')
INSERT INTO EvolveFrom VALUES (143, 'Default', 446, 'Default');

INSERT INTO Pokemon VALUES (144, 'Default', 'Articuno', 1, 'https://img.pokemondb.net/artwork/articuno.jpg', 90, 85, 95, 85, 100, 125);
INSERT INTO egg_grp VALUES (144, 'Default', 'Undiscovered')
INSERT INTO has VALUES (144, 'Default', 'Ice')
INSERT INTO has VALUES (144, 'Default', 'Flying')

INSERT INTO Pokemon VALUES (145, 'Default', 'Zapdos', 1, 'https://img.pokemondb.net/artwork/zapdos.jpg', 90, 90, 125, 100, 85, 90);
INSERT INTO egg_grp VALUES (145, 'Default', 'Undiscovered')
INSERT INTO has VALUES (145, 'Default', 'Electric')
INSERT INTO has VALUES (145, 'Default', 'Flying')

INSERT INTO Pokemon VALUES (146, 'Default', 'Moltres', 1, 'https://img.pokemondb.net/artwork/moltres.jpg', 90, 100, 125, 90, 90, 85);
INSERT INTO egg_grp VALUES (146, 'Default', 'Undiscovered')
INSERT INTO has VALUES (146, 'Default', 'Fire')
INSERT INTO has VALUES (146, 'Default', 'Flying')

INSERT INTO Pokemon VALUES (147, 'Default', 'Dratini', 1, 'https://img.pokemondb.net/artwork/dratini.jpg', 41, 64, 50, 50, 45, 50);
INSERT INTO egg_grp VALUES (147, 'Default', 'Dragon')
INSERT INTO egg_grp VALUES (147, 'Default', 'Water1')
INSERT INTO has VALUES (147, 'Default', 'Dragon')

INSERT INTO Pokemon VALUES (148, 'Default', 'Dragonair', 1, 'https://img.pokemondb.net/artwork/dragonair.jpg', 61, 84, 70, 70, 65, 70);
INSERT INTO egg_grp VALUES (148, 'Default', 'Dragon')
INSERT INTO egg_grp VALUES (148, 'Default', 'Water1')
INSERT INTO has VALUES (148, 'Default', 'Dragon')
INSERT INTO EvolveFrom VALUES (148, 'Default', 147, 'Default');

INSERT INTO Pokemon VALUES (149, 'Default', 'Dragonite', 1, 'https://img.pokemondb.net/artwork/dragonite.jpg', 91, 134, 100, 80, 95, 100);
INSERT INTO egg_grp VALUES (149, 'Default', 'Dragon')
INSERT INTO egg_grp VALUES (149, 'Default', 'Water1')
INSERT INTO has VALUES (149, 'Default', 'Dragon')
INSERT INTO has VALUES (149, 'Default', 'Flying')
INSERT INTO EvolveFrom VALUES (149, 'Default', 148, 'Default');

INSERT INTO Pokemon VALUES (150, 'Default', 'Mewtwo', 1, 'https://img.pokemondb.net/artwork/mewtwo.jpg', 106, 110, 154, 130, 90, 90);
INSERT INTO egg_grp VALUES (150, 'Default', 'Undiscovered')
INSERT INTO has VALUES (150, 'Default', 'Psyhic')

INSERT INTO Pokemon VALUES (151, 'Default', 'Mew', 1, 'https://img.pokemondb.net/artwork/mew.jpg', 100, 100, 100, 100, 100, 100);
INSERT INTO egg_grp VALUES (151, 'Default', 'Undiscovered')
INSERT INTO has VALUES (151, 'Default', 'Psyhic')
