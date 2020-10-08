# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.destroy_all

blake = Author.create(name: "William Blake")

innocence = Book.create(author_id: blake.id, title: "Songs of Innocence and Experience / Songs of Innocence", year: "1789-94")
experience = Book.create(author_id: blake.id, title: "Songs of Innocence and Experience / Songs of Experience", year: "1789-94")
rosseti = Book.create(author_id: blake.id, title: "Poems from the Rosseti Manuscript / Part I.", year: "Written circa 1793")

poem_i_1 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "INTRODUCTION", content: "
Piping down the valleys wild,
Piping songs of pleasant glee,
On a cloud I saw a child,
And he laughing said to me:

‘‘Pipe a song about a Lamb!’’
So I piped with merry cheer.
‘‘Piper, pipe that song again;’’
So I piped: he wept to hear.

‘‘Drop thy pipe, thy happy pipe;
Sing thy songs of happy cheer:!’’
So I sang the same again,
While he wept with joy to hear.

‘‘Piper, sit thee down and write
In a book, that all may read.’’
So he vanish’d from my sight;
And I pluck’d a hollow reed,

And I made a rural pen,
And I stain’d the water clear,
And I wrote my happy songs
Every child may joy to hear.
")

poem_i_2 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "THE SHEPHERD", content: "
How sweet is the Shepherd’s sweet lot!
From the morn to the evening he stays;
He shall follow his sheep all the day,
And his tongue shall be filled with praise.

For he hears the lambs’ innocent call,
And he hears the ewes’ tender reply;
He is watching while they are in peace,
For they know when their Shepherd is nigh.
")

poem_i_3 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "THE ECHOING GREEN", content: "
The sun does arise,
And make happy the skies;
The merry bells ring
To welcome the Spring;
The skylark and thrush,
The birds of the bush,
Sing louder around
To the bells’ cheerful sound;
While our sports shall be seen
On the echoing Green.

Old John, with white hair,
Does laugh away care,
Sitting under the oak,
Among the old folk.
They laugh at our play,
And soon they all say,
‘‘Such, such were the joys
When we all — girls and boys —
In our youth-time were seen
On the echoing Green.’’

Till the little ones, weary,
No more can be merry:
The sun does descend,
And our sports have an end.
Round the laps of their mothers
Many sisters and brothers,
Like birds in their nest,
Are ready for rest,
And sport no more seen
On the darkening green.
")

poem_i_4 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "THE LAMB", content: "
Little Lamb, who make thee
Dost thou know who made thee,
Gave thee life, and bid thee feed
By the stream and o’er the mead;
Gave thee clothing of delight,
Softest clothing, wolly, bright;
Gave thee such a tender voice,
Making all the vales rejoice?
Little Lamb, who made thee?
Dost thou know who made thee?

Little Lamb, I’ll tell thee;
Little Lamb, I’ll tell thee:
He is called by thy name,
For He calls Himself a Lamb
He is meek, and He is mild,
He became a little child.
I a child, and thou a lamb,
We are called by His name.
Little Lamb, God bless thee!
Little Lamb, God bless thee!
")

poem_i_5 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "THE LITTLE BLACK BOY", content: "
My mother bore me in the southern wild,
And I am black, but oh my soul is white!
White as an angel is the English child,
But I am black, as if bereaved of light.

My mother taught me underneath a tree,
And, sitting down before the heat of day,
She took me on her lap and kissed me,
And, pointed to the east, began to say:

‘‘Look on the rising sun: there God does live,
And gives His light, and gives His heat away,
And flowers and trees and beasts and men receive
Comfort in morning, joy in the noonday.

‘‘And we are put on earth a little space,
That we may learn to bear the beams of love
And these black bodies and this sunburnt face
Is but a cloud, and like a shady grove.

‘‘For when our souls have learn’d the heat to bear,
The cloud will vanish, we shall hear His voice,
Saying, ’Come out from the grove, my love and care
And round my golden tent like lambs rejoice’,’’

Thus did my mother say, and kissed me;
And thus I say to little English boy.
When I from black and he from white cloud free,
And round the tent of God like lambs we joy

I’ll shade him from the heat till he can bear
To lean in joy upon our Father’s knee;
And then I’ll stand and stroke his silver hair,
And be like him, and he will then love me.
")

poem_i_6 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "THE BLOSSOM", content: "
Merry, merry sparrow!
Under leaves so green
A happy blossom
Sees you, swift as arrow,
Seek your cradle narrow,
Near my bosom.
Pretty, pretty robin!
Under leaves so green
A happy blossom
Hears you sobbing, sobbing,
Pretty, pretty robin,
Near my bosom.
")

poem_i_7 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "THE CHIMNEY-SWEEPER", content: "
When my mother died I was very young,
And my father sold me while yet my tongue
Could scarcely cry ‘‘Weep! weep! weep! weep!’’
So your chimneys I sweep, and in soot I sleep.

There’s little Tom Dacre, who cried when his head,
That curled like a lamb’s back, was shaved; so I said,
‘‘Hush, Tom! never mind it, for, when your head’s bare,
You know that the soot cannot spoil your white hair.’’

And so he was quiet, and that very night,
As Tom was a-sleeping, he had such a sight! —
That thousands of sweepers, Dick, Joe, Ned, and Jack,
Were all of them locked up in coffins of black.

And by came an angel, who had a bright key,
And he opened the coffins, and let them all free;
Then down a green plain, leaping, laughing, they run,
And wash in a river, and shine in the sun.

Then naked and white, all their bags left behind,
They rise upon clouds, and sport in the wind;
And the Angel told Tom, if he’d be a good boy,
He’d have God for his father, and never want joy.

And so Tom awoke, and we rose in the dark,
And got with our bags and our brushes to work.
Though the morning was cold, Tom was happy and warm:
So, if all do their duty, they need not fear harm.
")

poem_i_8 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "THE LITTLE BOY LOST", content: "
‘‘Father, father, where are you going?
Oh do not walk so fast!
Speak, father, speak to you little boy,
Or else I shall be lost.’’

The night was dark, no father was there,
The child was wet with dew;
The mire was deep, and the child did weep,
And away the vapour flew.
")

poem_i_9 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "THE LITTLE BOY FOUND", content: "
The little boy lost in the lonely fen,
Led by the wandering light,
Began to cry, but God, ever nigh,
Appeared like his father, in white.

He kissed the child, and by the hand led,
And to his mother brought,
Who in sorrow pale, through the lonely dale,
The little boy weeping sought.
")

poem_i_10 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "LAUGHING SONG", content: "
When the green woods laugh with the voice of joy,
And the dimpling stream runs laughing by;
When the air does laugh with our merry wit,
And the green hill laughs with the noise of it;

when the meadows laugh with lively green,
And the grasshopper laughs in the merry scene,
When Mary and Susan and Emily
With their sweet round mouths sing ‘‘Ha, ha he!’’

When the painted birds laugh in the shade,
Where our table with cherries and nuts is spread:
Come live, and be merry, and join with me,
To sing the sweet chorus of ‘‘Ha, ha, he!’’
")

poem_i_11 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "A SONG", content: "
Sweet dreams, form a shade
O’er my lovely infant’s head!
Sweet dreams of pleasant streams
By happy, silent, moony beams!

Sweet Sleep, with soft down
Weave thy brows an infant crown
Sweet Sleep, angel mild,
Hover o’er my happy child!

Sweet smiles, in the night
Hover over my delight!
Sweet smiles, mother’s smile,
All the livelong night beguile.

Sweet moans, dovelike sighs,
Chase not slumber from thine eyes!
Sweet moan, sweeter smile,
All the dovelike moans beguile.

Sleep, sleep, happy child!
All creation slept and smiled.
Sleep, sleep, happy sleep,
While o’er thee doth mother weep.

Sweet babe, in thy face
Holy image I can trace;
Sweet babe, once like thee
Thy Maker lay, and wept for me:

Wept for me, for thee, for all,
When He was an infant small.
Thou His image ever see,
Heavenly face that smiles on thee!

Smiles on thee, on me, on all,
Who became an infant small;
Infant smiles are his own smiles;
Heaven and earth to peace beguiles.
")

poem_i_12 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "DIVINE IMAGE", content: "
To Mercy, Pity, Peace, and Love,
All pray in their distress,
And to these virtues of delight
Return their thankfulness.

For Mercy, Pity, Peace, and Love,
Is God our Father dear;
And Mercy, Pity, Peace, and Love,
Is man, his child and care.

For Mercy has a human heart
Pity, a human face;
And Love, the human form divine;
And Peace, the human dress.

Then every man, of every clime,
That prays in his distress,
Prays to the human form divine:
Love, Mercy, Pity, Peace.

And all must love the human form,
In heathen, Turk, or Jew.
Where Mercy, Love, and Pity dwell,
There God is dwelling too.
")

poem_i_13 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "HOLY THURSDAY", content: "
’Twas on a Holy Thursday, their innocent faces clean,
Came children walking two and two, in read, and blue, and green:
Grey-headed beadles walked before, with wands as white as snow,
Till into the high dome of Paul’s they like Thames waters flow.

Oh what a multitude they seemed, these flowers of London town!
Seated in companies they sit, with radiance all their own.
The hum of multitudes was there, but multitudes of lambs,
Thousands of little boys and girls raising their innocent hands.

Now like a mighty wild they raise to heaven the voice of song,
Or like harmonious thunderings the seats of heaven among:
Beneath them sit the aged man, wise guardians of the poor.
Then cherish pity, lest you drive an angel from your door.
")

poem_i_14 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "NIGHT", content: "
The sun descending in the west,
The evening star does shine;
The birds are silent in their nest,
And I must seek for mine.
The moon, like a flower
In heaven’s high bower,
With silent delight,
Sits and smiles on the night.

Farewell, green fields and happy grove,
Where flocks have ta’en delight.
Where lambs have nibbled, silent move
The feet of angels bright;
Unseen they pour blessing,
And joy without ceasing,
On each bud and blossom,
And each sleeping bosom.

They look in every thoughtless nest
Where birds are covered warm;
They visit caves of every beast,
To keep them all from harm:
If they see any weeping
That should have been sleeping,
They pour sleep on their head,
And sit down by their bed.

When wolves and tigers howl for prey,
They pitying stand and weep;
Seeking to drive their thirst away,
And keep them from the sheep.
But, if they rush dreadful,
The angels, most heedful,
Receive each mild spirit,
New worlds to inherit.

And there the lion’s ruddy eyes
Shall flow with tears of gold:
And pitying the tender cries,
And walking round the fold:
Saying: ‘‘Wrath by His meekness,
And, by His health, sickness,
Are driven away
From our immortal day.

‘‘And now beside thee, bleating lamb,
I can lie down and sleep,
Or think on Him who bore thy name,
Graze after thee, and weep.
For, washed in life’s river,
My bright mane for ever
Shall shine like the gold,
As I guard o’er the fold.’’
")

poem_i_15 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "SPRING", content: "
Sound the flute!
Now it’s mute!
Bird’s delight,
Day and night,
Nightingale,
In the dale,
Lark in sky,—
Merrily,
Merrily merrily, to welcome in the year.

Little boy,
Full of joy;
Little girl,
Sweet and small;
Cock does crow,
So do you;
Merry voice,
Infant noise;
Merrily, merrily, to welcome in the year.

Little lamb,
Here I am;
Come and lick
My white neck;
Let me pull
Your soft wool;
Let me kiss
Your soft face;
Merrily, merrily, to welcome in the year.
")

poem_i_16 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "NURSE’S SONG", content: "
When the voices of children are heard on the green,
And laughing is heard on the hill,
My heart is at rest within my breast,
And everything else is still.
‘‘Then come home, my children, the sun is gone down,
And the dews of night arise;
Come, come, leave off play, and let us away,
Till the morning appears in the skies.’’

‘‘No, no, let us play, for it is yet day,
And we cannot go to sleep;
Besides, in the sky the little birds fly,
And the hills are all covered with sheep.’’
‘‘Well, well, go and play till the light fades away,
And then go home to bed.’’
The little ones leaped, and shouted, and laughed,
And all the hills echoed.
")

poem_i_17 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "INFANT JOY", content: "
‘‘I have no name;
I am but two days old.’’
What shall I call thee?
‘‘I happy am,
Joy is my name.’’
Sweet joy befall thee!

Pretty joy!
Sweet joy, but two days old.
Sweet Joy I call thee:
Thou dost smile,
I sing the while;
Sweet joy befall thee!
")

poem_i_18 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "A DREAM", content: "
Once a dream did weave a shade
O’er my angel-guarded bed,
That an emmet lost its way
Where on grass methought I lay.

Troubled, wildered, and forlorn,
Dark, benighted, travel-worn,
Over many a tangle spray,
All heart-broke, I heard her say:

‘‘Oh my children! do they cry,
Do they hear their father sigh?
Now they look abroad to see,
Now return and weep for me.’’

Pitying, I dropped a tear:
But I saw a glow-worm near,
Who replied, ‘‘What wailing wight
Calls the watchman of the night?

‘‘I am set to light the ground,
While the beetle goes his round:
Follow now the beetle’s hum;
Little wanderer, hie thee home!’’
")

poem_i_19 = Poem.create(author_id: blake.id, book_id: innocence.id, title: "ON ANOTHER’S SORROW", content: "
Can I see another’s woe,
And not be in sorrow too?
Can I see another’s grief,
And not seek for kind relief?

Can I see a falling tear,
And not feel my sorrow’s share?
Can a father see his child
Weep, nor be with sorrow filled?

Can a mother sit and hear
An infant groan, an infant fear?
No, no! never can it be!
Never, never can it be!

And can He who smiles on all
Hear the wren with sorrows small,
Hear the small bird’s grief and care,
Hear the woes that infants bear —

And not sit beside the next,
Pouring pity in their breast,
And not sit the cradle near,
Weeping tear on infant’s tear?

And not sit both night and day,
Wiping all our tears away?
Oh no! never can it be!
Never, never can it be!

He doth give his joy to all:
He becomes an infant small,
He becomes a man of woe,
He doth feel the sorrow too.

Think not thou canst sigh a sigh,
And thy Maker is not by:
Think not thou canst weep a tear,
And thy Maker is not year.

Oh He gives to us his joy,
That our grief He may destroy:
Till our grief is fled an gone
He doth sit by us and moan.
")

p "songs of innocence done :)"

poem_e_20 = Poem.create(author_id: blake.id, book_id: experience.id, title: "INTRODUCTION", content: "
Hear the voice of the Bard,
Who present, past, and future, sees;
Whose ears have heard
The Holy Word
That walked among the ancient tree;

Calling the lapsed soul,
And weeping in the evening dew;
That might control
The starry pole,
And fallen, fallen light renew!

‘‘O Earth, O Earth, return!
Arise from out the dewy grass!
Night is worn,
And the morn
Rises from the slumbrous mass.

‘‘Turn away no more;
Why wilt thou turn away?
The starry floor,
The watery shore,
Are given thee till the break of day.’’
")

poem_e_21 = Poem.create(author_id: blake.id, book_id: experience.id, title: "EARTH’S ANSWER", content: "
Earth raised up her head
From the darkness dread and drear,
Her light fled,
Stony, dread,
And her locks covered with grey despair.

‘‘Prisoned on watery shore,
Starry jealousy does keep my den
Cold and hoar;
Weeping o’re,
I hear the father of the ancient men.

‘‘Selfish father of men!
Cruel, jealous, selfish fear!
Can delight,
Chained in night,
The virgins of youth and morning bear?

‘‘Does spring hide its joy,
When buds and blossoms grow?
Does the sower
Sow by night,
Or the plowman in darkness plough?

‘‘Break this heavy chain,
That does freeze my bones around!
Selfish, vain,
Eternal bane,
That free love with bondage bound.’’
")

poem_e_22 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE CLOD AND THE PEBBLE", content: "
‘‘Love seeketh not itself to please,
Nor for itself hath any care,
But for another gives it ease,
And builds a heaven in hell’s despair.’’

So sang a little clod of clay,
Trodden with the cattle’s feet,
But a pebble of the brook
Warbled out these metres meet:

‘‘Love seeketh only Self to please,
To bind another to its delight,
Joys in another’s loss of ease,
And builds a hell in heaven’s despite.’’
")

poem_e_23 = Poem.create(author_id: blake.id, book_id: experience.id, title: "HOLY THURSDAY", content: "
Is this a holy thing to see
In a rich and fruitful land, —
Babes reduced to misery,
Fed with cold and usurous hand?

Is that trembling cry a song?
Can it be a song of joy?
And so many children poor?
It is a land of poverty!

And their son does never shine,
And their fields are bleak and bare,
And their ways are filled with thorns:
It is eternal winter there.

For where’er the sun does shine,
And where’er the rain does fall,
Babes should never hunger there,
Nor poverty the mind appall.
")

poem_e_24 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE LITTLE GIRL LOST", content: "
In futurity
I prophetic see
That the earth from sleep
(Grave the sentence deep)

Shall arise, and seek
for her Maker meek;
And the desert wild
Become a garden mild.

In the southern clime,
Where the summer’s prime
Never fades away,
Lovely Lyca lay.

Seven summers old
Lovely Lyca told.
She had wandered long,
Hearing wild birds’ song.

‘‘Sweet sleep, come to me
Underneath this tree;
Do father, mother, weep?
Where can Lyca sleep?

‘‘Lost in desert wild
Is your little child.
How can Lyca sleep
If her mother weep?

‘‘If her heart does ache,
Then let Lyca wake;
If my mother sleep,
Lyca shall not weep.

‘‘Frowning, frowning night,
O’er this desert bright
Let thy moon arise,
While I close my eyes.’’

Sleeping Lyca lay
While the beasts of prey,
Come from caverns deep,
Viewed the maid asleep.

The kingly lion stood,
And the virgin viewed:
Then he gambolled round
O’er the hallowed ground.

Leopards, tigers, play
Round her as she lay;
While the lion old
Bowed his mane of gold,

And her breast did lick
And upon her neck,
From his eyes of flame,
Ruby tears there came;

While the lioness
Loosed her slender dress,
And naked they conveyed
To caves the sleeping maid.
")

poem_e_25 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE LITTLE GIRL FOUND", content: "
All the night in woe
Lyca’s parents go
Over valleys deep,
While the deserts weep.

Tired and woe-begone,
Hoarse with making moan,
Arm in arm, seven days
They traced the desert ways.

Seven nights they sleep
Among shadows deep,
And dream they see their child
Starved in desert wild.

Pale through pathless ways
The fancied image strays,
Famished, weeping, weak,
With hollow piteous shriek.

Rising from unrest,
The trembling woman presse
With feet of weary woe;
She could no further go.

In his arms he bore
Her, armed with sorrow sore;
Till before their way
A couching lion lay.

Turning back was vain:
Soon his heavy mane
Bore them to the ground,
Then he stalked around,

Smelling to his prey;
But their fears allay
When he licks their hands,
And silent by them stands.

They look upon his eyes,
Filled with deep surprise;
And wondering behold
A spirit armed in gold.

On his head a crown,
On his shoulders down
Flowed his golden hair.
Gone was all their care.

‘‘Follow me,’’ he said;
‘‘Weep not for the maid;
In my palace deep,
Lyca lies asleep.’’

Then they followed
Where the vision led,
And saw their sleeping child
Among tigers wild.

To this day they dwell
In a lonely dell,
Nor fear the wolvish howl
Nor the lion’s growl.
")

poem_e_26 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE CHIMNEY SWEEPER", content: "
A little black thing in the snow,
Crying ‘‘weep! weep!’’ in notes of woe!
‘‘Where are thy father and mother? Say!’’—
‘‘They are both gone up to the church to pray.

‘‘Because I was happy upon the heath,
And smiled among the winter’s snow,
They clothed me in the clothes of death,
And taught me to sing the notes of woe.

‘‘And because I am happy and dance and sing,
They think they have done me no injury,
And are gone to praise God and his priest and king,
Who make up a heaven of our misery.’’
")

poem_e_27 = Poem.create(author_id: blake.id, book_id: experience.id, title: "NURSE’S SONG", content: "
When voices of children are heard on the green,
And whisperings are in the dale,
The days of my youth rise fresh in my mind,
My face turns green and pale.

Then come home, my children, the sun is gone down,
And the dews of night arise;
Your spring and your day are wasted in play,
And your winter and night in disguise.
")


poem_e_28 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE SICK ROSE", content: "
O rose, thou art sick!
The invisible worm,
That flies in the night,
In the howling storm,

Has found out thy bed
Of crimson joy,
And his dark secret love
Does thy life destroy.
")

poem_e_29 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE FLY", content: "
Little Fly,
Thy summer’s play
My thoughtless hand
Has brushed away.

Am not I
A fly like thee?
Or art not thou
A man like me?

For I dance
And drink, and sing,
Till some blind hand
Shall brush my wing.

If thought is life
And strength and breath
And the want
Of thought is death;

Then am I
A happy fly,
If I live,
Or if I die.
")

poem_e_30 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE ANGEL", content: "
I dreamt a dream! What can it mean?
And that I was a maiden Queen
Guarded by an Angel mild:
Witless woe was ne’er beguiled!

And I wept both night and day,
And he wiped my tears away;
And I wept both day and night,
And hid from him my heart’s delight.

So he took his wings, and fled;
Then the morn blushed rosy red.
I dried my tears, and armed my fears
With ten-thousand shields and spears.

Soon my Angel came again;
I was armed, he came in vain;
For the time of youth was fled,
And grey hairs were on my head.
")

poem_e_31 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE TIGER", content: "
Tiger, tiger, burning bright
In the forest of the night,
What immortal hand or eye
Could Frame thy fearful symmetry?

In what distant deeps or skies
Burnt the fire of thine eyes?
On what wings dare he aspire?
What the hand dare seize the fire?

And what shoulder and what art
Could twist the sinews of thy heart?
And, when thy heart began to beat,
What dread hand and what dread feet?

What the hammer? what the chain?
In what furnace was thy brain?
What the anvil? what dread grasp
Dare its deadly terrors clasp?

When the stars threw down their spears,
And watered heaven with their tears,
Did he smile his work to see?
Did he who made the lamb make thee?

Tiger, tiger, burning bright
In the forests of the night,
What immortal hand or eye
Dare frame thy fearful symmetry?
")

poem_e_32 = Poem.create(author_id: blake.id, book_id: experience.id, title: "MY PRETTY ROSE TREE", content: "
A flower was offered to me,
Such a flower as May never bore;
But I said ‘‘I’ve a pretty rose tree,’’
And I passed the sweet flower o’er.

Then I went to my pretty rose tree,
To tend her by day and by night;
But my rose turned away with jealousy,
And her thorns were my only delight.
")

poem_e_33 = Poem.create(author_id: blake.id, book_id: experience.id, title: "AH SUNFLOWER", content: "
Ah Sunflower, weary of time,
Who countest the steps of the sun;
Seeking after that sweet golden clime
Where the traveller’s journey is done;

Where the Youth pined away with desire,
And the pale virgin shrouded in snow,
Arise from their graves, and aspire
Where my Sunflower wishes to go!
")

poem_e_34 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE LILY", content: "
The modest Rose puts forth a thorn,
The humble sheep a threat’ning horn:
While the Lily white shall in love delight,
Nor a thorn nor a threat stain her beauty bright.
")

poem_e_35 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE GARDEN OF LOVE", content: "
I laid me down upon a bank,
Where Love lay sleeping;
I heard among the rushes dank
Weeping, weeping.

Then I went to the heath and the wild,
To the thistles and thorns of the waste;
And they told me how they were beguiled,
Driven out, and compelled to the chaste.

I went to the Garden of Love,
And saw what I never had seen;
A Chapel was built in the midst,
Where I used to play on the green.

And the gates of this Chapel were shut
And ‘‘Thou shalt not,’’ writ over the door;
So I turned to the Garden of Love
That so many sweet flowers bore.

And I saw it was filled with graves,
And tombstones where flowers should be;
And priests in black gowns were walking their rounds,
And binding with briars my joys and desires.
")

poem_e_36 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE LITTLE VAGABOND", content: "
Dear mother, dear mother, the Church is cold;
But the Alehouse is healthy, and pleasant, and warm.
Besides, I can tell where I am used well;
The poor parsons with wind like a blown bladder swell.

But, if at the Church they would give us some ale,
And a pleasant fire our souls to regale,
We’d sing and we’d pray all the livelong day,
Nor ever once wish from the Church to stray.

Then the Parson might preach, and drink, and sing,
And we’d be as happy as birds in the spring;
And modest Dame Lurch, who is always at church,
Would not have bandy children, nor fasting, nor birch.

And God, like a father, rejoicing to see
His children as pleasant and happy as he,
Would have no more quarrel with the Devil or the barrel,
But kiss him, and give him both drink and apparel.
")

poem_e_37 = Poem.create(author_id: blake.id, book_id: experience.id, title: "LONDON", content: "
I wandered through each chartered street,
Near where the chartered Thames does flow,
And mark in every face I meet,
Marks of weakness, marks of woe.

In every cry of every man,
In every infant’s cry of fear,
In every voice, in every ban,
The mind-forged manacles I hear:

How the chimney-sweeper’s cry
Every blackening church appals,
And the hapless soldier’s sigh
Runs in blood down palace-walls.

But most, through midnight streets I hear
How the youthful harlot’s curse
Blasts the new-born infant’s tear,
And blights with plagues the marriage-hearse.
")

poem_e_38 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE HUMAN ABSTRACT", content: "
Pity would be no more
If we did not make somebody poor,
And Mercy no more could be
If all were as happy as we.

And mutual fear brings Peace,
Till the selfish loves increase
Then Cruelty knits a snare,
And spreads his baits with care.

He sits down with his holy fears,
And waters the ground with tears;
Then Humility takes its root
Underneath his foot.

Soon spreads the dismal shade
Of Mystery over his head,
And the caterpillar and fly
Feed on the Mystery.

And it bears the fruit of Deceit,
Ruddy and sweet to eat,
And the raven his nest has made
In its thickest shade.

The gods of the earth and sea
Sought through nature to find this tree,
But their search was all in vain:
There grows one in the human Brain.
")

poem_e_39 = Poem.create(author_id: blake.id, book_id: experience.id, title: "INFANT SORROW", content: "
My mother groaned, my father wept:
Into the dangerous world I leapt,
Helpless, naked, piping loud,
Like a fiend hid in a cloud.

Struggling in my father’s hands,
Striving against my swaddling-bands,
Bound and weary, I thought best
To sulk upon my mother’s breast.
")

poem_e_40 = Poem.create(author_id: blake.id, book_id: experience.id, title: "A POISON TREE", content: "
I was angry with my friend:
I told my wrath, my wrath did end.
I was angry with my foe:
I told it not, my wrath did grow.

And I watered it in fears
Night and morning with my tears,
And I sunned it with smiles
And with soft deceitful wiles.

And it grew both day and night,
Till it bore an apple bright,
And my foe beheld it shine,
and he knew that it was mine, —

And into my garden stole
When the night had veiled the pole;
In the morning, glad, I see
My foe outstretched beneath the tree.
")

poem_e_41 = Poem.create(author_id: blake.id, book_id: experience.id, title: "A LITTLE BOY LOST", content: "
‘‘Nought loves another as itself,
Nor venerates another so,
Nor is it possible to thought
A greater than itself to know.

‘‘And, father, how can I love you
Or any of my brothers more?
I love you like the little bird
That picks up crumbs around the door.’’

The Priest sat by and heard the child;
In trembling zeal he seized his hair,
He led him by his little coat,
And all admired the priestly care.

And standing on the altar high,
‘‘Lo, what a fiend is here! said he:
‘‘One who sets reason up for judge
Of our most holy mystery.’’

The weeping child could not be heard,
The weeping parents wept in vain:
They stripped him to his little shirt,
And bound him in an iron chain,

And burned him in a holy place
Where many had been burned before;
The weeping parents wept in vain.
Are such thing done on Albion’s shore?
")

poem_e_42 = Poem.create(author_id: blake.id, book_id: experience.id, title: "A LITTLE GIRL LOST", content: "
Children of the future age,
Reading this indignant page,
Know that in a former time
Love, sweet love, was thought a crime.

In the age of gold,
Free from winter’s cold,
Youth and maiden bright,
To the holy light,
Naked in the sunny beams delight.

Once a youthful pair,
Filled with softest care,
Met in garden bright
Where the holy light
Had just removed the curtains of the night.

Then, in rising day,
On the grass they play;
Parents were afar,
Strangers came not near,
And the maiden soon forgot her fear.

Tired with kisses sweet,
They agree to meet
When the silent sleep
Waves o’er heaven’s deep,
And the weary tired wanderers weep.

To her father white
Came the maiden bright;
But his loving look,
Like the holy book
All her tender limbs with terror shook.

‘‘Ona, pale and weak,
To thy father speak!
Oh the trembling fear!
Oh the dismal care
That shakes the blossoms of my hoary hair!’’
")

poem_e_43 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE SCHOOLBOY", content: "
I love to rise on a summer morn,
When birds are singing on every tree;
The distant huntsman winds his horn,
And the skylark sings with me:
Oh what sweet company!

But to go to school in a summer morn, —
Oh it drives all joy away!
Under a cruel eye outworn,
The little ones spend the day
In sighing and dismay.

Ah then at times I drooping sit,
And spend many an anxious hour;
Nor in my book can I take delight,
Nor sit in learning’s bower,
Worn through with the dreary shower.

How can the bird that is born for joy
Sit in a cage and sing?
How can a child, when fears annoy,
But droop his tender wing,
And forget his youthful spring?

Oh father and mother, if buds are nipped,
And blossoms blown away;
And if the tender plants are stripped
Of their joy in the springing day,
By sorrow and care’s dismay, —

How shall the summer arise in joy,
Or the summer fruits appear?
Or how shall we gather what griefs destroy,
Or bless the mellowing year,
When the blasts of winter appear?
")

poem_e_44 = Poem.create(author_id: blake.id, book_id: experience.id, title: "TO TERZAH", content: "
Whate’er is born of mortal birth
Must be consumed with the earth,
To rise from generation free:
Then what have I to do with thee?
The sexes sprang from shame and pride,
Blown in the morn, in evening died;
But mercy changed death into sleep;
The sexes rose to work and weep.

Thou, mother of my mortal part,
With cruelty didst mould my heart,
And with false self-deceiving tears
Didst bind my nostrils, eyes, and ears,

Didst close my tongue in senseless clay,
And me to mortal life betray.
The death of Jesus set me free:
Then what have I to do with thee?
")


poem_e_45 = Poem.create(author_id: blake.id, book_id: experience.id, title: "THE VOICE OF THE ANCIENT BARD", content: "
Youth of delight! come hither
And see the opening morn,
Image of Truth new-born.
Doubt is fled, and clouds of reason,
Dark disputes and artful teazing.
Folly is an endless maze;
Tangled roots perplex her ways;
How many have fallen there!
They stumble all night over bones of the dead;
And feel — they know not what but care;
And wish to lead others, when they should be led.
")

poem_e_46 = Poem.create(author_id: blake.id, book_id: experience.id, title: "A DIVINE IMEAGE", content: "
Cruelty has a Human Heart
And Jealousy a Human Face
Terror the Human Form Divine
And Secrecy, the Human Dress

The Human Dress, is forged Iron
The Human Form, a fiery Forge.
The Human Face, a Furnace seal'd
The Human Heart, its hungry Gorge.
")

p "songs of experience done :)"

poem_r_47 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "NEVER SEEK TO TELL THY LOVE", content: "
Never seek to tell thy love,
Love that never told can be;
For the gentle wind does move
Silently, invisibly.

I told my love, I told my love,
I told her all my heart;
Trembling, cold, in ghastly fears,
Ah! she doth depart.

Soon as she was gone from me,
A traveller came by,
Silently, invisibly:
He took her with a sigh.
")

poem_r_48 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "I LAID ME DOWN UPON A BANK", content: "
I laid me down upon a bank,
Where Love lay sleeping;
I heard among the rushes dank
Weeping, weeping.

Then I went to the heath and the wild,
To the thistles and thorns of the waste;
And they told me how they were beguil'd,
Driven out, and compell'd to be chaste.
")

poem_r_49 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "I SAW A CHAPPEL ALL OF GOLD", content: "
I saw a Chapel all of gold
That none did dare to enter in,
And many weeping stood without,
Weeping, mourning, worshipping.

I saw a Serpent rise between
The white pillars of the door,
And he forc'd and forc'd and forc'd;
Down the golden hinges tore,

And along the pavement sweet,
Set with pearls and rubies bright,
All his shining length he drew,
Till upon the altar white

Vomiting his poison out
On the Bread and on the Wine.
So I turn'd into a sty,
And laid me down among the swine.
")

poem_r_50 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "I ASKED A THIEF", content: "
I askèd a thief to steal me a peach:
He turnèd up his eyes.
I ask'd a lithe lady to lie her down:
Holy and meek, she cries.

As soon as I went
An Angel came:
He wink'd at the thief,
And smil'd at the dame;

And without one word said
Had a peach from the tree,
And still as a maid
Enjoy'd the lady.
")

poem_r_51 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "I HEARD AN ANGEL SINGING", content: "
I heard an Angel singing
When the day was springing:
`Mercy, Pity, Peace
Is the world's release.'

Thus he sang all day
Over the new−mown hay,
Till the sun went down,
And haycocks lookèd brown.

I heard a Devil curse
Over the heath and the furze:
`Mercy could be no more
If there was nobody poor,

`And Pity no more could be,
If all were as happy as we.'
At his curse the sun went down,
And the heavens gave a frown.

Down pour'd the heavy rain
Over the new reap'd grain;
And Misery's increase
Is Mercy, Pity, Peace.
")

poem_r_52 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "A CRADLE SONG", content: "
Sleep! sleep! beauty bright,
Dreaming o'er the joys of night;
Sleep! sleep! in thy sleep
Little sorrows sit and weep.

Sweet Babe, in thy face
Soft desires I can trace,
Secret joys and secret smiles,
Little pretty infant wiles.

As thy softest limbs I feel,
Smiles as of the morning steal
O'er thy cheek, and o'er thy breast
Where thy little heart does rest.

O! the cunning wiles that creep
In thy little heart asleep.
When thy little heart does wake
Then the dreadful lightnings break,

From thy cheek and from thy eye,
O'er the youthful harvests nigh.
Infant wiles and infant smiles
Heaven and Earth of peace beguiles.
")

poem_r_53 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "SILENT, SILENT NIGHT", content: "
Silent, silent Night,
Quench the holy light
Of thy torches bright;

For possess'd of Day,
Thousand spirits stray
That sweet joys betray.

Why should joys be sweet
Usèd with deceit,
Nor with sorrows meet?

But an honest joy
Does itself destroy
For a harlot coy.
")

poem_r_54 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "I FEAR'D THE FURY OF MY WIND", content: "
I fear'd the fury of my wind
Would blight all blossoms fair and true;
And my sun it shin'd and shin'd,
And my wind it never blew.

But a blossom fair or true
Was not found on any tree;
For all blossoms grew and grew
Fruitless, false, tho' fair to see.
")

poem_r_55 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "INFANT SORROW", content: "
i

My mother groan'd, my father wept;
Into the dangerous world I leapt,
Helpless, naked, piping loud,
Like a fiend hid in a cloud.

ii

Struggling in my father's hands,
Striving against my swaddling−bands,
Bound and weary, I thought best
To sulk upon my mother's breast.

iii

When I saw that rage was vain,
And to sulk would nothing gain,
Turning many a trick and wile
I began to soothe and smile.

iv

And I sooth'd day after day,
Till upon the ground I stray;
And I smil'd night after night,
Seeking only for delight.

v

And I saw before me shine
Clusters of the wand'ring vine;
And, beyond, a Myrtle−tree
Stretch'd its blossoms out to me.

vi

But a Priest with holy look,
In his hands a holy book,
Pronouncèd curses on his head
Who the fruits or blossoms shed.

vii

I beheld the Priest by night;
He embrac'd my Myrtle bright:
I beheld the Priest by day,
Where beneath my vines he lay.

viii

Like a serpent in the day
Underneath my vines he lay:
Like a serpent in the night
He embrac'd my Myrtle bright.

ix

So I smote him, and his gore
Stain'd the roots my Myrtle bore;
But the time of youth is fled,
And grey hairs are on my head
")

poem_r_56 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "WHY SHOULD I CARE FOR THE MEN OF THAMES", content: "
Why should I care for the men of Thames,
Or the cheating waves of charter'd streams;
Or shrink at the little blasts of fear
That the hireling blows into my ear?

Tho' born on the cheating banks of Thames,
Tho' his waters bathèd my infant limbs,
The Ohio shall wash his stains from me:
I was born a slave, but I go to be free!
")

poem_r_57 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "THOU HAST A LAP FULL OF SEED", content: "
Thou hast a lap full of seed,
And this is a fine country.
Why dost thou not cast thy seed,
And live in it merrily.

Shall I cast it on the sand
And turn it into fruitful land?
For on no other ground
Can I sow my seed,
Without tearing up
Some stinking weed.
")

poem_r_58 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "IN A MYRTLE SHADE", content: "
Why should I be bound to thee,
O my lovely Myrtle−tree?
Love, free Love, cannot be bound
To any tree that grows on ground.

O! how sick and weary I
Underneath my Myrtle lie;
Like to dung upon the ground,
Underneath my Myrtle bound.

Oft my Myrtle sigh'd in vain
To behold my heavy chain:
Oft my Father saw us sigh,
And laugh'd at our simplicity.

So I smote him, and his gore
Stain'd the roots my Myrtle bore.
But the time of youth is fled,
And grey hairs are on my head.
")

poem_r_59 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "TO MY MYRTLE", content: "
To a lovely Myrtle bound,
Blossoms show'ring all around,
O how sick and weary I
Underneath my Myrtle lie!
Why should I be bound to thee,
O my lovely Myrtle−tree?
")

poem_r_60 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "TO NOBODADDY", content: "
Why art thou silent and invisible,
Father of Jealousy?
Why dost thou hide thyself in clouds
From every searching eye?

Why darkness and obscurity
In all thy words and laws,
That none dare eat the fruit but from
The wily Serpent's jaws?
Or is it because secrecy gains females' loud applause?
")

poem_r_61 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "ARE NOT THE JOYS OF THE MORNING SWEETER", content: "
Are not the joys of morning sweeter
Than the joys of night?
And are the vigorous joys of youth
Ashamèd of the light?

Let age and sickness silent rob
The vineyards in the night;
But those who burn with vigorous youth
Pluck fruits before the light.
")

poem_r_62 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "THE WILD FLOWER'S SONG", content: "
As I wander'd the forest,
The green leaves among,
I heard a Wild Flower
Singing a song.

`I slept in the earth
In the silent night,
I murmur'd my fears
And I felt delight.

`In the morning I went,
As rosy as morn,
To seek for new joy;
But I met with scorn.'
")

poem_r_63 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "DAY", content: "
The sun arises in the East,
Cloth'd in robes of blood and gold;
Swords and spears and wrath increas'd
All around his bosom roll'd,
Crown'd with warlike fires and raging desires.
")

poem_r_64 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "THE FAIRY", content: "
`Come hither, my Sparrows,
My little arrows.
If a tear or a smile
Will a man beguile,
If an amorous delay
Clouds a sunshiny day,
If the step of a foot
Smites the heart to its root,
'Tis the marriage−ring
Makes each fairy a king.'

So a Fairy sung.
From the leaves I sprung;
He leap'd from the spray
To flee away;
But in my hat caught,
He soon shall be taught.
Let him laugh, let him cry,
He's my Butterfly;
For I've pull'd out the sting
Of the marriage−ring.
")

poem_r_65 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "MOTTO TO THE SONGS OF INNOCENCE AND OF EXPERIENCE", content: "
The Good are attracted by men's perceptions,
And think not for themselves;
Till Experience teaches them to catch
And to cage the fairies and elves.

And then the Knave begins to snarl,
And the Hypocrite to howl;
And all his good friends show their private ends,
And the eagle is known from the owl.
")

poem_r_66 = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "LAFAYETTE", content: "
i

`Let the brothels of Paris be openèd
With many an alluring dance,
To awake the physicians thro' the city!'
Said the beautiful Queen of France.

ii

The King awoke on his couch of gold,
As soon as he heard these tidings told:
`Arise and come, both fife and drum,
And the famine shall eat both crust and crumb.'

iii

The Queen of France just touch'd this globe,
And the pestilence darted from her robe;
But our good Queen quite grows to the ground,
And a great many suckers grow all around.

iv

Fayette beside King Lewis stood;
He saw him sign his hand;
And soon he saw the famine rage
About the fruitful land.
Fayette beheld the Queen to smile
And wink her lovely eye;
And soon he saw the pestilence
From street to street to fly.

vi

Fayette beheld the King and Queen
In curses and iron bound;
But mute Fayette wept tear for tear,
And guarded them around.

vii

Fayette, Fayette, thou'rt bought and sold
And sold is thy happy morrow;
Thou gavest the tears of pity away
In exchange for the tears of sorrow.

viii

Who will exchange his own fireside
For the stone of another's door?
Who will exchange his wheaten loaf
For the links of a dungeon−floor?

ix

O who would smile on the wintry seas
And pity the stormy roar?
Or who will exchange his new−born child
For the dog at the wintry door?
")

p "poems from the rosseti part 1 done :)"
