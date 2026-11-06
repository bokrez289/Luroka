import '../../media/media_kind.dart';

class DiscoveryTitle {
  const DiscoveryTitle(this.imdb, this.title, this.year);
  final String imdb, title;
  final int? year;
}

/// Public factual collection snapshots. IMDb charts preserve their source rank;
/// awards include each winning work once, even if it won in multiple years.
/// Membership is independent of the user's library and is filtered afterwards.
class DiscoveryAward {
  DiscoveryAward(this.id, this.kind, String rows, this.sourceUrl)
    : entries = rows
          .trim()
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map((line) {
            final fields = line.trim().split('|');
            return DiscoveryTitle(fields[0], fields[1], fields.length > 2 ? int.tryParse(fields[2]) : null);
          })
          .toList(growable: false);
  final String id;
  final MediaKind kind;
  final List<DiscoveryTitle> entries;
  final String sourceUrl;
  List<String> get imdbIds => entries.map((entry) => entry.imdb).toList(growable: false);
}

// Awards: Wikidata CC0 facts (P166 + P345), reviewed 2026-10-29, supplemented
// from the named award-category histories where structured data is incomplete.
// Charts: mmdju/imdb-top250-api factual seed snapshots, movies 2026-09-01,
// television 2026-09-04. Only rank, title and identifiers are retained; scores
// and artwork are loaded independently from the media server/Cinemeta.
final discoveryAwards = [
  DiscoveryAward('imdb100', MediaKind.movie, r'''
tt0111161|The Shawshank Redemption|1994
tt0068646|The Godfather|1972
tt0468569|The Dark Knight|2008
tt0071562|The Godfather Part II|1974
tt0167260|The Lord of the Rings: The Return of the King|2003
tt0050083|12 Angry Men|1957
tt0108052|Schindler's List|1993
tt0120737|The Lord of the Rings: The Fellowship of the Ring|2001
tt0110912|Pulp Fiction|1994
tt0167261|The Lord of the Rings: The Two Towers|2002
tt0060196|The Good, the Bad and the Ugly|1966
tt0109830|Forrest Gump|1994
tt0137523|Fight Club|1999
tt1375666|Inception|2010
tt0080684|Star Wars: Episode V - The Empire Strikes Back|1980
tt0133093|The Matrix|1999
tt0816692|Interstellar|2014
tt0099685|GoodFellas|1990
tt0073486|One Flew Over the Cuckoo's Nest|1975
tt0114369|Seven|1995
tt0038650|It's a Wonderful Life|1946
tt0102926|The Silence of the Lambs|1991
tt0120815|Saving Private Ryan|1998
tt0047478|Seven Samurai|1954
tt0120689|The Green Mile|1999
tt0317248|City of God|2002
tt0118799|Life Is Beautiful|1997
tt0103064|Terminator 2: Judgment Day|1991
tt0088763|Back to the Future|1985
tt0076759|Star Wars: Episode IV - A New Hope|1977
tt6019206|Kill Bill: The Whole Bloody Affair
tt0245429|Spirited Away|2001
tt0172495|Gladiator|2000
tt0253474|The Pianist|2002
tt6751668|Parasite|2019
tt0095327|Grave of the Fireflies|1988
tt0056058|Harakiri|1962
tt0054215|Psycho|1960
tt0110357|The Lion King|1994
tt0407887|The Departed|2006
tt2582802|Whiplash|2014
tt0482571|The Prestige|2006
tt0120586|American History X|1998
tt9362722|Spider-Man: Across the Spider-Verse|2023
tt0110413|Léon: The Professional|1994
tt0095765|Cinema Paradiso|1988
tt0034583|Casablanca|1942
tt1675434|The Intouchables|2011
tt0114814|The Usual Suspects|1995
tt1853728|Django Unchained|2012
tt0078748|Alien|1979
tt0047396|Rear Window|1954
tt0027977|Modern Times|1936
tt0064116|Once Upon a Time in the West|1968
tt0021749|City Lights|1931
tt0910970|WALL·E|2008
tt0078788|Apocalypse Now|1979
tt33764258|The Odyssey|2026
tt0209144|Memento|2000
tt4154756|Avengers: Infinity War|2018
tt15239678|Dune: Part Two|2024
tt0082971|Raiders of the Lost Ark|1981
tt4633694|Spider-Man: Into the Spider-Verse|2018
tt0405094|The Lives of Others|2006
tt0043014|Sunset Boulevard|1950
tt0051201|Witness for the Prosecution|1957
tt0050825|Paths of Glory|1957
tt0081505|The Shining|1980
tt0361748|Inglourious Basterds|2009
tt0032553|The Great Dictator|1940
tt0090605|Aliens|1986
tt23849204|12th Fail|2023
tt0057565|High and Low|1963
tt4154796|Avengers: Endgame|2019
tt0119217|Good Will Hunting|1997
tt2380307|Coco|2017
tt0114709|Toy Story|1995
tt1345836|The Dark Knight Rises|2012
tt0086879|Amadeus|1984
tt5311514|Your Name.|2016
tt1187043|3 Idiots|2009
tt0082096|Das Boot|1981
tt0112573|Braveheart|1995
tt0119698|Princess Mononoke|1997
tt0364569|Oldboy|2003
tt0057012|Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb|1964
tt0169547|American Beauty|1999
tt8267604|Capernaum|2018
tt0045152|Singin' in the Rain|1952
tt0087843|Once Upon a Time in America|1984
tt7286456|Joker|2019
tt0435761|Toy Story 3|2010
tt0086190|Star Wars: Episode VI - Return of the Jedi|1983
tt0091251|Come and See|1985
tt0180093|Requiem for a Dream|2000
tt0044741|Ikiru|1952
tt1255953|Incendies|2010
tt2106476|The Hunt|2012
tt33175825|Attack on Titan: The Last Attack|2024
tt0338013|Eternal Sunshine of the Spotless Mind|2004
''', 'https://github.com/mmdju/imdb-top250-api/blob/main/src/fallback.json'),
  DiscoveryAward('imdbTv100', MediaKind.show, r'''
tt0903747|Breaking Bad|2008
tt5491994|Planet Earth II|2016
tt0795176|Planet Earth|2006
tt0185906|Band of Brothers|2001
tt7366338|Chernobyl|2019
tt0417299|Avatar: The Last Airbender|2005
tt0306414|The Wire|2002
tt0141842|The Sopranos|1999
tt6769208|Blue Planet II|2017
tt2395695|Cosmos: A Spacetime Odyssey|2014
tt0081846|Cosmos|1980
tt9253866|Our Planet|2019
tt0944947|Game of Thrones|2011
tt7678620|Bluey|2018
tt0071075|The World at War|1973
tt2560140|Attack on Titan|2013
tt1355642|Fullmetal Alchemist: Brotherhood|2009
tt1533395|Life|2009
tt8420184|The Last Dance|2020
tt0052520|The Twilight Zone|1959
tt1877514|The Vietnam War|2017
tt2861424|Rick and Morty|2013
tt1475582|Sherlock|2010
tt0103359|Batman: The Animated Series|1992
tt3032476|Better Call Saul|2015
tt0386676|The Office|2005
tt11126994|Arcane|2021
tt10541088|Clarkson's Farm|2021
tt0296310|The Blue Planet|2001
tt2098220|Hunter X Hunter|2011
tt12392504|Scam 1992: The Harshad Mehta Story|2020
tt2092588|Frozen Planet|2011
tt0081912|Only Fools and Horses|1981
tt1806234|Human Planet|2011
tt0111893|The Beatles Anthology|1995
tt33043892|Dexter: Resurrection|2025
tt0098769|The Civil War|1990
tt13675832|As If|2021
tt0303461|Firefly|2002
tt31938062|The Pitt|2025
tt1865718|Gravity Falls|2012
tt0877057|Death Note|2006
tt4934214|Taskmaster|2015
tt22248376|Frieren: Beyond Journey's End|2023
tt0092337|Dekalog|1989
tt9735318|The Beatles: Get Back|2021
tt0098904|Seinfeld|1989
tt0213338|Cowboy Bebop|1998
tt2356777|True Detective|2014
tt2297757|Nathan for You|2013
tt1508238|Apocalypse: The Second World War|2009
tt2802850|Fargo|2014
tt7920978|Persona|2018
tt0388629|One Piece|1999
tt14986406|Bleach: Thousand-Year Blood War|2022
tt2571774|Africa|2013
tt5622316|The Chosen|2017
tt0200276|The West Wing|1999
tt0108778|Friends|1994
tt7137906|When They See Us|2019
tt0472954|It's Always Sunny in Philadelphia|2005
tt26471411|When Life Gives You Tangerines|2025
tt4742876|TVF Pitchers|2015
tt3530232|Last Week Tonight with John Oliver|2014
tt7660850|Succession|2018
tt10233448|Vinland Saga|2019
tt3398228|BoJack Horseman|2014
tt0264235|Curb Your Enthusiasm|2000
tt12004706|Panchayat|2020
tt0081834|Das Boot|1985
tt0063929|Monty Python's Flying Circus|1969
tt0072500|Fawlty Towers|1975
tt10530900|Gullak|2019
tt0214341|Dragon Ball Z|1996
tt0096548|Blackadder Goes Forth|1989
tt0121220|Dragon Ball Z|1989
tt1831164|Leyla and Mecnun|2011
tt0193676|Freaks and Geeks|1999
tt0353049|Chappelle's Show|2003
tt0112130|Pride and Prejudice|1995
tt0098936|Twin Peaks|1990
tt5182866|Reply 1988|2015
tt2707408|Narcos|2015
tt0074006|I, Claudius|1976
tt9432978|Kota Factory|2019
tt0121955|South Park|1997
tt0318871|Berserk|1997
tt1910272|Steins; Gate|2011
tt3718778|Over the Garden Wall|2014
tt7923710|My Mister|2018
tt10986410|Ted Lasso|2020
tt2085059|Black Mirror|2011
tt2442560|Peaky Blinders|2013
tt0248654|Six Feet Under|2001
tt0434706|Monster|2004
tt5753856|Dark|2017
tt0384766|Rome|2005
tt0118421|Oz|1997
tt0988824|Naruto: Shippuden|2007
tt5712554|The Grand Tour|2016
''', 'https://github.com/mmdju/imdb-top250-api/blob/main/src/fallback-tv.json'),
  DiscoveryAward('oscars', MediaKind.movie, r'''
tt30144839|One Battle After Another|2025
tt28607951|Anora|2024
tt15398776|Oppenheimer|2023
tt6710474|Everything Everywhere All at Once|2022
tt10366460|CODA|2021
tt9770150|Nomadland|2020
tt6751668|Parasite|2019
tt6966692|Green Book|2018
tt5580390|The Shape of Water|2017
tt4975722|Moonlight|2016
tt1895587|Spotlight|2015
tt2562232|Birdman|2014
tt2024544|12 Years a Slave|2013
tt1024648|Argo|2012
tt1655442|The Artist|2011
tt1504320|The King's Speech|2010
tt0887912|The Hurt Locker|2008
tt1010048|Slumdog Millionaire|2008
tt0477348|No Country for Old Men|2007
tt0407887|The Departed|2006
tt0375679|Crash|2004
tt0405159|Million Dollar Baby|2004
tt0167260|The Lord of the Rings: The Return of the King|2003
tt0299658|Chicago|2002
tt0268978|A Beautiful Mind|2001
tt0172495|Gladiator|2000
tt0169547|American Beauty|1999
tt0138097|Shakespeare in Love|1998
tt0120338|Titanic|1997
tt0116209|The English Patient|1996
tt0112573|Braveheart|1995
tt0109830|Forrest Gump|1994
tt0108052|Schindler's List|1993
tt0105695|Unforgiven|1992
tt0102926|The Silence of the Lambs|1991
tt0099348|Dances with Wolves|1990
tt0097239|Driving Miss Daisy|1989
tt0095953|Rain Man|1988
tt0093389|The Last Emperor|1987
tt0091763|Platoon|1986
tt0089755|Out of Africa|1985
tt0086879|Amadeus|1984
tt0086425|Terms of Endearment|1983
tt0083987|Gandhi|1982
tt0082158|Chariots of Fire|1981
tt0081283|Ordinary People|1980
tt0079417|Kramer vs. Kramer|1979
tt0077416|The Deer Hunter|1978
tt0075686|Annie Hall|1977
tt0075148|Rocky|1976
tt0073486|One Flew Over the Cuckoo's Nest|1975
tt0071562|The Godfather Part II|1974
tt0070735|The Sting|1973
tt0068646|The Godfather|1972
tt0067116|The French Connection|1971
tt0066206|Patton|1970
tt0064665|Midnight Cowboy|1969
tt0063385|Oliver!|1968
tt0061811|In the Heat of the Night|1967
tt0060665|A Man for All Seasons|1966
tt0059742|The Sound of Music|1965
tt0058385|My Fair Lady|1964
tt0057590|Tom Jones|1963
tt0056172|Lawrence of Arabia|1962
tt0055614|West Side Story|1961
tt0053604|The Apartment|1960
tt0052618|Ben-Hur|1959
tt0051658|Gigi|1958
tt0050212|The Bridge on the River Kwai|1957
tt0048960|Around the World in 80 Days|1956
tt0048356|Marty|1955
tt0047296|On the Waterfront|1954
tt0045793|From Here to Eternity|1953
tt0044672|The Greatest Show on Earth|1952
tt0043278|An American in Paris|1951
tt0042192|All About Eve|1950
tt0041113|All the King's Men|1949
tt0040416|Hamlet|1948
tt0039416|Gentleman's Agreement|1947
tt0036868|The Best Years of Our Lives|1946
tt0037884|The Lost Weekend|1945
tt0036872|Going My Way|1944
tt0034583|Casablanca|1942
tt0035093|Mrs. Miniver|1942
tt0033729|How Green Was My Valley|1941
tt0032976|Rebecca|1940
tt0031381|Gone with the Wind|1939
tt0030993|You Can't Take It With You|1938
tt0029146|The Life of Emile Zola|1937
tt0027698|The Great Ziegfeld|1936
tt0026752|Mutiny on the Bounty|1935
tt0025316|It Happened One Night|1934
tt0023876|Cavalcade|1933
tt0022958|Grand Hotel|1932
tt0021746|Cimarron|1931
tt0020629|All Quiet on the Western Front|1930
tt0019729|The Broadway Melody|1929
tt0018578|Wings|1927
''', 'https://www.oscars.org/oscars/ceremonies'),
  DiscoveryAward('emmys', MediaKind.show, r'''
tt31938062|The Pitt|2025
tt2788316|Shōgun|2024
tt7660850|Succession|2018
tt4786824|The Crown|2016
tt0944947|Game of Thrones|2011
tt5834204|The Handmaid's Tale|2017
tt0903747|Breaking Bad|2008
tt1796960|Homeland|2011
tt0804503|Mad Men|2007
tt0141842|The Sopranos|1999
tt0285331|24|2001
tt0411008|Lost|2004
tt0200276|The West Wing|1999
tt0118437|The Practice|1997
tt0098844|Law & Order|1990
tt0108757|ER|1994
tt0106079|NYPD Blue|1993
tt0103512|Picket Fences|1992
tt0098878|Northern Exposure|1990
tt0090466|L.A. Law|1986
tt0092492|thirtysomething|1987
tt0083395|Cagney & Lacey|1981
tt0081873|Hill Street Blues|1981
tt0075528|Lou Grant|1977
tt0071042|The Rockford Files|1974
tt0066722|Upstairs, Downstairs|1971
tt0069620|Police Story|1973
tt0068149|The Waltons|1972
tt0066652|Elizabeth R|1971
tt0065278|The Bold Ones: The Senator|1970
tt0063927|Marcus Welby, M.D.|1969
tt0439384|NET Playhouse|1966
tt0060009|Mission: Impossible|1966
tt0056757|The Fugitive|1963
''', 'https://www.televisionacademy.com/awards/nominees-winners'),
  DiscoveryAward('emmyComedy', MediaKind.show, r'''
tt23649128|The Studio|2025
tt11815682|Hacks|2021
tt14452776|The Bear|2022
tt10986410|Ted Lasso|2020
tt3526078|Schitt's Creek|2015
tt5687612|Fleabag|2016
tt5788792|The Marvelous Mrs. Maisel|2017
tt1759761|Veep|2012
tt1442437|Modern Family|2009
tt0496424|30 Rock|2006
tt0386676|The Office|2005
tt0115167|Everybody Loves Raymond|1996
tt0367279|Arrested Development|2003
tt0108778|Friends|1994
tt0159206|Sex and the City|1998
tt0157246|Will & Grace|1998
tt0118254|Ally McBeal|1997
tt0106004|Frasier|1993
tt0098904|Seinfeld|1989
tt0094514|Murphy Brown|1988
tt0094582|The Wonder Years|1988
tt0088526|The Golden Girls|1985
tt0083399|Cheers|1982
tt0072472|Barney Miller|1975
tt0077089|Taxi|1978
tt0066626|All in the Family|1971
tt0065314|The Mary Tyler Moore Show|1970
tt0068098|MASH|1972
''', 'https://www.televisionacademy.com/awards/nominees-winners'),
  DiscoveryAward('bafta', MediaKind.movie, r'''
tt30144839|One Battle After Another|2025
tt20215234|Conclave|2024
tt15398776|Oppenheimer|2023
tt1016150|All Quiet on the Western Front|2022
tt10293406|The Power of the Dog|2021
tt9770150|Nomadland|2020
tt8579674|1917|2019
tt6155172|Roma|2018
tt5027774|Three Billboards Outside Ebbing, Missouri|2017
tt3783958|La La Land|2016
tt1663202|The Revenant|2015
tt1065073|Boyhood|2014
tt2024544|12 Years a Slave|2013
tt1024648|Argo|2012
tt1655442|The Artist|2011
tt1504320|The King's Speech|2010
tt0887912|The Hurt Locker|2008
tt1010048|Slumdog Millionaire|2008
tt0783233|Atonement|2007
tt0436697|The Queen|2006
tt0388795|Brokeback Mountain|2005
tt0217505|The Aviator|2004
tt0167260|The Lord of the Rings: The Return of the King|2003
tt0253474|The Pianist|2002
tt0120737|The Lord of the Rings: The Fellowship of the Ring|2001
tt0172495|Gladiator|2000
tt0169547|American Beauty|1999
tt0138097|Shakespeare in Love|1998
tt0114483|The Full Monty|1997
tt0116209|The English Patient|1996
tt0114388|Sense and Sensibility|1995
tt0109831|Four Weddings and a Funeral|1994
tt0108052|Schindler's List|1993
tt0105695|Unforgiven|1992
tt0102926|The Silence of the Lambs|1991
tt0099685|Goodfellas|1990
tt0097165|Dead Poets Society|1989
tt0095953|Rain Man|1988
tt0092593|Au Revoir les Enfants|1987
tt0091867|A Room with a View|1985
tt0089853|The Purple Rose of Cairo|1985
tt0076245|Julia|1977
tt0073486|One Flew Over the Cuckoo's Nest|1975
tt0057012|Dr. Strangelove|1964
tt0054997|The Hustler|1961
tt0048473|Pather Panchali|1955
tt0049674|Richard III|1955
tt0046268|The Wages of Fear|1953
tt0043686|Forbidden Games|1952
tt0036868|The Best Years of Our Lives|1946
''', 'https://www.bafta.org/awards/film'),
  DiscoveryAward('cannes', MediaKind.movie, r'''
tt36491653|It Was Just an Accident|2025
tt28607951|Anora|2024
tt17009710|Anatomy of a Fall|2023
tt7322224|Triangle of Sadness|2022
tt10944760|Titane|2021
tt6751668|Parasite|2019
tt8075192|Shoplifters|2018
tt4995790|The Square|2017
tt5168192|I, Daniel Blake|2016
tt4082068|Dheepan|2015
tt2758880|Winter Sleep|2014
tt2278871|Blue Is the Warmest Colour|2013
tt1602620|Amour|2012
tt0478304|The Tree of Life|2011
tt1588895|Uncle Boonmee Who Can Recall His Past Lives|2010
tt1149362|The White Ribbon|2009
tt1068646|The Class|2008
tt1032846|4 Months, 3 Weeks and 2 Days|2007
tt0460989|The Wind That Shakes the Barley|2006
tt0456396|The Child|2005
tt0361596|Fahrenheit 9/11|2004
tt0363589|Elephant|2003
tt0253474|The Pianist|2002
tt0208990|The Son's Room|2001
tt0168629|Dancer in the Dark|2000
tt0200071|Rosetta|1999
tt0156794|Eternity and a Day|1998
tt0120408|The Eel|1997
tt0120265|Taste of Cherry|1997
tt0117589|Secrets & Lies|1996
tt0114787|Underground|1995
tt0110912|Pulp Fiction|1994
tt0107822|The Piano|1993
tt0106332|Farewell My Concubine|1993
tt0104350|The Best Intentions|1992
tt0101410|Barton Fink|1991
tt0100935|Wild at Heart|1990
tt0098724|Sex, Lies, and Videotape|1989
tt0093713|Pelle the Conqueror|1987
tt0094011|Under the Sun of Satan|1987
tt0091530|The Mission|1986
tt0089748|When Father Was Away on Business|1985
tt0087884|Paris, Texas|1984
tt0084390|The Ballad of Narayama|1983
tt0084335|Missing|1982
tt0084934|Yol|1982
tt0082222|Man of Iron|1981
tt0080979|Kagemusha|1980
tt0078788|Apocalypse Now|1979
tt0078875|The Tin Drum|1979
tt0078754|All That Jazz|1979
tt0077138|The Tree of Wooden Clogs|1978
tt0076517|Padre Padrone|1977
tt0075314|Taxi Driver|1976
tt0072782|Chronicle of the Years of Fire|1975
tt0071360|The Conversation|1974
tt0070643|Scarecrow|1973
tt0070180|The Hireling|1973
tt0068346|The Mattei Affair|1972
tt0066919|The Working Class Goes to Heaven|1971
tt0067144|The Go-Between|1971
tt0066026|MASH|1970
tt0063850|If....|1968
tt0060176|Blowup|1966
tt0061138|A Man and a Woman|1966
tt0062271|The Birds, the Bees and the Italians|1966
tt0058450|The Umbrellas of Cherbourg|1964
tt0057091|The Leopard|1963
tt0056322|O Pagador de Promessas|1962
tt0055601|Viridiana|1961
tt0054426|The Long Absence|1961
tt0053779|La Dolce Vita|1960
tt0053146|Black Orpheus|1959
tt0050634|The Cranes Are Flying|1957
tt0049518|The Silent World|1956
tt0049233|Friendly Persuasion|1956
tt0048356|Marty|1955
tt0046268|The Wages of Fear|1953
tt0044572|Two Cents Worth of Hope|1952
tt0045251|Othello|1951
tt0043567|Miss Julie|1951
tt0154942|Neecha Nagar|1946
''', 'https://www.festival-cannes.com/en/retrospective/'),
];
