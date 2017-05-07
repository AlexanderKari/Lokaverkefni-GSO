create database 0404002220_lokaverkefni;

create table Flokkur
(	
	id int primary key,
    nafn varchar(50)
);

create table Flytjandi
(
	id int primary key,
    nafn varchar(50),
    faedingardagur int,
    danardagur int,
    id_flokks int,
    foreign key (id_flokks)
		references Flokkur(id)
);

create table lag
(
	id int primary key,
    nafn varchar(50),
    lengd double,
    texti text,
    id_tegund int,
    foreign key (id_tegund)
		references Tegund(id),
    id_flytjanda int,
    foreign key (id_flytjanda)
		references Flytjandi(id),
	id_diskur int,
    foreign key (id_diskur)
		references Diskur(id)
);

create table utgefandi
(
	id int primary key,
    nafn varchar(50)
);

create table Tegund
(
	id int primary key,
    nafn varchar(50)
);

create table Diskur
(
	id int primary key,
    nafn varchar(50),
    utgafudagur int,
    id_tegund int,
    foreign key (id_tegund)
		references Tegund(id),
	id_utgefanda int,
    foreign key (id_utgefanda)
		references utgefandi(id)
	
);

insert into
	Flokkur(id,nafn)
values
	(1,"Hljómsveit"),
    (2,"Sóló");
    

insert into
	Flytjandi(id,nafn,faedingardagur,danardagur,id_flokks)
values
	(1,"Aerosmith",1970,null,1),
    (2,"AC/DC",1973,null,1),
    (3,"Eric Clapton",1945,null,2),
    (4,"Dire Straits",1977,1995,1),
    (5,"Billy Joel",1949,null,2);
    
insert into
	lag(id,nafn,lengd,texti,id_tegund,id_flytjanda,id_diskur)
values
	(1,"Crazy",6.04,"Come Here baby 
	You know you drive me up a wall the way you make good on all the 
	nasty tricks you pull 
	Seems like we're makin' up more than we're makin' love 
	And it always seems you got somn' on your mind other than me 
	Girl, you got to change your crazy ways 
	You hear me 

	Say you're leavin' on a seven thirty train and that you're headin' 
	out to Hollywood 
	Girl you been givin' me that line so many times it kinda gets like 
	feelin' bad looks good 

	That kinda lovin' 
	Turns a man to a slave 
	That kinda lovin' 
	Sends a man right to his grave... 

	[Chorus:]
	I go crazy, crazy, baby, I go crazy 
	You turn it on 
	Then you're gone 
	Yeah you drive me 
	Crazy, crazy, crazy, for you baby 
	What can I do, honey 
	I feel like the color blue... 

	You're packin' up your stuff and talkin' like it's tough and tryin' 
	to tell me that it's time to go 
	But I know you ain't wearin' nothin' underneath that overcoat 
	And it's all a show 

	That kind of lovin' 
	Makes me wanna pull 
	Down the shade, yeah 
	That kind of lovin' 
	Yeah now I'm never, never, never, never gonna be the same 
	[Chorus]

	I'm losin' my mind, girl 
	'Cause I'm goin' crazy 

	I need your love, honey 
	I need your love 

	Crazy, crazy, crazy, I go crazy 
	You turn it on 
	Then you're gone 
	Yeah you drive me 
	Crazy, crazy, crazy, for you baby 
	I'm losin' my mind, girl 
	ÔÃause I'm goin' crazy 
	Crazy, crazy, crazy for you baby 
	You turn it on, then your gone 
	Yeah you drive me",1,1,1),
    (2,"Livin' on the edge",6.08,"There's somethin' wrong with the world today
	I don't know what it is
	Something's wrong with our eyes

	We're seein' things in a different way
	And God knows it ain't his
	It shore ain't no surprise

	Livin' on the edge
	Livin' on the edge
	Livin' on the edge
	Livin' on the edge

	There's somethin' wrong with the world today
	The light bulb's gettin dim
	There's meltdown in the sky

	If you can judge a wise man
	By the color of his skin
	Then mister you're a better man than I

	[Chorus:]
	Livin' on the edge
	You can't help yourself from fallin'
	Livin' on the edge
	You can't help yourself at all
	Livin' on the edge
	You can't stop yourself from fallin'
	Livin' on the edge

	Tell me what you think about your sit-u-a-tion
	Complication - aggravation
	Is getting to you

	If chicken little tells you that the sky is fallin'
	Even if it wasn't would you still come crawlin' 
	Back again
	I bet you would my friend
	Again & again & again & again & again

	Tell me what you think about your sit-u-a-tion
	Complication - aggravation
	Is getting to you

	If chicken little tells you that the sky is fallin'
	Even if it was would you still come crawlin' 
	Back again
	I bet you would my friend
	Again & again & again & again 

	Something right with the world today
	And everybody knows it's wrong
	But we can tell 'em no or we could let it go
	But I'd would rather be a hanging on
	[Chorus]

	Livin' on the edge
	Livin' on the edge
	Livin' on the edge
	Yeah, yeah, yeah, yeah, yeah, yeah, yeah
	[Chorus]

	Livin' on the edge
	You can't help yourself
	You can't help yourself
	Livin' on the edge
	You can't help yourself at all
	Livin' on the edge
	You can't help yourself
	You can't help yourself
	Livin' on the edge
	You can't help yourself
	You can't help yourself
	Livin' on the edge
	You can't help yourself from fallin'",1,1,1),
    (3,"I don't want to miss a thing",4.54,"I could stay awake just to hear you breathing
	Watch you smile while you are sleeping
	While you're far away and dreaming
	I could spend my life in this sweet surrender
	I could stay lost in this moment forever
	Every moment spent with you is a moment I treasure

	Don't want to close my eyes
	I don't want to fall asleep
	'Cause I'd miss you baby
	And I don't want to miss a thing
	'Cause even when I dream of you
	The sweetest dream will never do
	I'd still miss you baby
	And I don't want to miss a thing

	Lie close to you feeling your heart beating
	And I'm wondering what you're dreaming
	Wondering if it's me you're seeing
	Then I kiss your eyes
	And thank God we're together
	I just wanna stay with you in this moment forever
	Forever and ever

	Don't want to close my eyes
	I don't want to fall asleep
	'Cause I'd miss you baby
	And I don't want to miss a thing
	'Cause even when I dream of you
	The sweetest dream will never do
	I'd still miss you baby
	And I don't want to miss a thing

	I don't want to miss one smile
	I don't want to miss one kiss
	I just want to be with you
	Right here with you, just like this
	I just want to hold you close
	Feel your heart so close to mine
	And just stay here in this moment
	For all the rest of time

	Don't want to close my eyes
	I don't want to fall asleep
	'Cause I'd miss you baby
	And I don't want to miss a thing
	'Cause even when I dream of you
	The sweetest dream will never do
	I'd still miss you baby
	And I don't want to miss a thing

	Don't want to close my eyes
	I don't want to fall asleep
	I don't want to miss a thing",1,1,2),
    (4,"Sweet emotion",4.40,"Sweet emotion [2x]
	Talk about things and nobody cares
	Wearing other things that nobody wears
	You're callin' my name, but I gotta make it clear
	I can't say, baby, where I'll be in a year.

	Some sweat hog mama with a face like a gent
	Said my get up and go musta got up & went.
	Well, I got good news: she's a real good liar
	'Cause a backstage boogie set your pants on fire.

	Sweet emotion [2x]

	I pulled into town in a police car
	Your daddy said I took it just a little too far.
	You're tellin' other things, but your girlfriend lied
	You can't catch me 'cause the rabbit done died.
	Yes it did.

	Standin' in front just shakin' your ass.
	I take you backstage you can drink from my glass.
	I talk about something you can sure understand
	'Cause a month on the road and I'll be eatin' from your hand",1,1,3),
    (5,"Thunderstruck",4.52,"Thunder [x10]
	I was caught
	In the middle of a railroad track (thunder)
	I looked round
	And I knew there was no turning back (thunder)
	My mind raced
	And I thought what could I do (thunder)
	And I knew
	There was no help, no help from you (thunder)
	Sound of the drums
	Beating in my heart
	The thunder of guns
	Tore me apart
	You've been
	Thunderstruck

	Rode down the highway
	Broke the limit, we hit the town
	Went through to Texas, yeah Texas, and we had some fun
	We met some girls
	Some dancers who gave a good time
	Broke all the rules
	Played all the fools
	Yeah yeah they, they, they blew our minds
	And I was shaking at the knees
	Could I come again please
	Yeah them ladies were too kind
	You've been
	Thunderstruck

	I was shaking at the knees
	Could I come again please

	Thunderstruck, Thunderstruck, Thunderstruck, Thunderstruck
	It's alright, we're doin' fine
	It's alright, we're doin' fine, fine, fine
	Thunderstruck, yeah, yeah, yeah
	Thunderstruck, Thunderstruck
	Thunderstruck, baby, baby
	Thunderstruck, you've been Thunderstruck
	Thunderstruck, Thunderstruck
	You've been Thunderstruck",1,2,5),
    (6,"Hells Bells",5.11,"I'm rolling thunder pouring rain
	I'm coming on like a hurricane
	My lightning's flashing across the sky
	You're only young but you're gonna die
	I won't take no prisoners won't spare no lives
	Nobody's putting up a fight
	I got my bell I'm gonna take you to hell
	I'm gonna get ya satan get ya

	Hells bells
	Hells bells, you got me ringing
	Hells bells, my temperature's high
	Hells bells

	I'll give you black sensations up and down your spine
	If you're into evil you're a friend of mine
	See the white light flashing as I split the night
	Cause if good's on the left then I'm sticking to the right
	I won't take no prisoners won't spare no lives
	Nobody's puttin' up a fight
	I got my bell I'm gonna take you to hell
	I'm gonna get ya satan get ya

	Hells bells
	Hells bells, you got me ringing
	Hells bells, my temperature's high
	Hells bells

	Hells bells, satan's coming to you
	Hells bells, he's ringing them now

	Those hells bells, the temperature's high
	Hells bells, across the sky
	Hells bells, they're taking you down
	Hells bells, they're dragging you under
	Hells bells, gonna split the night
	Hells bells, there's no way to fight",1,2,4),
    (7,"You shook me all night long",3.30,"She was a fast machine she kept her motor clean
	She was the best damn woman that I ever seen
	She had the sightless eyes telling me no lies
	Knocking me out with those American thighs
	Taking more than her share
	Had me fighting for air
	She told me to come but I was already there
	Cause the walls start shaking
	The earth was quaking
	My mind was aching
	And we were making it
	And you shook me all night long
	Yeah you shook me all night long

	I'm working double time on the seduction line
	She's one of a kind she's just mine all mine
	Wanted no applause it's just another course
	Made a meal outta me
	And come back for more
	Had to cool me down to take another round
	Now I'm back in the ring to take another swing
	Cause the walls were shaking the earth was quaking
	My mind was aching
	And we were making it
	And you shook me all night long
	Yeah you shook me all night long
	Knocked me out I said you
	Shook me all night long
	You had me shaking and you
	Shook me all night long
	Yeah you shook me
	When you took me

	You really took me and you
	Shook me all night long
	You shook me all night long
	Yeah, yeah, you shook me all night long
	You really got me and you
	Shook me all night long
	Yeah you shook me
	Yeah you shook me
	All night long",1,2,4),
    (8,"Shoot To Thrill",5.22,"All you women who want a man of the street
	But you don't know which way you want to turn
	Just keep a coming and put your hand out to me
	'Cause I'm the one who's gonna make you burn

	I'm gonna take you down - down, down, down
	So don't you fool around
	I'm gonna pull it, pull it, pull the trigger

	Shoot to thrill, play to kill
	Too many women with too many pills
	Shoot to thrill, play to kill
	I got my gun at the ready, gonna fire at will
	Yeah

	I'm like evil, I get under your skin
	Just like a bomb that's ready to blow
	'Cause I'm illegal, I got everything
	That all you women might need to know

	I'm gonna take you down - yeah, down, down, down
	So don't you fool around
	I'm gonna pull it, pull it, pull the trigger

	Shoot to thrill, play to kill
	Too many women with too many pills
	Shoot to thrill, play to kill
	I got my gun at the ready, gonna fire at will
	'Cause I shoot to thrill, and I'm ready to kill
	I can't get enough, I can't get the thrill
	I shoot to thrill, play to kill
	Yeah, pull the trigger
	Pull it,

	Pull it, pull it, pull the trigger

	Oh
	Shoot to thrill, play to kill
	Too many women, with too many pills
	I said, shoot to thrill, play to kill
	I got my gun at the ready, gonna fire at will
	'Cause I shoot to thrill, and I'm ready to kill
	And I can't get enough, and I can't get my thrill
	Cause I shoot to thrill, play it again

	Yeah

	Shoot you down
	Yeah
	I'm gonna get you to the bottom and shoot you
	I'm gonna shoot you
	Oh hoo yeah yeah yeah

	I'm gonna shoot you down yeah yeah
	I'm gonna get you down
	Yeah yeah yeah yeah
	Shoot you, shoot you, shoot you, shoot you down
	Shoot you, shoot you, shoot you down
	Oh, oh, oh, oh, oh, oh, ooooooh

	I'm gonna shoot to thrill
	Play to kill
	Shoot to thrill

	Yeah, ooh yeah",1,2,4),
    (9,"Tears in heaven",4.34,"Would you know my name
	If I saw you in heaven?
	Would it be the same
	If I saw you in heaven?

	I must be strong
	And carry on
	'Cause I know I don't belong
	Here in heaven

	Would you hold my hand
	If I saw you in heaven?
	Would you help me stand
	If I saw you in heaven?

	I'll find my way
	Through night and day
	'Cause I know I just can't stay
	Here in heaven

	Time can bring you down
	Time can bend your knees
	Time can break your heart
	Have you begging please, begging please

	Beyond the door
	There's peace I'm sure
	And I know there'll be no more
	Tears in heaven

	Would you know my name
	If I saw you in heaven?
	Would you be the same
	If I saw you in heaven?

	I must be strong
	And carry on
	'Cause I know I don't belong
	Here in heaven",4,3,6),
    (10,"Wonderful Tonight",6.09,"It's late in the evening; she's wondering what clothes to wear.
	She puts on her make-up and brushes her long blonde hair.
	And then she asks me, Do I look all right?
	And I say, Yes, you look wonderful tonight.

	We go to a party and everyone turns to see
	This beautiful lady that's walking around with me.
	And then she asks me, Do you feel all right?
	And I say, Yes, I feel wonderful tonight.

	I feel wonderful because I see
	The love light in your eyes.
	And the wonder of it all
	Is that you just don't realize how much I love you.

	It's time to go home now and I've got an aching head,
	So I give her the car keys and she helps me to bed.
	And then I tell her, as I turn out the light,
	I say, My darling, you were wonderful tonight.
	Oh my darling, you were wonderful tonight",3,3,7),
    (11,"Layla",4.05,"What'll you do when you get lonely?
	And nobody's waiting by your side?
	You've been running and hiding much too long.
	You know it's just your foolish pride.

	Layla,
	You've got me on my knees, Layla.
	I'm begging, darling please, Layla.
	Darling won't you ease my worried mind.

	I tried to give you consolation
	When your old man had let you down.
	Like a fool, I fell in love with you.
	You've turned my whole world upside down.

	Layla,
	You've got me on my knees, Layla.
	I'm begging, darling please, Layla.
	Darling won't you ease my worried mind.

	Let's make the best of the situation
	Before I finally go insane.
	Please don't say, we'll never find a way
	And tell me all my love's in vain.

	Layla,
	You've got me on my knees, Layla.
	I'm begging, darling please, Layla.
	Darling won't you ease my worried mind.

	Layla,
	You've got me on my knees, Layla.
	I'm begging, darling please, Layla.
	Darling won't you ease my worried mind.

	[Guitar solo]

	Layla,
	You've got me on my knees, Layla.
	I'm begging, darling please, Layla.
	Darling won't you ease my worried mind.",1,3,9),
    (12,"Change The World",6.10,"If I could reach the stars
	Pull one down for you,
	Shine it on my heart
	So you could see the truth:

	That this love I have inside
	Is everything it seems.
	But for now I find
	It's only in my dreams.

	And I can change the world,
	I will be the sunlight in your universe.
	You would think my love was really something good,
	Baby, if I could change the world.

	If I could be king,
	Even for a day,
	I'd take you as my queen;
	I'd have it no other way.

	And our love would rule
	This kingdom we had made.
	'Til then I'd be a fool,
	Wishing for the day...

	That I can change the world,
	I would be the sunlight in your universe.
	You would think my love was really something good,
	Baby, if I could change the world.
	Baby, if I could change the world.

	I could change the world,
	I would be the sunlight in your universe.
	You would think my love was really something good,
	Baby, if I could change the world.
	Baby, if I could change the world.
	Baby, if I could change the world.",2,3,8),
    (13,"Sultans Of Swing",5.36,"You get a shiver in the dark
	It's raining in the park but meantime
	South of the river you stop and you hold everything
	A band is blowing Dixie double four time
	You feel alright when you hear that music ring

	Well, now you step inside but you don't see too many faces
	Coming in out of rain to hear the jazz go down
	Competition in other places
	Oh, but the horns, they're blowing that sound
	Way on down south, way on down south London town

	You check out Guitar George he knows all the chords
	Mind he's strictly rhythm he doesn't want to make it cry or sing
	Left-handed old guitar is all he can afford
	When he gets up under the lights to play his thing

	And Harry doesn't mind if he doesn't make the scene
	He's got a daytime job, he's doing alright
	He can play the honky tonk like anything
	Saving it up for Friday night
	With the Sultans, with the Sultans of Swing

	And a crowd of young boys, they're fooling around in the corner
	Drunk and dressed in their best brown baggies and their platform soles
	They don't give a damn about any trumpet playing band
	It ain't what they call rock and roll
	And the Sultans, yeah, the Sultans, they play Creole, Creole

	And then the man, he steps right up to the microphone
	And says at last just as the time bell rings
	Goodnight, now it's time to go home.
	And he makes it fast with one more thing,
	We are the Sultans, we are the Sultans of Swing.",1,4,10),
    (14,"Walk Of Life",4.14,"Here comes Johnny singing oldies, goldies
	Be-Bop-A-Lula, Baby What I Say
	Here comes Johnny singing I Gotta Woman
	Down in the tunnels, trying to make it pay

	He got the action, he got the motion
	Yeah, the boy can play
	Dedication, devotion
	Turning all the night time into the day

	He do the song about the sweet lovin' woman
	He do the song about the knife
	He do the walk, he do the walk of life

	Here comes Johnny and he'll tell you the story
	Hand me down my walkin' shoes
	Here comes Johnny with the power and the glory
	Backbeat the talkin' blues

	He got the action, he got the motion
	Yeah, the boy can play
	Dedication, devotion
	Turning all the night time into the day

	He do the song about the sweet lovin' woman
	He do the song about the knife
	He do the walk, he do the walk of life

	Here comes Johnny singing oldies, goldies
	Be-Bop-A-Lula, Baby What I Say
	Here comes Johnny singing I Gotta Woman
	Down in the tunnels, trying to make it pay

	He got the action, he got the motion
	Yeah the boy can play
	Dedication, devotion
	Turning all the night time into the day

	And after all the violence and double talk
	There's just a song in all the trouble and the strife
	You do the walk, you do the walk of life",1,4,11),
    (15,"Money For Nothing",4.36,"Now look at them yo-yo's that's the way you do it
	You play the guitar on the MTV
	That ain't workin' that's the way you do it
	Money for nothin' and chicks for free
	Now that ain't workin' that's the way you do it
	Lemme tell ya them guys ain't dumb
	Maybe get a blister on your little finger
	Maybe get a blister on your thumb

	We gotta install microwave ovens
	Custom kitchen deliveries
	We gotta move these refrigerators
	We gotta move these colour TV's

	See the little faggot with the earring and the makeup
	Yeah buddy that's his own hair
	That little faggot got his own jet airplane
	That little faggot he's a millionaire

	We gotta install microwave ovens
	Custom kitchens deliveries
	We gotta move these refrigerators
	We gotta move these colour TV's

	I shoulda learned to play the guitar
	I shoulda learned to play them drums
	Look at that mama, she got it stickin' in the camera
	Man we could have some fun
	And he's up there, what's that? Hawaiian noises?
	Bangin' on the bongoes like a chimpanzee
	That ain't workin' that's the way you do it
	Get your money for nothin' get your chicks for free

	We gotta install microwave ovens
	Custom kitchen deliveries
	We gotta move these refrigerators
	We gotta move these colour TV's, Lord

	Now that ain't workin' that's the way you do it
	You play the guitar on the MTV
	That ain't workin' that's the way you do it
	Money for nothin' and your chicks for free
	Money for nothin' and chicks for free",1,4,11),
    (16,"Water Of Love",5.26,"High and dry in the long hot day
	Lost and lonely in every way
	Got the flats all around me, sky up above
	Yes, I need a little water of love

	I've been too long lonely and my heart feels pain
	Crying out for some soothing rain
	I believe I have taken enough
	Yes, I need a little water of love

	Water of love deep in the ground
	But there ain't no water here to be found
	Some day, baby, when the river runs free
	It's gonna carry that water of love to me

	There's a bird up in a tree sitting up high
	Just a-waiting for me to die
	If I don't get some water soon
	I'll be dead and gone in the afternoon

	Water of love deep in the ground
	But there ain't no water here to be found
	Some day, baby, when the river runs free
	It's gonna carry that water of love to me

	Once I had a woman I could call my own
	Once I had a woman, now my woman she gone
	Once there was a river, now there's a stone
	You know it's evil when you're living alone

	Water of love deep in the ground
	But there ain't no water here to be found
	Some day, baby, when the river runs free
	It's gonna carry that water of love to me

	Water of love deep in the ground
	But there ain't no water here to be found
	Some day, baby, when the river runs free
	It's gonna carry that water of love to me",1,4,10),
    (17,"Uptown Girl",3.22,"She's been living in her uptown world
	I bet she's never had a backstreet guy
	I bet her momma never told her why

	I'm gonna try for an uptown girl
	She's been living in her white bread world
	As long as anyone with hot blood can
	And now she's looking for a downtown man
	That's what I am

	And when she knows what
	She wants from her time
	And when she wakes up
	And makes up her mind

	She'll see I'm not so tough
	Just because
	I'm in love with an uptown girl
	You know I've seen her in her uptown world
	She's getting tired of her high class toys
	And all her presents from her uptown boys
	She's got a choice

	Uptown girl
	You know I can't afford to buy her pearls
	But maybe someday when my ship comes in
	She'll understand what kind of guy I've been
	And then I'll win

	And when she's walking
	She's looking so fine
	And when she's talking
	She'll say that she's mine

	She'll say I'm not so tough
	Just because
	I'm in love
	With an uptown girl
	She's been living in her white bread world
	As long as anyone with hot blood can
	And now she's looking for a downtown man
	That's what I am

	Uptown girl
	She's my uptown girl
	You know I'm in love
	With an uptown girl
	My uptown girl
	You know I'm in love
	With an uptown girl
	My uptown girl
	You know I'm in love
	With an uptown girl
	My uptown girl
	You know I'm in love
	With an uptown girl",2,5,12),
    (18,"Piano Man",5.41,"It's nine o'clock on a Saturday 
	The regular crowd shuffles in 
	There's an old man sitting next to me 
	Makin' love to his tonic and gin 

	He says, Son, can you play me a memory 
	I'm not really sure how it goes 
	But it's sad and it's sweet and I knew it complete 
	When I wore a younger man's clothes. 

	La la la, di da da 
	La la, di da da da dum 

	Sing us a song, you're the piano man 
	Sing us a song tonight 
	Well, we're all in the mood for a melody 
	And you've got us feelin' alright 

	Now John at the bar is a friend of mine 
	He gets me my drinks for free 
	And he's quick with a joke or to light up your smoke 
	But there's someplace that he'd rather be 
	He says, Bill, I believe this is killing me.
	As the smile ran away from his face 
	Well I'm sure that I could be a movie star 
	If I could get out of this place

	Oh, la la la, di da da 
	La la, di da da da dum 

	Now Paul is a real estate novelist 
	Who never had time for a wife 
	And he's talkin' with Davy, who's still in the Navy 
	And probably will be for life 

	And the waitress is practicing politics 
	As the businessmen slowly get stoned 
	Yes, they're sharing a drink they call loneliness 
	But it's better than drinkin' alone

	Sing us a song you're the piano man 
	Sing us a song tonight 
	Well we're all in the mood for a melody 
	And you got us feeling alright

	It's a pretty good crowd for a Saturday 
	And the manager gives me a smile 
	'Cause he knows that it's me they've been comin' to see 
	To forget about life for a while 
	And the piano, it sounds like a carnival 
	And the microphone smells like a beer 
	And they sit at the bar and put bread in my jar 
	And say, Man, what are you doin' here? 

	Oh, la la la, di da da 
	La la, di da da da dum 

	Sing us a song you're the piano man 
	Sing us a song tonight 
	Well we're all in the mood for a melody 
	And you got us feeling alright",2,5,14),
    (19,"We Didin´t Start The Fire",4.05,"Harry Truman, Doris Day, Red China, Johnnie Ray
	South Pacific, Walter Winchell, Joe DiMaggio2

	Joe McCarthy, Richard Nixon, Studebaker, television
	North Korea, South Korea, Marilyn Monroe1

	Rosenbergs, H-bomb, Sugar Ray, Panmunjom
	Brando, The King and I and The Catcher in the Rye

	Eisenhower, vaccine, England's got a new queen
	Marciano, Liberace, Santayana goodbye

	We didn't start the fire
	It was always burning
	Since the world's been turning
	We didn't start the fire
	No we didn't light it
	But we tried to fight it1

	Joseph Stalin, Malenkov, Nasser and Prokofiev
	Rockefeller, Campanella, Communist Bloc

	Roy Cohn, Juan Peron, Toscanini, Dacron
	Dien Bien Phu falls, Rock Around the Clock

	Einstein, James Dean, Brooklyn's got a winning team
	Davy Crockett, Peter Pan, Elvis Presley, Disneyland

	Bardot, Budapest, Alabama, Krushchev
	Princess Grace, Peyton Place, trouble in the Suez

	We didn't start the fire
	It was always burning
	Since the world's been turning
	We didn't start the fire
	No we didn't light it
	But we tried to fight it

	Little Rock, Pasternak, Mickey Mantle, Kerouac
	Sputnik, Chou En-Lai, Bridge on the River Kwai

	Lebanon, Charles de Gaulle, California baseball
	Starkweather, homicide, children of thalidomide

	Buddy Holly, Ben Hur, space monkey, Mafia
	Hula hoops, Castro, Edsel is a no-go

	U2, Syngman Rhee, payola and Kennedy
	Chubby Checker, Psycho, Belgians in the Congo1

	We didn't start the fire
	It was always burning
	Since the world's been turning
	We didn't start the fire
	No we didn't light it
	But we tried to fight it

	Hemingway, Eichmann, Stranger in a Strange Land
	Dylan, Berlin, Bay of Pigs invasion1

	Lawrence of Arabia, British Beatlemania
	Ole Miss, John Glenn, Liston beats Patterson

	Pope Paul, Malcolm X, British politician sex
	JFK, blown away, what else do I have to say

	We didn't start the fire
	It was always burning
	Since the world's been turning
	We didn't start the fire
	No we didn't light it
	But we tried to fight it

	Birth control, Ho Chi Minh, Richard Nixon back again
	Moonshot, Woodstock, Watergate, punk rock
	Begin, Reagan, Palestine, terror on the airline
	Ayatollah's in Iran, Russians in Afghanistan

	Wheel of Fortune, Sally Ride, heavy metal, suicide
	Foreign debts, homeless vets, AIDS, crack, Bernie Goetz
	Hypodermics on the shores, China's under martial law
	Rock and roller cola wars, I can't take it anymore

	We didn't start the fire
	It was always burning
	Since the world's been turning
	We didn't start the fire
	But when we are gone
	Will it still burn on, and on, and on, and on

	We didn't start the fire
	It was always burning
	Since the world's been turning
	We didn't start the fire
	No we didn't light it
	But we tried to fight it

	We didn't start the fire
	It was always burning
	Since the world's been turning
	We didn't start the fire
	No we didn't light it
	But we tried to fight it",2,5,13),
    (20,"Movin' out",3.25,"Anthony works in the grocery store
	Savin' his pennies for some day
	Mama Leone left a note on the door,
	She said,
	Sonny, move out to the country.

	Oh but workin' too hard can give you a heart attack
	You oughta know by now
	Who needs a house out in Hackensack?
	Is that all you get for your money?

	And it seems such a waste of time
	If that's what it's all about
	Mama, if that's movin' up then I'm movin' out.

	Sergeant O'Leary is walkin' the beat
	At night he becomes a bartender
	He works at Mister Cacciatore's down on Sullivan Street
	Across from the medical center

	And he's tradin' in his Chevy for a Cadillac
	You oughta know by now
	And if he can't drive
	With a broken back
	At least he can polish the fenders

	And it seems such a waste of time
	If that's what it's all about
	Mama, if that's movin' up then I'm movin' out.

	You should never argue with a crazy mind
	You oughta know by now
	You can pay Uncle Sam with the overtime
	Is that all you get for your money?

	And if that's what you have in mind
	Yeah, if that's what you're all about,
	Good luck, moving up, 'cause I'm movin' out!

	I'm movin' out...",2,5,15);

			

insert into
	utgefandi(id,nafn)
values
	(1,"Geffen Records"),
    (2,"Columbia  Records"),
    (3,"Atlantic Records"),
    (4,"Atco Records"),
    (5,"Duck Records"),
    (6,"RSO Records"),
    (7,"Reprise Records"),
    (8,"Vertigo Records"),
    (9,"Warner Bros. Records");
    
    
    
insert into
	Tegund(id,nafn)
Values
	(1,"Rokk"),
    (2,"Klassík"),
    (3,"Rómantík"),
    (4,"Sorg");
    
insert into
	Diskur(id,nafn,utgafudagur,id_tegund,id_utgefanda)
values
(1,"Get A Grip",1993,1,1),
(2,"I Dont Want To Miss A Thing",1998,1,2),
(3,"Toys In The Attic",1975,1,2),
(4,"Back in Black",1980,1,3),
(5,"The Razors Edge",1990,1,4),
(6,"Rush",1992,2,5),
(7,"Slowhand",1977,2,6),
(8,"Phenomenon",1996,2,7),
(9,"Eric Clapton",1970,2,4),
(10,"Dire Straits",1978,1,8),
(11,"Brother in Arms",1985,1,9),
(12,"An Innocent Man",1983,2,2),
(13,"Storm Front",1989,1,2),
(14,"Piano Man",1973,1,2),
(15,"The Stranger",1977,1,2);


select lag.nafn,Diskur.nafn from lag
inner join Diskur on Diskur.id = lag.id_diskur
where diskur.nafn = "Back in Black";

select Flytjandi.nafn,lag.nafn from lag
inner join Flytjandi on Flytjandi.id = lag.id_flytjanda
where Flytjandi.nafn = "AC/DC";

select tegund.nafn,lag.nafn from lag
inner join tegund on tegund.id = lag.id_tegund
where tegund.nafn = "Rokk";

select lengd,nafn from lag
where lengd > 5;

select utgafudagur,nafn from diskur
where utgafudagur > 2010;

select diskur.nafn,flytjandi.nafn,diskur.utgafudagur,utgefandi.nafn  from diskur
inner join lag on lag.id_diskur = diskur.id
inner join Flytjandi on flytjandi.id = lag.id_flytjanda
inner join utgefandi on utgefandi.id = diskur.id_utgefanda
order by utgefandi.nafn asc
limit 2;

select lag.lengd,Flytjandi.nafn,utgefandi.nafn from lag
inner join flytjandi on flytjandi.id = lag.id_flytjanda
inner join diskur on diskur.id = lag.id_diskur
inner join utgefandi on utgefandi.id = diskur.id_utgefanda
order by lag.lengd desc
limit 5;

select tegund.nafn,count(diskur.nafn) from diskur
inner join tegund on tegund.id = diskur.id_tegund
group by tegund.nafn
order by count(diskur.nafn) desc
limit 2;

select utgefandi.nafn,count(diskur.nafn) from diskur
inner join utgefandi on utgefandi.id = diskur.id_utgefanda
group by utgefandi.nafn
order by count(diskur.nafn) 
limit 1;

select diskur.nafn,tegund.nafn,utgefandi.nafn from diskur
inner join tegund on tegund.id = diskur.id_tegund
inner join utgefandi on utgefandi.id = diskur.id_utgefanda
where utgafudagur between 1998 and 2017
group by utgefandi.nafn;

select nafn from lag
where nafn like "A%";

select nafn from lag
where nafn like "%s%";

select nafn,2017-faedingardagur from Flytjandi;

select avg(lengd) from lag;

select Flytjandi.nafn,count(lag.nafn) from lag
inner join flytjandi on flytjandi.id = lag.id_flytjanda
group by flytjandi.nafn
having count(lag.nafn) > 4;

select Flytjandi.nafn,2017-flytjandi.faedingardagur,lag.nafn from lag
inner join flytjandi on flytjandi.id = lag.id_flytjanda
order by 2017-flytjandi.faedingardagur desc
limit 4;





