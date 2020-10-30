# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'nokogiri'

Author.destroy_all

p 'start'

1.times do
  sh = Author.create!(name: "William Shakespeare")
  ss = Book.create!(author_id: sh.id, title: "Sonnets", year: "1564 - 1616")

  nums = (1..154).to_a
  nums.each do |num|
    url = "http://www.shakespeares-sonnets.com/sonnet/#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h1.title').each do |element|
      n = element.text.strip
      Poem.create!(author_id: sh.id, book_id: ss.id, title: n)
    end

    s = Poem.last
    p "#{s.title}"

    html_doc.search('p#sonnettext').each do |element|
      n = element.text.strip
      s.content = n
      s.save!
    end
  end
  p 'Shakespeare done'
end

blake = Author.create(name: "William Blake")

innocence = Book.create(author_id: blake.id, title: "Songs of Innocence and Experience / Songs of Innocence", year: "1789-94")
experience = Book.create(author_id: blake.id, title: "Songs of Innocence and Experience / Songs of Experience", year: "1789-94")
rosseti = Book.create(author_id: blake.id, title: "Poems from the Rossetti Manuscript / Part I.", year: "Written circa 1793")
rossetti_2 = Book.create(author_id: blake.id, title: "Poems from the Rossetti Manuscript / Part II.", year: "Written circa 1800-1810")
pickering = Book.create(author_id: blake.id, title: "The Pickering Manuscript", year: "c.1801-3")

yeats = Author.create(name: "William Butler Yeats")
poems = Book.create(author_id: yeats.id, title: "The Poems", year: "1865-1939")

bukowski = Author.create(name: "Charles Bukowski")
poems_b = Book.create(author_id: bukowski.id, title: "The Poems", year: "1920-1994")

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

poem_r_a = Poem.create(author_id: blake.id, book_id: rosseti.id, title: "APPENDIX TO THE EARLIER POEMS IN THE ROSSETTI MANUSCRIPT", content: "
A Fairy leapt upon my knee
Singing and dancing merrily;
I said, `Thou thing of patches, rings,
Pins, necklaces, and such−like things,
Disgracer of the female form,
Thou paltry, gilded, poisonous worm!'
Weeping, he fell upon my thigh,
And thus in tears did soft reply:
`Knowest thou not, O Fairies' lord!
How much by us contemn'd, abhorr'd,
Whatever hides the female form
That cannot bear the mortal storm?
Therefore in pity still we give
Our lives to make the female live;
And what would turn into disease
We turn to what will joy and please.'
")

p "Poems from the Rossetti part 1 done :)"

poem_r_67 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "MY SPECTRE AROUND ME NIGHT AND DAY", content: "
i

My spectre around me night and day
Like a wild beast guards my way;
My Emanation far within
Weeps incessantly for my sin.

ii

`A fathomless and boundless deep,
There we wander, there we weep;
On the hungry craving wind
My Spectre follows thee behind.

iii

`He scents thy footsteps in the snow,
Wheresoever thou dost go,
Thro' the wintry hail and rain.
When wilt thou return again?

iv

`Dost thou not in pride and scorn
Fill with tempests all my morn,
And with jealousies and fears
Fill my pleasant nights with tears?

v

`Seven of my sweet loves thy knife
Has bereavèd of their life.
Their marble tombs I built with tears,
And with cold and shuddering fears.

vi

`Seven more loves weep night and day
Round the tombs where my loves lay,
And seven more loves attend each night
Around my couch with torches bright.

vii

`And seven more loves in my bed
Crown with wine my mournful head,
Pitying and forgiving all
Thy transgressions great and small.

viii

`When wilt thou return and view
My loves, and them to life renew?
When wilt thou return and live?
When wilt thou pity as I forgive?'

a

`O'er my sins thou sit and moan:
Hast thou no sins of thy own?
O'er my sins thou sit and weep,
And lull thy own sins fast asleep.

b

`What transgressions I commit
Are for thy transgressions fit.
They thy harlots, thou their slave;
And my bed becomes their grave.

ix

`Never, never, I return:
Still for victory I burn.
Living, thee alone I'll have;
And when dead I'll be thy grave.

x

`Thro' the Heaven and Earth and Hell
Thou shalt never, never quell:
I will fly and thou pursue:
Night and morn the flight renew.'

c

`Poor, pale, pitiable form
That I follow in a storm;
Iron tears and groans of lead
Bind around my aching head.

xi

`Till I turn from Female love
And root up the Infernal Grove,
I shall never worthy be
To step into Eternity.

xii

`And, to end thy cruel mocks,
Annihilate thee on the rocks,
And another form create
To be subservient to my fate.

xiii

`Let us agree to give up love,
And root up the Infernal Grove;
Then shall we return and see
The worlds of happy Eternity.

xiv

`And throughout all Eternity
I forgive you, you forgive me.
As our dear Redeemer said:
``This the Wine, and this the Bread.``'
")

poem_r_68 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "WHEN KLOPSTOCK ENGLAND DEFIED", content: "
When Klopstock England defied,
Uprose William Blake in his pride;
For old Nobodaddy aloft
. . . and belch'd and cough'd;
Then swore a great oath that made Heaven quake,
And call'd aloud to English Blake.
Blake was giving his body ease,
At Lambeth beneath the poplar trees.
From his seat then started he
And turn'd him round three times three.
When Klopstock England defied
The moon at that sight blush'd scarlet red,
The stars threw down their cups and fled,
And all the devils that were in hell,
Answerèd with a ninefold yell.
Klopstock felt the intripled turn,
And all his bowels began to churn,
And his bowels turn'd round three times three,
And lock'd in his soul with a ninefold key; . . .
Then again old Nobodaddy swore
He ne'er had seen such a thing before,
Since Noah was shut in the ark,
Since Eve first chose her hellfire spark,
Since 'twas the fashion to go naked,
Since the old Anything was created . . .
")

poem_r_69 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "MOCK ON, MOCK ON, VOLTAIRE, ROUSSEAU", content: "
Mock on, mock on, Voltaire, Rousseau;
Mock on, mock on; 'tis all in vain!
You throw the sand against the wind,
And the wind blows it back again.
And every sand becomes a gem
Reflected in the beams divine;
Blown back they blind the mocking eye,
But still in Israel's paths they shine.
The Atoms of Democritus
And Newton's Particles of Light
Are sands upon the Red Sea shore,
Where Israel's tents do shine so bright.
")

poem_r_70 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "I SAW A MONK OF CHARLEMAINE", content: "
i

I saw a Monk of Charlemaine
Arise before my sight:
I talk'd to the Grey Monk where he stood
In beams of infernal light.

ii

Gibbon arose with a lash of steel,
And Voltaire with a wracking wheel:
The Schools, in clouds of learning roll'd,
Arose with War in iron and gold.
Mock on, mock on, Voltaire, Rousseau

iii

`Thou lazy Monk,' they said afar,
`In vain condemning glorious War,
And in thy cell thou shall ever dwell.
Rise, War, and bind him in his cell!'

iv

The blood red ran from the Grey Monk's side,
His hands and feet were wounded wide,
His body bent, his arms and knees
Like to the roots of ancient trees.

v

`I see, I see,' the Mother said,
`My children will die for lack of bread.
What more has the merciless tyrant said?'
The Monk sat down on her stony bed.

vi

His eye was dry, no tear could flow;
A hollow groan first spoke his woe.
He trembled and shudder'd upon the bed;
At length with a feeble cry he said:

vii

`When God commanded this hand to write
In the studious hours of deep midnight,
He told me that all I wrote should prove
The bane of all that on Earth I love.

viii

`My brother starv'd between two walls;
Thy children's cry my soul appals:
I mock'd at the wrack and griding chain;
My bent body mocks at their torturing pain.

ix

Mock on, mock on, Voltaire, Rousseau
`Thy father drew his sword in the North;
With his thousands strong he is marchèd forth;
Thy brother has armèd himself in steel
To revenge the wrongs thy children feel.

x

`But vain the sword and vain the bow,
They never can work War's overthrow;
The hermit's prayer and the widow's tear
Alone can free the world from fear.

xi

`The hand of Vengeance sought the bed
To which the purple tyrant fled;
The iron hand crush'd the tyrant's head,
And became a tyrant in his stead.

xii

`Until the tyrant himself relent,
The tyrant who first the black bow bent,
Slaughter shall heap the bloody plain:
Resistance and War is the tyrant's gain.

xiii

`But the tear of love and forgiveness sweet,
And submission to death beneath his feet
The tear shall melt the sword of steel,
And every wound it has made shall heal.

xiv

`For the tear is an intellectual thing,
And a sigh is the sword of an Angel King,
And the bitter groan of the martyr's woe
Is an arrow from the Almighty's bow.'
")

poem_r_71 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "MORNING", content: "
To find the Western path,
Right thro' the Gates of Wrath
Morning
I urge my way;
Sweet Mercy leads me on
With soft repentant moan:
I see the break of day.

The war of swords and spears,
Melted by dewy tears,
Exhales on high;
The Sun is freed from fears,
And with soft grateful tears
Ascends the sky.
")

poem_r_72 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "THE BIRDS", content: "
/He./ Where thou dwellest, in what grove,
Tell me Fair One, tell me Love;
Where thou thy charming nest dost build,
O thou pride of every field!

/She./ Yonder stands a lonely tree,
There I live and mourn for thee;
Morning drinks my silent tear,
And evening winds my sorrow bear.

/He./ O thou summer's harmony,
I have liv'd and mourn'd for thee;
Each day I mourn along the wood,
And night hath heard my sorrows loud.

/She./ Dost thou truly long for me?
And am I thus sweet to thee?
Sorrow now is at an end,
O my Lover and my Friend!

/He./ Come, on wings of joy we'll fly
To where my bower hangs on high;
Come, and make thy calm retreat
Among green leaves and blossoms sweet.
")

poem_r_73 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "YOU DON'T BELIEVE", content: "
You don't believe I won't attempt to make ye:
You are asleep I won't attempt to wake ye.
Sleep on! sleep on! while in your pleasant dreams
Of Reason you may drink of Life's clear streams.
Reason and Newton, they are quite two things;
For so the swallow and the sparrow sings.

Reason says `Miracle': Newton says `Doubt.'
Aye! that's the way to make all Nature out.
`Doubt, doubt, and don't believe without experiment':
That is the very thing that Jesus meant,
When He said `Only believe! believe and try!
Try, try, and never mind the reason why!'
")

poem_r_74 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "IF IT IS TRUE WHAT THE PROPHETS WRITE", content: "
If it is true, what the Prophets write,
That the heathen gods are all stocks and stones,
Shall we, for the sake of being polite,
Feed them with the juice of our marrow−bones?
And if Bezaleel and Aholiab drew
What the finger of God pointed to their view,
Shall we suffer the Roman and Grecian rods
To compel us to worship them as gods?
They stole them from the temple of the Lord
And worshipp'd them that they might make inspirèd art abhorr'd;
The wood and stone were call'd the holy things,
And their sublime intent given to their kings.
All the atonements of Jehovah spurn'd,
And criminals to sacrifices turn'd.
")

poem_r_75 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "I WILL TELL YOU WHAT JOSEPH OF ARIMATHEA", content: "
I will tell you what Joseph of Arimathea
Said to my Fairy: was not it very queer?
`Pliny and Trajan! What! are you here?
Come before Joseph of Arimathea.
Listen patient, and when Joseph has done
`Twill make a fool laugh, and a fairy fun.'
")

poem_r_76 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "WHY WAS CUPID A BOY", content: "
Why was Cupid a boy,
And why a boy was he?
He should have been a girl,
For aught that I can see.

For he shoots with his bow,
And the girl shoots with her eye,
And they both are merry and glad,
And laugh when we do cry.

And to make Cupid a boy
Was the Cupid girl's mocking plan;
For a boy can't interpret the thing
Till he is become a man.

And then he's so pierc'd with cares,
And wounded with arrowy smarts,
That the whole business of his life
Is to pick out the heads of the darts.

'Twas the Greeks' love of war
Turn'd Love into a boy,
And woman into a statue of stone
And away fled every joy.
")

poem_r_77 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "NOW ART HAS LOST ITS MENTAL CHARMS", content: "
`Now Art has lost its mental charms
France shall subdue the world in arms.'
So spoke an Angel at my birth;
Then said `Descend thou upon earth,
Renew the Arts on Britain's shore,
And France shall fall down and adore.
With works of art their armies meet
And War shall sink beneath thy feet.
But if thy nation Arts refuse,
And if they scorn the immortal Muse,
France shall the arts of peace restore
And save thee from the ungrateful shore.'

Spirit who lov'st Britannia's Isle
Round which the fiends of commerce smile
")

poem_r_78 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "I ROSE UP AT THE DAWN OF DAY", content: "
I rose up at the dawn of day
`Get thee away! get thee away!
Pray'st thou for riches? Away! away!
This is the Throne of Mammon grey.'

Said I: This, sure, is very odd;
I took it to be the Throne of God.
For everything besides I have:
It is only for riches that I can crave.

I have mental joy, and mental health,
And mental friends, and mental wealth;
I've a wife I love, and that loves me;
I've all but riches bodily.

I am in God's presence night and day,
And He never turns His face away;
The accuser of sins by my side doth stand,
And he holds my money−bag in his hand.

For my worldly things God makes him pay,
And he'd pay for more if to him I would pray;
And so you may do the worst you can do;
Be assur'd, Mr. Devil, I won't pray to you.

Then if for riches I must not pray,
God knows, I little of prayers need say;
So, as a church is known by its steeple,
If I pray it must be for other people.

He says, if I do not worship him for a God,
I shall eat coarser food, and go worse shod;
So, as I don't value such things as these,
You must do, Mr. Devil, just as God please.
")

poem_r_80 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "THE CAVERNS OF THE GRAVE I'VE SEEN", content: "
The Caverns of the Grave I've seen,
And these I show'd to England's Queen.
But now the Caves of Hell I view,
Who shall I dare to show them to?
What mighty soul in Beauty's form
Shall dauntless view the infernal storm?
Egremont's Countess can control
The flames of Hell that round me roll;
If she refuse, I still go on
Till the Heavens and Earth are gone,
Still admir'd by noble minds,
Follow'd by Envy on the winds,
Re−engrav'd time after time,
Ever in their youthful prime,
My designs unchang'd remain.
Time may rage, but rage in vain.
For above Time's troubled fountains,
On the great Atlantic Mountains,
In my Golden House on high,
There they shine eternally.
")

poem_r_82 = Poem.create(author_id: blake.id, book_id: rossetti_2.id, title: "Addendum to the Later Poems in the Rossetti Manuscript: TO tHE QUEEN", content: "
The Door of Death is made of gold,
That mortal eyes cannot behold;
But when the mortal eyes are clos’d,
And cold and pale the limbs repos’d,
The soul awakes; and, wond’ring, sees
In her mild hand the golden Keys:
The Grave is Heaven’s Golden Gate,
And rich and poor around it wait;
O Shepherdess of England’s fold,
Behold this Gate of Pearl and Gold!

To dedicate to England’s Queen
The visions that my soul has seen,
And, by her kind permission, bring
What I have borne on solemn wing,
From the vast regions of the Grave,
Before her throne my wings I wave;
Bowing before my Sov’reign’s feet,
‘The Grave produc’d these blossoms sweet
In mild repose from earthly strife;
The blossoms of Eternal Life!’
")

p "Rossetti part 2 done :)"

poem_p_83 = Poem.create(author_id: blake.id, book_id: pickering.id, title: "THE SMILE", content: "
There is a Smile of Love
And there is a Smile of Deceit
And there is a Smile of Smiles
In which these two Smiles meet
And there is a Frown of Hate
And there is a Frown of disdain
And there is a Frown of Frowns
Which you strive to forget in vain

For it sticks in the Hearts deep Core
And it sticks in the deep Back bone
And no Smile that ever was smild
But only one Smile alone

That betwixt the Cradle & Grave
It only once Smild can be
But when it once is Smild
Theres an end to all Misery
")

poem_p_84 = Poem.create(author_id: blake.id, book_id: pickering.id, title: "THE GOLDEN NET", content: "
Three Virgins at the break of day
Whither young Man whither away
Alas for woe! alas for woe!
They cry & tears for ever flow
The one was Clothd in flames of fire
The other Clothd in iron wire
The other Clothd in tears & sighs
Dazling bright before my Eyes
They bore a Net of Golden twine
To hang upon the Branches fine
Pitying I wept to see the woe
That Love & Beauty undergo
To be consumd in burning Fires
And in ungratified Desires
And in tears clothd Night & day
Melted all my Soul away
When they saw my Tears a Smile
That did Heaven itself beguile
Bore the Golden Net aloft
As on downy Pinions soft
Over the Morning of my Day
Underneath the Net I stray
Now intreating Burning Fire
Now intreating Iron Wire
Now intreating Tears & Sighs
O when will the morning rise
")

poem_p_85 = Poem.create(author_id: blake.id, book_id: pickering.id, title: "THE MENTAL TRAVELLER", content: "
I traveld thro' a Land of Men
A Land of Men & Women too
And heard & saw such dreadful things
As cold Earth wanderers never knew

For there the Babe is born in joy
That was begotten in dire woe
Just as we Reap in joy the fruit
Which we in bitter tears did sow

And if the Babe is born a Boy
He's given to a Woman Old
Who nails him down upon a rock,
Catches his Shrieks in Cups of gold.

She binds iron thorns around his head,
She pierces both his hands & feet,
She cuts his heart out at his side
To make it feel both cold & heat.

Her fingers number every Nerve
Just as a Miser counts his gold;
She lives upon his shrieks & cries
And She grows young as he grows old

Till he becomes a bleeding youth
And she becomes a Virgin bright;
Then he rends up his Manacles
And binds her down for his delight.

He plants himself in all her Nerves
Just as a Husbandman his mould
And She becomes his dwelling place
And Garden fruitful Seventy fold.

An aged Shadow soon he fades
Wandring round an Earthly Cot
Full filled all with gems & gold
Which he by industry had got

And these are the gems of the Human Soul,
The rubies & pearls of a lovesick eye
The countless gold of the akeing heart,
The martyrs groan & the lovers sigh.

They are his meat, they are his drink;
He feeds the Beggar & the Poor
And the way faring Traveller,
For ever open is his door.

His grief is their eternal joy;
They make the roofs & walls to ring
Till from the fire on the hearth
A little Female Babe does spring

And she is all of solid fire
And gems & gold that none his hand
Dares stretch to touch her Baby form
Or wrap her in his swaddling-band

But She comes to the Man she loves
If young or old or rich or poor;
They soon drive out the aged Host
A Begger at anothers door.

He wanders weeping far away
Untill some other take him in
Oft blind & age-bent sore distrest
Untill he can a Maiden win

And to allay his freezing Age
The Poor Man takes her in his arms;
The Cottage fades before his Sight,
The Garden & its lovely Charms.

The Guests are scatterd thro' the land
For the Eye altering alters all;
The Senses roll themselves in fear
And the flat Earth becomes a Ball;

The Stars, Sun, Moon all shrink away
A desart vast without a bound
And nothing left to eat or drink
And a dark desart all around.

The honey of her Infant lips,
The bread & wine of her sweet smile,
The wild game of her roving Eye
Does him to Infancy beguile

For as he eats & drinks he grows
Younger & younger every day
And on the desart wild they both
Wander in terror & dismay.

Like the wild Stag she flees away,
Her fear plants many a thicket wild
While he pursues her night & day
By various arts of Love beguild,

By various arts of Love & Hate
Till the wide desart planted oer
With Labyrinths of wayward Love
Where roams the Lion, Wolf & Boar

Till he becomes a wayward Babe
And she a weeping Woman Old.
Then many a Lover wanders here;
The Sun & Stars are nearer rolld.

The trees bring forth sweet Extacy
To all who in the desart roam
Till many a City there is Built
And many a pleasant Shepherds home

But when they find the frowning Babe
Terror strikes thro the region wide,
They cry ‘the Babe the Babe is Born’
And flee away on Every side

For who dare touch the frowning form
His arm is witherd to its root;
Lions Boars Wolves all howling flee
And every Tree does shed its fruit

And none can touch that frowning form
Except it be a Woman Old;
She nails him down upon the Rock
And all is done as I have told.
")

poem_p_86 = Poem.create(author_id: blake.id, book_id: pickering.id, title: "THE LAND OF DREAMS", content: "
Awake, awake my little Boy!
Thou wast thy Mother's only joy:
Why dost thou weep in thy gentle sleep?
Awake! thy Father does thee keep.

'O, what land is the Land of Dreams?
What are its mountains, and what are its streams?
O Father, I saw my Mother there,
Among the lillies by waters fair.

Among the lambs clothed in white
She walked with her Thomas in sweet delight.
I wept for joy, like a dove I mourn
O when shall I return again?'

Dear child, I also by pleasant streams
Have wandered all night in the Land of Dreams;
But though calm and warm the waters wide,
I could not get to the other side.

'Father, O Father, what do we here,
In this land of unbelief and fear?
The Land of Dreams is better far
Above the light of the Morning Star.
")

poem_p_87 = Poem.create(author_id: blake.id, book_id: pickering.id, title: "MARY", content: "
Sweet Mary the first time she ever was there
Came into the Ball room among the Fair
The young Men & Maidens around her throng
And these are the words upon every tongue

An Angel is here from the heavenly Climes
Or again does return the Golden times
Her eyes outshine every brilliant ray
She opens her lips tis the Month of May

Mary moves in soft beauty & conscious delight
To augment with sweet smiles all the joys of the Night
Nor once blushes to own to the rest of the Fair
That sweet Love & Beauty are worthy our care

In the Morning the Villagers rose with delight
And repeated with pleasure the joys of the night
And Mary arose among Friends to be free
But no Friend from henceforward thou Mary shalt see

Some said she was proud some calld her a whore
And some when she passed by shut to the door
A damp cold came oer her her blushes all fled
Her lillies & roses are blighted & shed

O why was I born with a different Face
Why was I not born like this Envious Racet
Why did Heaven adorn me with bountiful hand
And then set me down in an envious Land

To be weak as a Lamb & smooth as a Dove
And not to raise Envy is calld Christian Love
But if you raise Envy your Merits to blame
For planting such spite in the weak & the tame

I will humble my Beauty I will not dress fine
I will keep from the Ball & my Eyes shall not shine
And if any Girls Lover forsakes her for me
I'll refuse him my hand & from Envy be free

She went out in Morning attird plain & neat
Proud Marys gone Mad said the Child in the Street
She went out in Morning in plain neat attire
And came home in Evening bespatterd with mire

She trembled & wept sitting on the Bed side
She forgot it was Night & she trembled & cried
She forgot it was Night she forgot it was Morn
Her soft Memory imprinted with Faces of Scorn

With Faces of Scorn & with Eyes of disdain
Like foul Fiends inhabiting Marys mild Brain
She remembers no Face like the Human Divine
All Faces have Envy sweet Mary but thine

And thine is a Face of sweet Love in Despair
And thine is a Face of mild sorrow & care
And thine is a Face of wild terror & fear
That shall never be quiet till laid on its bier
")

poem_p_88 = Poem.create(author_id: blake.id, book_id: pickering.id, title: "THE CRYSTAL CABINET", content: "
The Maiden caught me in the Wild,
Where I was dancing merrily;
She put me into her Cabinet,
And Lockd me up with a golden key.

This cabinet is formd of gold
And pearl & crystal shining bright
And within it opens into a world
And a little lovely moony night.

Another England there I saw,
Another London with its Tower,
Another Thames & other Hills,
And another pleasant Surrey Bower.

Another Maiden like herself
Translucent lovely shining clear
Threefold each in the other closd;
O what a pleasant trembling fear!

O what a smile, a threefold smile
Filld me that like a flame I burnd;
I bent to Kiss the lovely Maid,
And found a Threefold Kiss returnd.

I strove to seize the inmost Form
With ardor fierce & hands of flame
But burst the Crystal Cabinet
And like a weeping Babe became;

A weeping Babe upon the wild
And Weeping Woman pale reclind
And in the outward air again
I filld with woes the passing wind.
")

poem_p_89 = Poem.create(author_id: blake.id, book_id: pickering.id, title: "THE GREY MONK", content: "
I die I die the Mother said
My Children die for lack of Bread
What more has the merciless Tyrant said
The Monk sat down on the Stony Bed

The blood red ran from the Grey Monks side
His hands & feet were wounded wide
His Body bent his arms & knees
Like to the roots of ancient trees

His eye was dry no tear could flow
A hollow groan first spoke his woe
He trembled & shudderd upon the Bed
At length with a feeble cry he said

When God commanded this hand to write
In the studious hours of deep midnight
He told me the writing I wrote should prove
The Bane of all that on Earth I lovd

My Brother starvd between two Walls
His Childrens Cry my Soul appalls
I mockd at the wrack & griding chain
My bent body mocks their torturing pain

Thy Father drew his sword in the North
With his thousands strong he marched forth
Thy Brother has armd himself in Steel
To avenge the wrongs thy Children feel

But vain the Sword & vain the Bow
They never can work Wars overthrow
The Hermits Prayer & the Widows tear
Alone can free the World from fear

For a Tear is an Intellectual Thing
And a Sigh is the Sword of an Angel King
And the bitter groan of the Martyrs woe
Is an Arrow from the Almighties Bow

The hand of Vengeance found the Bed
To which the Purple Tyrant fled
The iron hand crushd the Tyrants head
And became a Tyrant in his stead
")

poem_p_90 = Poem.create(author_id: blake.id, book_id: pickering.id, title: "AUGURIES OF INNOCENCE", content: "
To see a world in a grain of sand
And a heaven in a wild flower,
Hold infinity in the palm of your hand,
And eternity in an hour.
A robin redbreast in a cage
Puts all heaven in a rage.
A dove-house fill'd with doves and pigeons
Shudders hell thro' all its regions.
A dog starv'd at his master's gate
Predicts the ruin of the state.
A horse misused upon the road
Calls to heaven for human blood.
Each outcry of the hunted hare
A fibre from the brain does tear.
A skylark wounded in the wing,
A cherubim does cease to sing.
The game-cock clipt and arm'd for fight
Does the rising sun affright.
Every wolf's and lion's howl
Raises from hell a human soul.
The wild deer, wand'ring here and there,
Keeps the human soul from care.
The lamb misus'd breeds public strife,
And yet forgives the butcher's knife.
The bat that flits at close of eve
Has left the brain that won't believe.
The owl that calls upon the night
Speaks the unbeliever's fright.
He who shall hurt the little wren
Shall never be belov'd by men.
He who the ox to wrath has mov'd
Shall never be by woman lov'd.
The wanton boy that kills the fly
Shall feel the spider's enmity.
He who torments the chafer's sprite
Weaves a bower in endless night.
The caterpillar on the leaf
Repeats to thee thy mother's grief.
Kill not the moth nor butterfly,
For the last judgement draweth nigh.
He who shall train the horse to war
Shall never pass the polar bar.
The beggar's dog and widow's cat,
Feed them and thou wilt grow fat.
The gnat that sings his summer's song
Poison gets from slander's tongue.
The poison of the snake and newt
Is the sweat of envy's foot.
The poison of the honey bee
Is the artist's jealousy.
The prince's robes and beggar's rags
Are toadstools on the miser's bags.
A truth that's told with bad intent
Beats all the lies you can invent.
It is right it should be so;
Man was made for joy and woe;
And when this we rightly know,
Thro' the world we safely go.
Joy and woe are woven fine,
A clothing for the soul divine.
Under every grief and pine
Runs a joy with silken twine.
The babe is more than swaddling bands;
Throughout all these human lands;
Tools were made and born were hands,
Every farmer understands.
Every tear from every eye
Becomes a babe in eternity;
This is caught by females bright,
And return'd to its own delight.
The bleat, the bark, bellow, and roar,
Are waves that beat on heaven's shore.
The babe that weeps the rod beneath
Writes revenge in realms of death.
The beggar's rags, fluttering in air,
Does to rags the heavens tear.
The soldier, arm'd with sword and gun,
Palsied strikes the summer's sun.
The poor man's farthing is worth more
Than all the gold on Afric's shore.
One mite wrung from the lab'rer's hands
Shall buy and sell the miser's lands;
Or, if protected from on high,
Does that whole nation sell and buy.
He who mocks the infant's faith
Shall be mock'd in age and death.
He who shall teach the child to doubt
The rotting grave shall ne'er get out.
He who respects the infant's faith
Triumphs over hell and death.
The child's toys and the old man's reasons
Are the fruits of the two seasons.
The questioner, who sits so sly,
Shall never know how to reply.
He who replies to words of doubt
Doth put the light of knowledge out.
The strongest poison ever known
Came from Caesar's laurel crown.
Nought can deform the human race
Like to the armour's iron brace.
When gold and gems adorn the plow,
To peaceful arts shall envy bow.
A riddle, or the cricket's cry,
Is to doubt a fit reply.
The emmet's inch and eagle's mile
Make lame philosophy to smile.
He who doubts from what he sees
Will ne'er believe, do what you please.
If the sun and moon should doubt,
They'd immediately go out.
To be in a passion you good may do,
But no good if a passion is in you.
The whore and gambler, by the state
Licensed, build that nation's fate.
The harlot's cry from street to street
Shall weave old England's winding-sheet.
The winner's shout, the loser's curse,
Dance before dead England's hearse.
Every night and every morn
Some to misery are born,
Every morn and every night
Some are born to sweet delight.
Some are born to sweet delight,
Some are born to endless night.
We are led to believe a lie
When we see not thro' the eye,
Which was born in a night to perish in a night,
When the soul slept in beams of light.
God appears, and God is light,
To those poor souls who dwell in night;
But does a human form display
To those who dwell in realms of day.
")

poem_p_91 = Poem.create(author_id: blake.id, book_id: pickering.id, title: "LONG JOHN BROWN & LITTLE MARY BELL", content: "
Pretty Little Mary Bell had a Fairy in a Nut
Young Long John Brown had the Devil in his Gut
Young Long John Brown lovd Pretty Little Mary Bell
And the Fairy drew the Devil into the Nut-shell

Her Fairy skipd out & her Fairy skipd in
He laughd at the Devil saying Love is a Sin
The devil he raged & the Devil he was wroth
And the devil enterd into the Young Mans broth

He was soon in the Gut of the loving Young Swain
For John eat & drank to drive away Loves pain
But all he could do he grew thinner & thinner
Tho he eat & drank as much as ten Men for his dinner

Some said he had a Wolf in his stomach day & night
Some said he had the Devil & they guessd right
The fairy skipd about in his glory Joy & Pride
And he laughd at the Devil till poor John Brown died

Then the Fairy skipd out of the old Nut shell
And woe & alack for Pretty Mary Bell
For the Devil crept in when The Fairy skipd out
And there goes Miss Bell with her fusty old Nut
")

poem_p_92 = Poem.create(author_id: blake.id, book_id: pickering.id, title: "WILLIAM BOND", content: "
I wonder whether the Girls are mad
And I wonder whether they mean to kill
And I wonder if William Bond will die
For assuredly he is very ill

He went to Church in a May morning
Attended by Fairies one two & three
But the Angels Of Providence drove them away
And he returnd home in Misery

He went not out to the Field nor Fold
He went not out to the Village nor Town
But he came home in a black black cloud
And took to his Bed & there lay down

And an Angel of Providence at his Feet
And an Angel of Providence at his Head
And in the midst a Black Black Cloud
And in the midst the Sick Man on his Bed

And on his Right hand was Mary Green
And on his Left hand was his Sister Jane
And their tears fell thro the black black Cloud
To drive away the sick mans pain

O ⁠William if thou dost another Love
Dost another Love better than poor Mary
Go & take that other to be thy Wife
And Mary Green shall her Servant be

Yes Mary I do another Love
Another I Love far better than thee
And Another I will have for my Wife
Then what have I to do with thee

For thou art Melancholy Pale
And on thy Head is the cold Moons shine
But she is ruddy & bright as day
And the sun beams dazzle from her eyne

Mary trembled & Mary chilld
And Mary fell down on the right hand floor
That William Bond & his Sister Jane
Scarce could recover Mary more

When Mary woke & found her Laid
On the Right hand of her William dear
On the Right hand of his loved Bed
And saw her William Bond so near

The Fairies that fled from William Bond
Danced around her Shining Head They danced over the Pillow white
And the Angels of Providence left the Bed

I thought Love livd in the hot sun Shine
But O he lives in the Moony light
I thought to find Love in the heat of day
But sweet Love is the Comforter of Night

Seek Love in the Pity of others Woe
In the gentle relief of anothers care
In the darkness of night & the winters snow
In the naked & outcast Seek Love there
")

p "Pickering Manuscript done; Blake done, starting Yeats"

poem_p_93 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Young Man's Song", content: "
I whispered, 'I am too young,'
And then, 'I am old enough';
Wherefore I threw a penny
To find out if I might love.
'Go and love, go and love, young man,
If the lady be young and fair,'
Ah, penny, brown penny, brown penny,
I am looped in the loops of her hair.

Oh, love is the crooked thing,
There is nobody wise enough
To find out all that is in it,
For he would be thinking of love
Till the stars had run away,
And the shadows eaten the moon.
Ah, penny, brown penny, brown penny,
One cannot begin it too soon.
")

poem_p_94 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Sorrow of Love", content: "
The quarrel of the sparrows in the eaves,
The full round moon and the star-laden sky,
And the loud song of the ever-singing leaves,
Had hid away earth's old and weary cry.

And then you came with those red mournful lips,
And with you came the whole of the world's tears,
And all the sorrows of her labouring ships,
And all the burden of her myriad years.

And now the sparrows warring in the eaves,
The curd-pale moon, the white stars in the sky,
And the loud chaunting of the unquiet leaves
Are shaken with earth's old and weary cry.
")

poem_p_95 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "An Irish Airman Foresees His Death", content: "
I know that I shall meet my fate
Somewhere among the clouds above;
Those that I fight I do not hate
Those that I guard I do not love;
My country is Kiltartan Cross,
My countrymen Kiltartan’s poor,
No likely end could bring them loss
Or leave them happier than before.
Nor law, nor duty bade me fight,
Nor public man, nor cheering crowds,
A lonely impulse of delight
Drove to this tumult in the clouds;
I balanced all, brought all to mind,
The years to come seemed waste of breath,
A waste of breath the years behind
In balance with this life, this death.
")

poem_p_96 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "When You Are Old", content: "
When you are old and grey and full of sleep,
And nodding by the fire, take down this book,
And slowly read, and dream of the soft look
Your eyes had once, and of their shadows deep;

How many loved your moments of glad grace,
And loved your beauty with love false or true,
But one man loved the pilgrim soul in you,
And loved the sorrows of your changing face;

And bending down beside the glowing bars,
Murmur, a little sadly, how Love fled
And paced upon the mountains overhead
And hid his face amid a crowd of stars.
")

poem_p_97 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Lake Isle of Innisfree", content: "
I will arise and go now, and go to Innisfree,
And a small cabin build there, of clay and wattles made:
Nine bean-rows will I have there, a hive for the honey-bee;
And live alone in the bee-loud glade.

And I shall have some peace there, for peace comes dropping slow,
Dropping from the veils of the morning to where the cricket sings;
There midnight's all a glimmer, and noon a purple glow,
And evening full of the linnet's wings.

I will arise and go now, for always night and day
I hear lake water lapping with low sounds by the shore;
While I stand on the roadway, or on the pavements grey,
I hear it in the deep heart's core.
")

poem_p_98 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "Leda and the Swan", content: "
A sudden blow: the great wings beating still
Above the staggering girl, her thighs caressed
By the dark webs, her nape caught in his bill,
He holds her helpless breast upon his breast.

How can those terrified vague fingers push
The feathered glory from her loosening thighs?
And how can body, laid in that white rush,
But feel the strange heart beating where it lies?

A shudder in the loins engenders there
The broken wall, the burning roof and tower
And Agamemnon dead.
                    Being so caught up,
So mastered by the brute blood of the air,
Did she put on his knowledge with his power
Before the indifferent beak could let her drop?
")

poem_p_99 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Wild Swans at Coole", content: "
The trees are in their autumn beauty,
The woodland paths are dry,
Under the October twilight the water
Mirrors a still sky;
Upon the brimming water among the stones
Are nine and fifty swans.

The nineteenth Autumn has come upon me
Since I first made my count;
I saw, before I had well finished,
All suddenly mount
And scatter wheeling in great broken rings
Upon their clamorous wings.

I have looked upon those brilliant creatures,
And now my heart is sore.
All's changed since I, hearing at twilight,
The first time on this shore,
The bell-beat of their wings above my head,
Trod with a lighter tread.

Unwearied still, lover by lover,
They paddle in the cold,
Companionable streams or climb the air;
Their hearts have not grown old;
Passion or conquest, wander where they will,
Attend upon them still.

But now they drift on the still water
Mysterious, beautiful;
Among what rushes will they build,
By what lake's edge or pool
Delight men's eyes, when I awake some day
To find they have flown away?
")

poem_p_100 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Player Queen (Song from an Unfinished Play)", content: "
My mother dandled me and sang,
'How young it is, how young!'
And made a golden cradle
That on a willow swung.

'He went away,' my mother sang,
'When I was brought to bed,'
And all the while her needle pulled
The gold and silver thread.

She pulled the thread and bit the thread
And made a golden gown,
And wept because she had dreamt that I
Was born to wear a crown.

'When she was got,' my mother sang,
'I heard a sea-mew cry,
And saw a flake of the yellow foam
That dropped upon my thigh.'

How therefore could she help but braid
The gold into my hair,
And dream that I should carry
The golden top of care?
")

p "100 poems"

poem_p_101 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "Adam's Curse", content: "
We sat together at one summer's end,
That beautiful mild woman, your close friend,
And you and I, and talked of poetry.
I said, 'A line will take us hours maybe;
Yet if it does not seem a moment's thought,
Our stitching and unstitching has been naught.
Better go down upon your marrow-bones
And scrub a kitchen pavement, or break stones
Like an old pauper, in all kinds of weather;
For to articulate sweet sounds together
Is to work harder than all these, and yet
Be thought an idler by the noisy set
Of bankers, schoolmasters, and clergymen
The martyrs call the world.'
                            And thereupon
That beautiful mild woman for whose sake
There's many a one shall find out all heartache
On finding that her voice is sweet and low
Replied, 'To be born woman is to know—
Although they do not talk of it at school—
That we must labour to be beautiful.'
I said, 'It's certain there is no fine thing
Since Adam's fall but needs much labouring.
There have been lovers who thought love should be
So much compounded of high courtesy
That they would sigh and quote with learned looks
precedents out of beautiful old books;
Yet now it seems an idle trade enough.'

We sat grown quiet at the name of love;
We saw the last embers of daylight die,
And in the trembling blue-green of the sky
A moon, worn as if it had been a shell
Washed by time's waters as they rose and fell
About the stars and broke in days and years.
I had a thought for no one's but your ears:
That you were beautiful, and that I strove
To love you in the old high way of love;
That it had all seemed happy, and yet we'd grown
As weary-hearted as that hollow moon.
")

poem_p_102 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "A Drinking Song", content: "
Wine comes in at the mouth
And love comes in at the eye;
That’s all we shall know for truth
Before we grow old and die.
I lift the glass to my mouth,
I look at you, and I sigh.
")

poem_p_103 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Fisherman", content: "
Although I can see him still,
The freckled man who goes
To a grey place on a hill
In grey Connemara clothes
At dawn to cast his flies,
It's long since I began
To call up to the eyes
This wise and simple man.
All day I'd looked in the face
What I had hoped 'twould be
To write for my own race
And the reality;
The living men that I hate,
The dead man that I loved,
The craven man in his seat,
The insolent unreproved,
And no knave brought to book
Who has won a drunken cheer,
The witty man and his joke
Aimed at the commonest ear,
The clever man who cries
The catch-cries of the clown,
The beating down of the wise
And great Art beaten down.

Maybe a twelvemonth since
Suddenly I began,
In scorn of this audience,
Imagining a man,
And his sun-freckled face,
And grey Connemara cloth,
Climbing up to a place
Where stone is dark under froth,
And the down-turn of his wrist
When the flies drop in the stream;
A man who does not exist,
A man who is but a dream;
And cried, 'Before I am old
I shall have written him one
Poem maybe as cold
And passionate as the dawn.'
")

poem_p_104 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "Who goes with Fergus?", content: "
Who will go drive with Fergus now,
And pierce the deep wood's woven shade,
And dance upon the level shore?
Young man, lift up your russet brow,
And lift your tender eyelids, maid,
And brood on hopes and fear no more.

And no more turn aside and brood
Upon love's bitter mystery;
For Fergus rules the brazen cars,
And rules the shadows of the wood,
And the white breast of the dim sea
And all dishevelled wandering stars.
")

poem_p_105 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Magi", content: "
Now as at all times I can see in the mind's eye,
In their stiff, painted clothes, the pale unsatisfied ones
Appear and disappear in the blue depth of the sky
With all their ancient faces like rain-beaten stones,
And all their helms of silver hovering side by side,
And all their eyes still fixed, hoping to find once more,
Being by Calvary's turbulence unsatisfied,
The uncontrollable mystery on the bestial floor.
")

poem_p_106 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Balloon of the Mind", content: "
Hands, do what you're bid:
Bring the balloon of the mind
That bellies and drags in the wind
Into its narrow shed.
")

poem_p_107 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Moods", content: "
Time drops in decay,
Like a candle burnt out,
And the mountains and the woods
Have their day, have their day;
What one in the rout
Of the fire-born moods
Has fallen away?
")

poem_p_108 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Living Beauty", content: "
I'll say and maybe dream I have drawn content—
Seeing that time has frozen up the blood,
The wick of youth being burned and the oil spent—
From beauty that is cast out of a mould
In bronze, or that in dazzling marble appears,
Appears, but when we have gone is gone again,
Being more indifferent to our solitude
Than 'twere an apparition. O heart, we are old,
The living beauty is for younger men,
We cannot pay its tribute of wild tears.
")

poem_p_109 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "THE LAMENTATION OF THE OLD PENSIONER", content: "
Although I shelter from the rain
Under a broken tree
My chair was nearest to the fire
In every company
That talked of love or politics,
Ere Time transfigured me.

Though lads are making pikes again
For some conspiracy,
And crazy rascals rage their fill
At human tyranny,
My contemplations are of Time
That has transfigured me.

There's not a woman turns her face
Upon a broken tree,
And yet the beauties that I loved
Are in my memory;
I spit into the face of Time
That has transfigured me.
")

poem_p_110 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "NO SECOND TROY", content: "
Why should I blame her that she filled my days
With misery, or that she would of late
Have taught to ignorant men most violent ways,
Or hurled the little streets upon the great,
Had they but courage equal to desire?
What could have made her peaceful with a mind
That nobleness made simple as a fire,
With beauty like a tightened bow, a kind
That is not natural in an age like this,
Being high and solitary and most stern?
Why, what could she have done, being what she is?
Was there another Troy for her to burn?
")

poem_p_111 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "THE SECOND COMING", content: "
Turning and turning in the widening gyre
The falcon cannot hear the falconer;
Things fall apart; the centre cannot hold;
Mere anarchy is loosed upon the world,
The blood-dimmed tide is loosed, and everywhere
The ceremony of innocence is drowned;
The best lack all conviction, while the worst
Are full of passionate intensity.

Surely some revelation is at hand;
Surely the Second Coming is at hand.
The Second Coming! Hardly are those words out
When a vast image out of Spiritus Mundi
Troubles my sight: somewhere in the sands of the desert
A shape with lion body and the head of a man,
A gaze blank and pitiless as the sun,
Is moving its slow thighs, while all about it
Reel shadows of the indignant desert birds.
The darkness drops again; but now I know
That twenty centuries of stony sleep
Were vexed to nightmare by a rocking cradle,
And what rough beast, its hour come round at last,
Slouches towards Bethlehem to be born?
")

poem_p_112 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "John Kinsella's Lament for Mrs. Mary Moore", content: "
A bloody and a sudden end,
     Gunshot or a noose,
For Death who takes what man would keep,
     Leaves what man would lose.
He might have had my sister,
     My cousins by the score,
But nothing satisfied the fool
     But my dear Mary Moore,
None other knows what pleasures man
     At table or in bed.
/What shall I do for pretty girls
Now my old bawd is dead?/

Though stiff to strike a bargain
     Like an old Jew man,
Her bargain stuck we laughed and talked
     And emptied many a can;
And O! but she had stories,
     Though not for the priest's ear,
To keep the soul of man alive,
     Banish age and care,
And being old she put a skin
     On everything she said.
/What shall I do for pretty girls
Now my old bawd is dead?/

The priests have got a book that says
     But for Adam's sin
Eden's Garden would be there
     And I there within.
No expectation fails there,
     No pleasing habit ends,
No man grows old, no girl grows cold,
     But friends walk by friends.
Who quarrels over halfpennies
     That plucks the trees for bread?
/What shall I do for pretty girls
Now my old bawd is dead?/
")

poem_p_113 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "Politics", content: "
'In our time the destiny of man presents its meanings in political terms.'
                                                                 THOMAS MANN.

How can I, that girl standing there,
My attention fix
On Roman or on Russian
Or on Spanish politics,
Yet here's a travelled man that knows
What he talks about,
And there's a politician
That has both read and thought,
And maybe what they say is true
Of war and war's alarms,
But O that I were young again
And held her in my arms.
")

poem_p_114 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "Crazy Jane Talks with the Bishop", content: "
I met the Bishop on the road
And much said he and I.
`Those breasts are flat and fallen now
Those veins must soon be dry;
Live in a heavenly mansion,
Not in some foul sty.'

`Fair and foul are near of kin,
And fair needs foul,' I cried.
'My friends are gone, but that's a truth
Nor grave nor bed denied,
Learned in bodily lowliness
And in the heart's pride.

`A woman can be proud and stiff
When on love intent;
But Love has pitched his mansion in
The place of excrement;
For nothing can be sole or whole
That has not been rent.'
")

poem_p_115 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Rose of Battle", content: "
Rose of all Roses, Rose of all the World!
The tall thought-woven sails, that flap unfurled
Above the tide of hours, trouble the air,
And God's bell buoyed to be the water's care;
While hushed from fear, or loud with hope, a band
With blown, spray-dabbled hair gather at hand,
Turn if you may from battles never done,
I call, as they go by me one by one,
Danger no refuge holds, and war no peace,
For him who hears love sing and never cease,
Beside her clean-swept hearth, her quiet shade:
But gather all for whom no love hath made
A woven silence, or but came to cast
A song into the air, and singing passed
To smile on the pale dawn; and gather you
Who have sought more than is in rain or dew,
Or in the sun and moon, or on the earth,
Or sighs amid the wandering, starry mirth,
Or comes in laughter from the sea's sad lips,
And wage God's battles in the long grey ships.
The sad, the lonely, the insatiable,
To these Old Night shall all her mystery tell;
God's bell has claimed them by the little cry
Of their sad hearts, that may not live nor die.
Rose of all Roses, Rose of all the World!
You, too, have come where the dim tides are hurled
Upon the wharves of sorrow, and heard ring
The bell that calls us on; the sweet far thing.
Beauty grown sad with its eternity
Made you of us, and of the dim grey sea.
Our long ships loose thought-woven sails and wait,
For God has bid them share an equal fate;
And when at last, defeated in His wars,
They have gone down under the same white stars,
We shall no longer hear the little cry
Of our sad hearts, that may not live nor die.
")

poem_p_116 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "Sailing to Byzantium", content: "
That is no country for old men. The young
In one another's arms, birds in the trees
—Those dying generations—at their song,
The salmon-falls, the mackerel-crowded seas,
Fish, flesh, or fowl, commend all summer long
Whatever is begotten, born, and dies.
Caught in that sensual music all neglect
Monuments of unageing intellect.

An aged man is but a paltry thing,
A tattered coat upon a stick, unless
Soul clap its hands and sing, and louder sing
For every tatter in its mortal dress,
Nor is there singing school but studying
Monuments of its own magnificence;
And therefore I have sailed the seas and come
To the holy city of Byzantium.

O sages standing in God's holy fire
As in the gold mosaic of a wall,
Come from the holy fire, perne in a gyre,
And be the singing-masters of my soul.
Consume my heart away; sick with desire
And fastened to a dying animal
It knows not what it is; and gather me
Into the artifice of eternity.

Once out of nature I shall never take
My bodily form from any natural thing,
But such a form as Grecian goldsmiths make
Of hammered gold and gold enamelling
To keep a drowsy Emperor awake;
Or set upon a golden bough to sing
To lords and ladies of Byzantium
Of what is past, or passing, or to come.
")

poem_p_117 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "A Prayer for my Daughter", content: "
Once more the storm is howling, and half hid
Under this cradle-hood and coverlid
My child sleeps on. There is no obstacle
But Gregory's wood and one bare hill
Whereby the haystack- and roof-levelling wind,
Bred on the Atlantic, can be stayed;
And for an hour I have walked and prayed
Because of the great gloom that is in my mind.

I have walked and prayed for this young child an hour
And heard the sea-wind scream upon the tower,
And under the arches of the bridge, and scream
In the elms above the flooded stream;
Imagining in excited reverie
That the future years had come,
Dancing to a frenzied drum,
Out of the murderous innocence of the sea.

May she be granted beauty and yet not
Beauty to make a stranger's eye distraught,
Or hers before a looking-glass, for such,
Being made beautiful overmuch,
Consider beauty a sufficient end,
Lose natural kindness and maybe
The heart-revealing intimacy
That chooses right, and never find a friend.

Helen being chosen found life flat and dull
And later had much trouble from a fool,
While that great Queen, that rose out of the spray,
Being fatherless could have her way
Yet chose a bandy-leggèd smith for man.
It's certain that fine women eat
A crazy salad with their meat
Whereby the Horn of Plenty is undone.

In courtesy I'd have her chiefly learned;
Hearts are not had as a gift but hearts are earned
By those that are not entirely beautiful;
Yet many, that have played the fool
For beauty's very self, has charm made wise,
And many a poor man that has roved,
Loved and thought himself beloved,
From a glad kindness cannot take his eyes.

May she become a flourishing hidden tree
That all her thoughts may like the linnet be,
And have no business but dispensing round
Their magnanimities of sound,
Nor but in merriment begin a chase,
Nor but in merriment a quarrel.
O may she live like some green laurel
Rooted in one dear perpetual place.

My mind, because the minds that I have loved,
The sort of beauty that I have approved,
Prosper but little, has dried up of late,
Yet knows that to be choked with hate
May well be of all evil chances chief.
If there's no hatred in a mind
Assault and battery of the wind
Can never tear the linnet from the leaf.

An intellectual hatred is the worst,
So let her think opinions are accursed.
Have I not seen the loveliest woman born
Out of the mouth of Plenty's horn,
Because of her opinionated mind
Barter that horn and every good
By quiet natures understood
For an old bellows full of angry wind?

Considering that, all hatred driven hence,
The soul recovers radical innocence
And learns at last that it is self-delighting,
Self-appeasing, self-affrighting,
And that its own sweet will is Heaven's will;
She can, though every face should scowl
And every windy quarter howl
Or every bellows burst, be happy still.

And may her bridegroom bring her to a house
Where all's accustomed, ceremonious;
For arrogance and hatred are the wares
Peddled in the thoroughfares.
How but in custom and in ceremony
Are innocence and beauty born?
Ceremony's a name for the rich horn,
And custom for the spreading laurel tree.
")

poem_p_118 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "Never give all the heart", content: "
Never give all the heart, for love
Will hardly seem worth thinking of
To passionate women if it seem
Certain, and they never dream
That it fades out from kiss to kiss;
For everything that's lovely is
But a brief, dreamy, kind delight.
O never give the heart outright,
For they, for all smooth lips can say,
Have given their hearts up to the play.
And who could play it well enough
If deaf and dumb and blind with love?
He that made this knows all the cost,
For he gave all his heart and lost.
")

poem_p_119 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "Easter, 1916", content: "
I have met them at close of day
Coming with vivid faces
From counter or desk among grey
Eighteenth-century houses.
I have passed with a nod of the head
Or polite meaningless words,
Or have lingered awhile and said
Polite meaningless words,
And thought before I had done
Of a mocking tale or a gibe
To please a companion
Around the fire at the club,
Being certain that they and I
But lived where motley is worn:
All changed, changed utterly:
A terrible beauty is born.

That woman's days were spent
In ignorant good-will,
Her nights in argument
Until her voice grew shrill.
What voice more sweet than hers
When, young and beautiful,
She rode to harriers?
This man had kept a school
And rode our wingèd horse;
This other his helper and friend
Was coming into his force;
He might have won fame in the end,
So sensitive his nature seemed,
So daring and sweet his thought.
This other man I had dreamed
A drunken, vainglorious lout.
He had done most bitter wrong
To some who are near my heart,
Yet I number him in the song;
He, too, has resigned his part
In the casual comedy;
He, too, has been changed in his turn,
Transformed utterly:
A terrible beauty is born.

Hearts with one purpose alone
Through summer and winter seem
Enchanted to a stone
To trouble the living stream.
The horse that comes from the road,
The rider, the birds that range
From cloud to tumbling cloud,
Minute by minute they change;
A shadow of cloud on the stream
Changes minute by minute;
A horse-hoof slides on the brim,
And a horse plashes within it;
The long-legged moor-hens dive,
And hens to moor-cocks call;
Minute to minute they live;
The stone's in the midst of all.

Too long a sacrifice
Can make a stone of the heart.
O when may it suffice?
That is Heaven's part, our part
To murmur name upon name,
As a mother names her child
When sleep at last has come
On limbs that had run wild.
What is it but nightfall?
No, no, not night but death;
Was it needless death after all?
For England may keep faith
For all that is done and said.
We know their dream; enough
To know they dreamed and are dead;
And what if excess of love
Bewildered them till they died?
I write it out in a verse—
MacDonagh and MacBride
And Connolly and Pearse
Now and in time to be,
Wherever green is worn,
Are changed, changed utterly:
A terrible beauty is born.
")

poem_p_120 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "EAedh Wishes for the Cloths of Heaven", content: "
Had I the heavens' embroidered cloths,
Enwrought with golden and silver light,
The blue and the dim and the dark cloths
Of night and light and the half light,
I would spread the cloths under your feet:
But I, being poor, have only my dreams;
I have spread my dreams under your feet;
Tread softly because you tread on my dreams.
")

poem_p_121 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Stolen Child", content: "
Where dips the rocky highland
Of Sleuth Wood in the lake,
There lies a leafy island
Where flapping herons wake
The drowsy water rats;
There we've hid our faery vats,
Full of berrys
And of reddest stolen cherries.
Come away, O human child!
To the waters and the wild
With a faery, hand in hand,
For the world's more full of weeping than you can understand.

Where the wave of moonlight glosses
The dim gray sands with light,
Far off by furthest Rosses
We foot it all the night,
Weaving olden dances
Mingling hands and mingling glances
Till the moon has taken flight;
To and fro we leap
And chase the frothy bubbles,
While the world is full of troubles
And anxious in its sleep.
Come away, O human child!
To the waters and the wild
With a faery, hand in hand,
For the world's more full of weeping than you can understand.

Where the wandering water gushes
From the hills above Glen-Car,
In pools among the rushes
That scarce could bathe a star,
We seek for slumbering trout
And whispering in their ears
Give them unquiet dreams;
Leaning softly out
From ferns that drop their tears
Over the young streams.
Come away, O human child!
To the waters and the wild
With a faery, hand in hand,
For the world's more full of weeping than you can understand.

Away with us he's going,
The solemn-eyed:
He'll hear no more the lowing
Of the calves on the warm hillside
Or the kettle on the hob
Sing peace into his breast,
Or see the brown mice bob
Round and round the oatmeal chest.
For he comes, the human child,
To the waters and the wild
With a faery, hand in hand,
For the world's more full of weeping than he can understand.
")

poem_p_122 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "Aedh Tells of the Perfect Beauty", content: "
O cloud-pale eyelids, dream-dimmed eyes,
The poets labouring all their days
To build a perfect beauty in rhyme
Are overthrown by a woman’s gaze
And by the unlabouring brood of the skies:
And therefore my heart will bow, when dew
Is dropping sleep, until God burn time,
Before the unlabouring stars and you.
")

poem_p_123 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Cold Heaven", content: "
Suddenly I saw the cold and rook-delighting heaven
That seemed as though ice burned and was but the more ice,
And thereupon imagination and heart were driven
So wild that every casual thought of that and this
Vanished, and left but memories, that should be out of season
With the hot blood of youth, of love crossed long ago;
And I took all the blame out of all sense and reason,
Until I cried and trembled and rocked to and fro,
Riddled with light. Ah! when the ghost begins to quicken,
Confusion of the death-bed over, is it sent
Out naked on the roads, as the books say, and stricken
By the injustice of the skies for punishment?
")

poem_p_124 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "Galway Races", content: "
There where the racecourse is
Delight makes all of the one mind
The riders upon the swift horses
The field that closes in behind.
We too had good attendance once,
Hearers, hearteners of the work,
Aye, horsemen for companions
Before the merchant and the clerk
Breathed on the world with timid breath;
But some day and at some new moon
We’ll learn that sleeping is not death
Hearing the whole earth change its tune,
Flesh being wild again, and it again
Crying aloud as the racecourse is;
And find hearteners among men
That ride upon horses.
")

poem_p_125 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "A Deep-Sworn Vow", content: "
Others because you did not keep
That deep-sworn vow have been friends of mine;
Yet always when I look death in the face,
When I clamber to the heights of sleep,
Or when I grow excited with wine,
Suddenly I meet your face.
")

poem_p_126 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Everlasting Voices", content: "
O sweet everlasting Voices be still;
Go to the guards of the heavenly fold
And bid them wander obeying your will
Flame under flame, till Time be no more;
Have you not heard that our hearts are old,
That you call in birds, in wind on the hill,
In shaken boughs, in tide on the shore?
O sweet everlasting Voices be still.
")

poem_p_127 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Heart of the Woman", content: "
O what to me the little room
That was brimmed up with prayer and rest;
He bade me out into the gloom,
And my breast lies upon his breast.

O what to me my mother's care,
The house where I was safe and warm;
The shadowy blossom of my hair
Will hide us from the bitter storm.

O hiding hair and dewy eyes,
I am no more with life and death,
My heart upon his warm heart lies,
My breath is mixed into his breath.
")

poem_p_128 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Falling of the Leaves", content: "
Autumn is over the long leaves that love us,
And over the mice in the barley sheaves;
Yellow the leaves of the rowan above us,
And yellow the wet wild-strawberry leaves.

The hour of the waning of love has beset us,
And weary and worn are our sad souls now;
Let us part, ere the season of passion forget us,
With a kiss and a tear on thy drooping brow.
")

poem_p_129 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Song of Wandering Aengus", content: "
I went out to the hazel wood,
Because a fire was in my head,
And cut and peeled a hazel wand,
And hooked a berry to a thread;
And when white moths were on the wing,
And moth-like stars were flickering out,
I dropped the berry in a stream
And caught a little silver trout.

When I had laid it on the floor
I went to blow the fire a-flame,
But something rustled on the floor,
And someone called me by my name:
It had become a glimmering girl
With apple blossom in her hair
Who called me by my name and ran
And faded through the brightening air.

Though I am old with wandering
Through hollow lands and hilly lands,
I will find out where she has gone,
And kiss her lips and take her hands;
And walk among long dappled grass,
And pluck till time and times are done,
The silver apples of the moon,
The golden apples of the sun.
")

poem_p_130 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "Youth and Age", content: "
Much did I rage when young,
Being by the World oppressed,
But now with flattering tongue
It speeds the parting guest.
")

poem_p_131 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "The Road at My Door", content: "
An affable Irregular,
A heavily-built Falstaffan man,
Comes cracking jokes of civil war
As though to die by gunshot were
The finest play under the sun.

A brown Lieutenant and his men,
Half dressed in national uniform,
Stand at my door, and I complain
Of the foul weather, hail and rain,
A pear tree broken by the storm.

I count those feathered balls of soot
The moor-hen guides upon the stream,
To silence the envy in my thought;
And turn towards my chamber, caught
In the cold snows of a dream.
")

poem_p_132 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "VI—The Stare’s Nest By My Window", content: "
The bees build in the crevices
Of loosening masonry, and there
The mother birds bring grubs and flies.
My wall is loosening, honey bees
Come build in the empty house of the stare.

We are closed in, and the key is turned
On our uncertainty; somewhere
A man is killed, or a house burned,
Yet no clear fact to be discerned:
Come build in the empty house of the stare

A barricade of stone or of wood;
Some fourteen days of civil war;
Last night they trundled down the road
That dead young soldier in his blood:
Come build in the empty house of the stare.

We had fed the heart on fantasies,
The heart’s grown brutal from the fare,
More substance in our enmities
Than in our love; oh, honey-bees
Come build in the empty house of the stare.
")

poem_p_133 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "My Table", content: "
Two heavy tressels, and a board
Where Sato’s gift, a changeless sword,
By pen and paper lies,
That it may moralise
My days out of their aimlessness.
A bit of an embroidered dress
Covers its wooden sheath.
Chaucer had not drawn breath
When it was forged. In Sato’s house,
Curved like new moon, moon luminous
It lay five hundred years;
Yet if no change appears
No moon: only an aching heart
Conceives a changeless work of art.
Our learned men have urged
That when and where ’twas forged
A marvellous accomplishment,
In painting or in pottery, went
From father unto son
And through the centuries ran
And seemed unchanging like the sword.
Soul’s beauty being most adored,
Men and their business took
The soul’s unchanging look;
For the most rich inheritor,
Knowing that none can pass heaven’s door
That loved inferior art,
Had such an aching heart
That he, although a country’s talk
For silken clothes and stately walk,
Had waking wits; it seemed
Juno’s peacock screamed.
")

poem_p_134 = Poem.create(author_id: yeats.id, book_id: poems.id, title: "My Descendants", content: "
Having inherited a vigorous mind
From my old fathers I must nourish dreams
And leave a woman and a man behind
As vigorous of mind, and yet it seems
Life scarce can cast a fragrance on the wind,
Scarce spread a glory to the morning beams,
But the torn petals strew the garden plot;
And there’s but common greenness after that.

And what if my descendants lose the flower
Through natural declension of the soul,
Through too much business with the passing hour,
Through too much play, or marriage with a fool?
May this laborious stair and this stark tower
Become a roofless ruin that the owl
May build in the cracked masonry and cry
Her desolation to the desolate sky.

The Primum Mobile that fashioned us
Has made the very owls in circles move;
And I, that count myself most prosperous
Seeing that love and friendship are enough,
For an old neighbour’s friendship chose the house
And decked and altered it for a girl’s love,
And know whatever flourish and decline
These stones remain their monument and mine.
")

p "yeats done"

poem_135 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "8 Count", content: "
from my bed
I watch
3 birds
on a telephone
wire.
one flies
off.
then
another.
one is left,
then
it too
is gone.
my typewriter is
tombstone
still.
and I am
reduced to bird
watching.
just thought I'd
let you
know,
fucker.
")

poem_136 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "A Challenge To The Dark", content: "
shot
shot
shot
shot
in the eye
in the brain
in the ass
like a flower in the dance
")

poem_137 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "A Radio With Guts", content: "
it was on the 2nd floor on Coronado Street
I used to get drunk
and throw the radio through the window
while it was playing, and, of course,
it would break the glass in the window
and the radio would sit there on the roof
still playing
and I'd tell my woman,
&quot;Ah, what a marvelous radio!&quot;
the next morning I'd take the window
off the hinges
and carry it down the street
to the glass man
who would put in another pane.
I kept throwing that radio through the window
each time I got drunk
and it would sit there on the roof
still playing-
a magic radio
a radio with guts,
and each morning I'd take the window
back to the glass man.
I don't remember how it ended exactly
though I do remember
we finally moved out.
there was a woman downstairs who worked in
the garden in her bathing suit,
she really dug with that trowel
and she put her behind up in the air
and I used to sit in the window
and watch the sun shine all over that thing
while the music played.
")

poem_138 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "a smile to remember", content: "
we had goldfish and they circled around and around
in the bowl on the table near the heavy drapes
covering the picture window and
my mother, always smiling, wanting us all
to be happy, told me, 'be happy Henry!''
and she was right: it's better to be happy if you
can
but my father continued to beat her and me several times a week while
raging inside his 6-foot-two frame because he couldn't
understand what was attacking him from within.
my mother, poor fish,
wanting to be happy, beaten two or three times a
week, telling me to be happy: 'Henry, smile!
why don't you ever smile?''
and then she would smile, to show me how, and it was the
saddest smile I ever saw
one day the goldfish died, all five of them,
they floated on the water, on their sides, their
eyes still open,
and when my father got home he threw them to the cat
there on the kitchen floor and we watched as my mother
smiled
")

poem_139 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Alone With Everybody", content: "
the flesh covers the bone
and they put a mind
in there and
sometimes a soul,
and the women break
vases against the walls
and the men drink too
much
and nobody finds the
one
but keep
looking
crawling in and out
of beds.
flesh covers
the bone and the
flesh searches
for more than
flesh.
there's no chance
at all:
we are all trapped
by a singular
fate.
nobody ever finds
the one.
the
the
the
the
the
city dumps fill
junkyards fill
madhouses fill
hospitals fill
graveyards fill
nothing else
fills.
Anonymous submission.
")

poem_140 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "An Almost Made Up Poem", content: "
I see you drinking at a fountain with tiny
blue hands, no, your hands are not tiny
they are small, and the fountain is in France
where you wrote me that last letter and
I answered and never heard from you again.
you used to write insane poems about
ANGELS AND GOD, all in upper case, and you
knew famous artists and most of them
were your lovers, and I wrote back, it&#146; all right,
go ahead, enter their lives, I&#146; not jealous
because we&#146; never met. we got close once in
New Orleans, one half block, but never met, never
touched. so you went with the famous and wrote
about the famous, and, of course, what you found out
is that the famous are worried about
their fame &#150;&#150; not the beautiful young girl in bed
with them, who gives them that, and then awakens
in the morning to write upper case poems about
ANGELS AND GOD. we know God is dead, they&#146; told
us, but listening to you I wasn&#146; sure. maybe
it was the upper case. you were one of the
best female poets and I told the publishers,
editors, &#147; her, print her, she&#146; mad but she&#146;
magic. there&#146; no lie in her fire.&#148; I loved you
like a man loves a woman he never touches, only
writes to, keeps little photographs of. I would have
loved you more if I had sat in a small room rolling a
cigarette and listened to you piss in the bathroom,
but that didn&#146; happen. your letters got sadder.
your lovers betrayed you. kid, I wrote back, all
lovers betray. it didn&#146; help. you said
you had a crying bench and it was by a bridge and
the bridge was over a river and you sat on the crying
bench every night and wept for the lovers who had
hurt and forgotten you. I wrote back but never
heard again. a friend wrote me of your suicide
3 or 4 months after it happened. if I had met you
I would probably have been unfair to you or you
to me. it was best like this.
")

poem_141 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "And The Moon And The Stars And The World", content: "
Long walks at night--
that's what good for the soul:
peeking into windows
watching tired housewives
trying to fight off
their beer-maddened husbands.
")

poem_142 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Another Day", content: "
having the low down blues and going
into a restraunt to eat.
you sit at a table.
the waitress smiles at you.
she's dumpy. her ass is too big.
she radiates kindess and symphaty.
live with her 3 months and a man would no real agony.
o.k., you'll tip her 15 percent.
you order a turkey sandwich and a
beer.
the man at the table across from you
has watery blue eyes and
a head like an elephant.
at a table further down are 3 men
with very tiny heads
and long necks
like ostiches.
they talk loudly of land development.
why, you think, did I ever come
in here when I have the low-down
blues?
then the the waitress comes back eith the sandwich
and she asks you if there will be anything
else?
snd you tell her, no no, this will be
fine.
then somebody behind you laughs.
it's a cork laugh filled with sand and
broken glass.
you begin eating the sandwhich.
it's something.
it's a minor, difficult,
sensible action
like composing a popular song
to make a 14-year old
weep.
you order another beer.
jesus,look at that guy
his hands hang down almost to his knees and he's
whistling.
well, time to get out.
pivk up the bill.
tip.
go to the register.
pay.
pick up a toothpick.
go out the door.
your car is still there.
and there are 3 men with heads
and necks
")

poem_143 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Are You Drinking?", content: "
washed-up, on shore, the old yellow notebook
out again
I write from the bed
as I did last
year.
will see the doctor,
Monday.
&quot;yes, doctor, weak legs, vertigo, head-
aches and my back
hurts.&quot;
&quot;are you drinking?&quot; he will ask.
&quot;are you getting your
exercise, your
vitamins?&quot;
I think that I am just ill
with life, the same stale yet
fluctuating
factors.
even at the track
I watch the horses run by
and it seems
meaningless.
I leave early after buying tickets on the
remaining races.
&quot;taking off?&quot; asks the motel
clerk.
&quot;yes, it's boring,&quot;
I tell him.
&quot;If you think it's boring
out there,&quot; he tells me, &quot;you oughta be
back here.&quot;
so here I am
propped up against my pillows
again
just an old guy
just an old writer
with a yellow
notebook.
something is
walking across the
floor
toward
me.
oh, it's just
my cat
this
time.
")

poem_144 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "As The Poems Go", content: "
as the poems go into the thousands you
realize that you've created very
little.
")

poem_145 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "As The Sparrow", content: "
To give life you must take life,
and as our grief falls flat and hollow
upon the billion-blooded sea
I pass upon serious inward-breaking shoals rimmed
with white-legged, white-bellied rotting creatures
lengthily dead and rioting against surrounding scenes.
Dear child, I only did to you what the sparrow
did to you; I am old when it is fashionable to be
young; I cry when it is fashionable to laugh.
I hated you when it would have taken less courage
to love.
")

poem_146 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "back to the machine gun", content: "
I awaken about noon and go out to get the mail
in my old torn bathrobe.
I'm hung over
hair down in my eyes
barefoot
gingerly walking on the small sharp rocks
in my path
still afraid of pain behind my four-day beard.

the young housewife next door shakes a rug
out of her window and sees me:
'hello, Hank!'

god damn! it's almost like being shot in the ass
with a .22

'hello,' I say
gathering up my Visa card bill, my Pennysaver coupons,
a Dept. of Water and Power past-due notice,
a letter from the mortgage people
plus a demand from the Weed Abatement Department
giving me 30 days to clean up my act.

I mince back again over the small sharp rocks
thinking, maybe I'd better write something tonight,
they all seem
to be closing in.

there's only one way to handle those motherfuckers.

the night harness races will have to wait.
")

poem_147 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Be Kind", content: "
to understand the other person's
viewpoint
no matter how
out-dated
foolish or
obnoxious.
")

poem_148 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Big Night On The Town", content: "
drunk on the dark streets of some city,
it's night, you're lost, where's your
room?
you enter a bar to find yourself,
order scotch and water.
damned bar's sloppy wet, it soaks
part of one of your shirt
sleeves.
It's a clip joint-the scotch is weak.
you order a bottle of beer.
Madame Death walks up to you
wearing a dress.
she sits down, you buy her a
beer, she stinks of swamps, presses
a leg against you.
the bar tender sneers.
you've got him worried, he doesn't
know if you're a cop, a killer, a
madman or an
Idiot.
you ask for a vodka.
you pour the vodka into the top of
the beer bottle.
It's one a.m. In a dead cow world.
you ask her how much for head,
drink everything down, it tastes
like machine oil.

you leave Madame Death there,
you leave the sneering bartender
there.

you have remembered where
your room is.
the room with the full bottle of
wine on the dresser.
the room with the dance of the
roaches.
Perfection in the Star Turd
where love died
laughing.
")

poem_149 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Bluebird", content: "
here's a bluebird in my heart that
wants to get out
but I'm too tough for him,
I say, stay in there, I'm not going
to let anybody see
you.
")

poem_150 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Carson McCullers", content: "
she died of alcoholism
wrapped in a blanket
on a deck chair
on an ocean
steamer.

all her books of
terrified loneliness

all her books about
the cruelty
of loveless love

were all that was left
of her

as the strolling vacationer
discovered her body

notified the captain

and she was quickly dispatched
to somewhere else
on the ship

as everything
continued just
as
she had written it
")

poem_151 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Cause And Effect", content: "
the best often die by their own hand
just to get away,
and those left behind
can never quite understand
why anybody
would ever want to
get away
from
them
")

poem_152 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "close to greatness", content: "
at one stage in my life
I met a man who claimed to have
visited Pound at St. Elizabeths.

then I met a woman who not only
claimed to have visited
E.P.
but also to have made love
to him—she even showed
me
certain sections in the
Cantos
where Ezra was supposed to have
mentioned
her.

so there was this man and
this woman
and the woman told me
that Pound had never
mentioned a visit from this
man
and the man claimed that the
lady had had nothing to do
with the
master
that she was a
charlatan

and since I wasn't a
Poundian scholar
I didn't know who to
believe
but one thing I do
know: when a man is
living
many claim relationships
that are hardly
so
and after he dies, well,
then it's everybody's
party.

my guess is that Pound
knew neither the lady or the
gentleman

or if he knew
one
or if he knew
both
")

poem_153 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Confession", content: "
waiting for death
like a cat
that will jump on the
bed

I am so very sorry for
my wife

she will see this
stiff
white
body
shake it once, then
maybe
again

'Hank!'

Hank won't
answer.

it's not my death that
worries me, it's my wife
left with this
pile of
nothing.

I want to
let her know
though
that all the nights
sleeping
beside her

even the useless
arguments
were things
ever splendid

and the hard
words
I ever feared to
say
can now be
said:

I love
you.
")

poem_154 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Consummation Of Grief", content: "
I even hear the mountains
the way they laugh
up and down their blue sides
and down in the water
the fish cry
and the water
is their tears.
I listen to the water
on nights I drink away
and the sadness becomes so great
I hear it in my clock
it becomes knobs upon my dresser
it becomes paper on the floor
it becomes a shoehorn
a laundry ticket
it becomes
cigarette smoke
climbing a chapel of dark vines. . .
it matters little
very little love is not so bad
or very little life
what counts
is waiting on walls
I was born for this
I was born to hustle roses down the avenues of the dead.
")

poem_155 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Cows In Art Class", content: "
ood weather
is like
good women-
it doesn't always happen
and when it does
it doesn't
always last.
man is
more stable:
if he's bad
there's more chance
he'll stay that way,
or if he's good
he might hang
on,
but a woman
is changed
by
children
age
diet
conversation
sex
the moon
the absence or
presence of sun
or good times.
a woman must be nursed
into subsistence
by love
where a man can become
stronger
by being hated.
")

poem_156 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Curtain", content: "
the final curtain on one of the longest running
musicals ever, some people claim to have
seen it over one hundred times.
I saw it on the tv news, that final curtain:
flowers, cheers, tears, a thunderous
accolade.
I have not seen this particular musical
but I know if I had that I wouldn't have
been able to bear it, it would have
sickened me.
trust me on this, the world and its
peoples and its artful entertainment has
done very little for me, only to me.
still, let them enjoy one another, it will
keep them from my door
and for this, my own thunderous
accolade.
")

poem_157 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Cut While Shaving", content: "
It's never quite right, he said, the way people look,
the way the music sounds, the way the words are
written.
It's never quite right, he said, all the things we are
taught, all the loves we chase, all the deaths we
die, all the lives we live,
they are never quite right,
they are hardly close to right,
these lives we live
one after the other,
piled there as history,
the waste of the species,
the crushing of the light and the way,
it's not quite right,
it's hardly right at all
he said.

don't I know it? I
answered.

I walked away from the mirror.
it was morning, it was afternoon, it was
night

nothing changed
it was locked in place.
something flashed, something broke, something
remained.

I walked down the stairway and
into it.
")

poem_158 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Decline", content: "
naked along the side of the house,
8 a.m., spreading sesame seed oil
over my body, Jesus, have I come
to this?
I once battled in dark alleys for a
laugh.
now I'm not laughing.
I splash myself with oil and wonder,
how many years do you want?
how many days?
my blood is soiled and a dark
angel sits in my brain.
things are made of something and
go to nothing.
I understand the fall of cities, of
nations.
a small plane passes overhead.
I look upward as if it made sense to
look upward.
it's true, the sky has rotted:
it won't be long for any of
us.
")

poem_159 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Eat Your Heart Out", content: "
I've come by, she says, to tell you
that this is it. I'm not kidding, it's
over. this is it.
I sit on the couch watching her arrange
her long red hair before my bedroom
mirror.
she pulls her hair up and
piles it on top of her head-
she lets her eyes look at
my eyes-
then she drops her hair and
lets it fall down in front of her face.
we go to bed and I hold her
speechlessly from the back
my arm around her neck
I touch her wrists and hands
feel up to
her elbows
no further.
she gets up.
this is it, she says,
this will do. well,
I'm going.
I get up and walk her
to the door
just as she leaves
she says,
I want you to buy me
some high-heeled shoes
with tall thin spikes,
black high-heeled shoes.
no, I want them
red.
I watch her walk down the cement walk
under the trees
she walks all right and
as the pointsettas drip in the sun
I close the door.
")

poem_160 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Eulogy To A Hell Of A Dame", content: "
some dogs who sleep At night
must dream of bones
and I remember your bones
in flesh
and best
in that dark green dress
and those high-heeled bright
black shoes,
you always cursed when you drank,
your hair coming down you
wanted to explode out of
what was holding you:
rotten memories of a
rotten
past, and
you finally got
out
by dying,
leaving me with the
rotten
present;
you've been dead
28 years
yet I remember you
better than any of
the rest;
you were the only one
who understood
the futility of the
arrangement of
life;
all the others were only
displeased with
trivial segments,
carped
nonsensically about
nonsense;
Jane, you were
killed by
knowing too much.
here's a drink
to your bones
that
this dog
still
dreams about.
")

poem_161 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Finish", content: "
We are like roses that have never bothered to
bloom when we should have bloomed and
it is as if
the sun has become disgusted with
waiting
")

poem_162 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "finished?", content: "
drinking champagne and
driving a BMW
and also married to a
socialite from
Philadelphia's Main Line
which of course is going to prevent me
from writing my earthy
and grubby stuff.
and they might be
right,
I could be getting to be
more like them,
and that's as close to
death as you can
get.

we'll see.
but don't bury me yet.
don't worry if I drink with
Sean Penn.
just measure the poems
as they come off the
keyboard.
listen only to them.
after this long fight
I have no intention of
quitting short.
or late.
or satisfied.
")

poem_163 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Flophouse", content: "
you haven't lived
until you've been in a
flophouse
with nothing but one
light bulb
and 56 men
squeezed together
on cots
with everybody
snoring
at once
and some of those
snores
so
deep and
gross and
unbelievable-
dark
snotty
gross
subhuman
wheezings
from hell
itself.
your mind
almost breaks
under those
death-like
sounds
and the
intermingling
odors:
hard
unwashed socks
pissed and
shitted
underwear
and over it all
slowly circulating
air
much like that
emanating from
uncovered
garbage
cans.
and those
bodies
in the dark
fat and
thin
and
bent
38some
legless
armless
some
mindless
and worst of
all:
the total
absence of
hope
it shrouds
them
covers them
totally.
it's not
bearable.
you get
up
go out
walk the
streets
up and
down
sidewalks
past buildings
around the
corner
and back
up
the samestreet
thinking
those men
were all
children
once
what has happened
to
them?
and what has
happened
to
me?
it's dark
and cold
out
here.
")

poem_164 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "For Jane", content: "
225 days under grass
and you know more than I.
they have long taken your blood,
you are a dry stick in a basket.
is this how it works?
in this room
the hours of love
still make shadows.

when you left
you took almost
everything.
I kneel in the nights
before tigers
that will not let me be.

what you were
will not happen again.
the tigers have found me
and I do not care.
")

poem_165 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "For Jane: With All The Love I Had, Which Was Not Enough", content: "
I pick up the skirt,
I pick up the sparkling beads
in black,
this thing that moved once
around flesh,
and I call God a liar,
I say anything that moved
like that
or knew
my name
could never die
in the common verity of dying,
and I pick
up her lovely
dress,
all her loveliness gone,
and I speak to all the gods,
Jewish gods, Christ-gods,
chips of blinking things,
idols, pills, bread,
fathoms, risks,
knowledgeable surrender,
rats in the gravy of 2 gone quite mad
without a chance,
hummingbird knowledge, hummingbird chance,
I lean upon this,
I lean on all of this
and I know:
her dress upon my arm:
but
they will not
give her back to me.
")

poem_166 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Freedom", content: "
28th, and he kept thinking of her:
the way she walked and talked and loved
the way she told him things that seemed true
but were not, and he knew the color of each
of her dresses
and her shoes-he knew the stock and curve of
each heel
as well as the leg shaped by it.

and she was out again and when he came home,and
she'd come back with that special stink again,
and she did
she came in at 3 a.m in the morning
filthy like a dung eating swine
and
he took out a butchers knife
and she screamed
backing into the rooming house wall
still pretty somehow
in spite of love's reek
and he finished the glass of wine.

that yellow dress
his favorite
and she screamed again.

and he took up the knife
and unhooked his belt
and tore away the cloth before her
cut off his balls.

and carried them in his hands
like apricots
and flushed them down the
toilet bowl
and she kept screaming
as the room became red

GOD O GOD!
WHAT HAVE YOU DONE?

and he sat there holding 3 towels
between his legs
no caring now whether she left or
stayed
wore yellow or green or
anything at all.

and one hand holding and one hand
lifting he poured
another wine
")

poem_167 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Friends Within The Darkness", content: "
small room in a strange city
shades pulled down, listening to
classical music
I was young I was so young it hurt like a knife
inside
because there was no alternative except to hide as long
as possible--
not in self-pity but with dismay at my limited chance:
trying to connect.

the old composers -- Mozart, Bach, Beethoven,
Brahms were the only ones who spoke to me and
they were dead.

finally, starved and beaten, I had to go into
the streets to be interviewed for low-paying and
monotonous
jobs
by strange men behind desks
men without eyes men without faces
who would take away my hours
break them
piss on them.

now I work for the editors the readers the
critics

but still hang around and drink with
Mozart, Bach, Brahms and the
Bee
some buddies
some men
sometimes all we need to be able to continue alone
are the dead
rattling the walls
that close us in.
")

poem_168 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "gamblers all", content: "
sometimes you climb out of bed in the morning and you think,
<i>I'm not going to make it</i>, but you laugh inside
remembering all the times you've felt that way, and
you walk to the bathroom, do your toilet, see that face
in the mirror, oh my oh my oh my, but you comb your hair anyway,
get into your street clothes, feed the cats, fetch the
newspaper of horror, place it on the coffee table, kiss your
wife goodbye, and then you are backing the car out into life itself,
like millions of others you enter the arena once more.

you are on the freeway threading through traffic now,
moving both towards something and towards nothing at all as you punch
the radio on and get Mozart, which is something, and you will somehow
get through the slow days and the busy days and the dull
days and the hateful days and the rare days, all both so delightful
and so disappointing because
we are all so alike and so different.

you find the turn-off, drive through the most dangerous
part of town, feel momentarily wonderful as Mozart works
his way into your brain and slides down along your bones and
out through your shoes.

it's been a tough fight worth fighting
as we all drive along
betting on another day.
")

poem_169 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Girl In A Miniskirt Reading The Bible Outside My Window", content: "
grapefruit, church is over at the Russian
Orthadox to the
west.

she is dark
of Eastern descent,
large brown eyes look up from the Bible
then down. a small red and black
Bible, and as she reads
her legs keep moving, moving,
she is doing a slow rythmic dance
reading the Bible. . .

long gold earrings;
2 gold bracelets on each arm,
and it's a mini-suit, I suppose,
the cloth hugs her body,
the lightest of tans is that cloth,
she twists this way and that,
long yellow legs warm in the sun. . .

there is no escaping her being
there is no desire to. . .

my radio is playing symphonic music
that she cannot hear
but her movements coincide exactly
to the rythms of the
symphony. . .

she is dark, she is dark
she is reading about God.
I am God.
")

poem_170 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "having the flu and with nothing else to do", content: "
I read a book about John Dos Passos and according to
the book once radical-communist
John ended up in the Hollywood Hills living off investments
and reading the
<i>Wall Street Journal </i>

this seems to happen all too often.

what hardly ever happens is
a man going from being a young conservative to becoming an
old wild-ass radical

however:
young conservatives always seem to become old
conservatives.
it's a kind of lifelong mental vapor-lock.

but when a young radical ends up an
old radical
the critics
and the conservatives
treat him as if he escaped from a mental
institution.

such is our politics and you can have it
all.

keep it.

sail it up your
ass.
")

poem_171 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "hello, how are you?", content: "
his fear of being what they are:
dead.

at least they are not out on the street, they
are careful to stay indoors, those
pasty mad who sit alone before their tv sets,
their lives full of canned, mutilated laughter.

their ideal neighborhood
of parked cars
of little green lawns
of little homes
the little doors that open and close
as their relatives visit
throughout the holidays
the doors closing
behind the dying who die so slowly
behind the dead who are still alive
in your quiet average neighborhood
of winding streets
of agony
of confusion
of horror
of fear
of ignorance.

a dog standing behind a fence.

a man silent at the window.
")

poem_172 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Here I Am ...", content: "
of wine, I have typed from a dozen to 15 pages of
poesy
an old man
maddened for the flesh of young girls in this
dwindling twilight
liver gone
kidneys going
pancrea pooped
top-floor blood pressure
")

poem_173 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "His Wife, The Painter", content: "
There are sketches on the walls of men and women and ducks,
and outside a large green bus swerves through traffic like
insanity sprung from a waving line; Turgenev, Turgenev,
says the radio, and Jane Austin, Jane Austin, too.
'I am going to do her portrait on the 28th, while you are
at work.'
")

poem_174 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Hooray Say The Roses", content: "
hooray say the roses, today is blamesday
and we are red as blood.

hooray say the roses, today is Wednesday
and we bloom wher soldiers fell
and lovers too,
and the snake at the word.

hooray say the roses, darkness comes
all at once, like lights gone out,
the sun leaves dark continents
and rows of stone.

hooray say the roses, cannons and spires,
birds, bees, bombers, today is Friday
the hand holding a medal out the window,
a moth going by, half a mile an hour,
hooray hooray
hooray say the roses
we have empires on our stems,
the sun moves the mouth:
hooray hooray hooray
and that is why you like us.
")

poem_175 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "How Is Your Heart?", content: "
during my worst times
on the park benches
in the jails
or living with
whores
I always had this certain
contentment-
I wouldn't call it
happiness-
it was more of an inner
balance
that settled for
whatever was occuring
and it helped in the
factories
and when relationships
went wrong
with the
girls.
")

poem_176 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "I like your books", content: "
In the betting line the other
day
man behind me asked,
'are you Henry
Chinaski?'

'uh huh,' I answered.

'I like your books,' he went
on.

'thanks,' I answered.

'who do you like in this
race?' he asked.

'uh uh,'' I answered.

'I like the 4 horse,' he
told me.

I made my bet and went back
to my seat....

the next race I am standing in
line and here is this same man
standing behind me
again.
there are at least 50 lines at
the windows but
he has to find mine
again.

'I think this race favors the
closers,' he said to the back of
my neck. 'the track looks
heavy.'

'listen,' I said, not looking
around, 'it's the kiss of death to
talk about horses at the
track...'

'what kind of rule is that?'
he asked. 'God doesn't make
rules...'

I turned around and looked at him:
'maybe not, but I
do.'

after the next race
I got in line, glanced behind
me:
he was not there:

lost another reader.

I lose 2 or 3 each
week.

fine.

let 'em go back to
Kafka.
")

poem_177 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "I Made A Mistake", content: "
I reached up into the top of the closet
and took out a pair of blue panties
and showed them to her and
asked 'are these yours?'
")

poem_178 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "I Met A Genius", content: "
I met a genius on the train
today
about 6 years old,
he sat beside me
and as the train
ran down along the coast
we came to the ocean
and then he looked at me
and said,
it's not pretty.
")

poem_179 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "I'm In Love", content: "
he's young, she said,
but look at me,
I have pretty ankles,
and look at my wrists, I have pretty
wrists
o my god,
I thought it was all working,
and now it's her again,
every time she phones you go crazy,
you told me it was over
you told me it was finished,
listen, I've lived long enough to become a
good woman,
why do you need a bad woman?
you need to be tortured, don't you?
you think life is rotten if somebody treats you
rotten it all fits,
doesn't it?
tell me, is that it? do you want to be treated like a
piece of shit?
and my son, my son was going to meet you.
I told my son
and I dropped all my lovers.
I stood up in a cafe and screamed
I'M IN LOVE,
and now you've made a fool of me. . .
I'm sorry, I said, I'm really sorry.
hold me, she said, will you please hold me?
I've never been in one of these things before, I said,
these triangles. . .
she got up and lit a cigarette, she was trembling all
over.she paced up and down,wild and crazy.she had
a small body.her arms were thin,very thin and when
she screamed and started beating me I held her
wrists and then I got it through the eyes:hatred,
centuries deep and true.I was wrong and graceless and
sick.all the things I had learned had been wasted.
there was no creature living as foul as I
and all my poems were
false.
")

poem_180 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "it was just a little while ago", content: "
almost dawn
blackbirds on the telephone wire
waiting
as I eat yesterday's
forgotten sandwich
at 6 a.m.
an a quiet Sunday morning.

one shoe in the corner
standing upright
the other laying on it's
side.

yes, some lives were made to be
wasted.
")

poem_181 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "It's Ours", content: "
there is always that space there
just before they get to us
that space
that fine relaxer
the breather
while say
flopping on a bed
thinking of nothing
or say
pouring a glass of water from the
spigot
while entranced by
nothing

that
gentle pure
space

it's worth

centuries of
existence

say

just to scratch your neck
while looking out the window at
a bare branch

that space
there
before they get to us
ensures
that
when they do
they won't
get it all

ever.
")

poem_182 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Layover", content: "
Making love in the sun, in the morning sun
in a hotel room
above the alley
where poor men poke for bottles;
making love in the sun
making love by a carpet redder than our blood,
making love while the boys sell headlines
and Cadillacs,
making love by a photograph of Paris
and an open pack of Chesterfields,
making love while other men- poor folks-
work.
That moment- to this. . .
may be years in the way they measure,
but it's only one sentence back in my mind-
there are so many days
when living stops and pulls up and sits
and waits like a train on the rails.
I pass the hotel at 8
and at 5; there are cats in the alleys
and bottles and bums,
and I look up at the window and think,
I no longer know where you are,
and I walk on and wonder where
the living goes
when it stops.
")

poem_183 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Let It Enfold You", content: "
either peace or happiness,
let it enfold you

when I was a young man
I felt these things were
dumb, unsophisticated.
I had bad blood, a twisted
mind, a precarious
upbringing.

I was hard as granite, I
leered at the
sun.
I trusted no man and
especially no
woman.

I was living a hell in
small rooms, I broke
things, smashed things,
walked through glass,
cursed.
I challenged everything,
was continually being
evicted, jailed,in and
out of fights, in and out
of my mind.
women were something
to screw and rail
at, I had no male
freinds,

I changed jobs and
cities, I hated holidays,
babies, history,
newspapers, museums,
grandmothers,
marriage, movies,
spiders, garbagemen,
english accents,spain,
france,italy,walnuts and
the color
orange.
algebra angred me,
opera sickened me,
charlie chaplin was a
fake
and flowers were for
pansies.

peace an happiness to me
were signs of
inferiority,
tenants of the weak
an
addled
mind.

but as I went on with
my alley fights,
my suicidal years,
my passage through
any number of
women-it gradually
began to occur to
me
that I wasn't different

from the
others, I was the same,

they were all fulsome
with hatred,
glossed over with petty
greivances,
the men I fought in
alleys had hearts of stone.
everybody was nudging,
inching, cheating for
some insignificant
advantage,
the lie was the
weapon and the
plot was
empty,
darkness was the
dictator.

cautiously, I allowed
myself to feel good
at times.
I found moments of
peace in cheap
rooms
just staring at the
knobs of some
dresser
or listening to the
rain in the
dark.
the less I needed
the better I
felt.

maybe the other life had worn me
down.
I no longer found
glamour
in topping somebody
in conversation.
or in mounting the
body of some poor
drunken female
whose life had
slipped away into
sorrow.

I could never accept
life as it was,
i could never gobble
down all its
poisons
but there were parts,
tenous magic parts
open for the
asking.

I re formulated
I don't know when,
date, time, all
that
but the change
occured.
something in me
relaxed, smoothed
out.
i no longer had to
prove that I was a
man,

I did'nt have to prove
anything.

I began to see things:
coffee cups lined up
behind a counter in a
cafe.
or a dog walking along
a sidewalk.
or the way the mouse
on my dresser top
stopped there
with its body,
its ears,
its nose,
it was fixed,

a bit of life
caught within itself
and its eyes looked
at me
and they were
beautiful.
then- it was
gone.

I began to feel good,
I began to feel good
in the worst situations
and there were plenty
of those.
like say, the boss
behind his desk,
he is going to have
to fire me.

I've missed too many
days.
he is dressed in a
suit, necktie, glasses,
he says, 'I am going
to have to let you go'

'it's all right' I tell
him.

He must do what he
must do, he has a
wife, a house, children.
expenses, most probably
a girlfreind.

I am sorry for him
he is caught.

I walk onto the blazing
sunshine.
the whole day is
mine
temporailiy,
anyhow.

(the whole world is at the
throat of the world,
everybody feels angry,
short-changed, cheated,
everybody is despondent,
dissillusioned)

I welcomed shots of
peace, tattered shards of
happiness.

I embraced that stuff
like the hottest number,
like high heels, breasts,
singing,the
works.

(dont get me wrong,
there is such a thing as cockeyed optimism
that overlooks all
basic problems just for
the sake of
itself-
this is a shield and a
sickness.)

The knife got near my
throat again,
I almost turned on the
gas
again
but when the good
moments arrived
again
I did'nt fight them off
like an alley
adversary.
I let them take me,
i luxuriated in them,
I bade them welcome
home.
I even looked into
the mirror
once having thought
myself to be
ugly,
I now liked what
I saw,almost
handsome, yes,
a bit ripped and
ragged,
scares, lumps,
odd turns,
but all in all,
not too bad,
almost handsome,
better at least than
some of those movie
star faces

like the cheeks of
a baby's
butt.

and finally I discovered
real feelings of
others,
unheralded,
like lately,
like this morning,
as I was leaving,
for the track,
i saw my wife in bed,
just the
shape of
her head there
(not forgetting
centuries of the living
and the dead and
the dying,
the pyramids,
Mozart dead
but his music still
there in the
room, weeds growing,
the earth turning,
the toteboard waiting for
me)
I saw the shape of my
wife's head,
she so still,
I ached for her life,
just being there
under the
covers.

I kissed her in the,
forehead,
got down the stairway,
got outside,
got into my marvelous
car,
fixed the seatbelt,
backed out the
drive.
feeling warm to
the fingertips,
down to my
foot on the gas
pedal,
I entered the world
once
www.PoemHunter.com - The World's Poetry Archive
69more,
drove down the
hill
past the houses
full and empty
of
people,
I saw the mailman,
honked,
he waved
back
at me.
")

poem_184 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Like A Flower In The Rain", content: "
I cut the middle fingernail of the middle
finger
right hand
real short
and I began rubbing along her cunt
as she sat upright in bed
spreading lotion over her arms
face
and breasts
after bathing.
then she lit a cigarette:
&quot;don't let this put you off,&quot;
an smoked and continued to rub
the lotion on.
I continued to rub the cunt.
&quot;You want an apple?&quot; I asked.
&quot;sure, she said, &quot;you got one?&quot;
but I got to her-
she began to twist
then she rolled on her side,
she was getting wet and open
like a flower in the rain.
then she rolled on her stomach
and her most beautiful ass
looked up at me
and I reached under and got the
cunt again.
she reached around and got my
cock, she rolled and twisted,
I mounted
my face falling into the mass
of red hair that overflowed
from her head
and my flattened cock entered
into the miracle.
later we joked about the lotion
and the cigarette and the apple.
then I went out and got some chicken
and shrimp and french fries and buns
and mashed potatoes and gravy and
cole slaw,and we ate.she told me
how good she felt and I told her
how good I felt and we
ate the chicken and the shrimp and the
french fries and the buns and the
mashed potatoes and the gravy and
the cole slaw too.
")

poem_185 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Love & Fame & Death", content: "
like and old woman going to market;
it sits and watches me,
it sweats nervously
through wire and fog and dog-bark
until suddenly
I slam the screen with a newspaper
like slapping at a fly
and you could hear the scream
over this plain city,
and then it left.

the way to end a poem
like this
is to become suddenly
quiet.
")

poem_186 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Luck", content: "
once
we were young
at this
machine. . .
")

poem_187 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "magical mystery tour", content: "
I am in this low-slung sports car
painted a deep, rich yellow
driving under an Italian sun.
I have a British accent.
I'm wearing dark shades
an expensive silk shirt.
there's no dirt under my
fingernails.
the radio plays Vivaldi
and there are two women with
me
one with raven hair
the other a blonde.
they have small breasts and
beautiful legs
and they laugh at everything I
say.

as we drive up a steep road
the blonde squeezes my leg
and nestles closer
while raven hair
leans across and nibbles my
ear.

we stop for lunch at a quaint
rustic inn.
there is more laughter
before lunch
during lunch and after
lunch.

after lunch we will have a
flat tire on the other side of
the mountain
and the blonde will change the
tire
while
raven hair
photographs me
lighting my pipe
leaning against a tree
the perfect background
perfectly at peace
with
sunlight
flowers
clouds
birds
everywhere.
")

poem_188 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Melancholia", content: "
the history of melancholia
includes all of us.
")

poem_189 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Metamorphosis", content: "
a girlfriend came in
built me a bed
scrubbed and waxed the kitchen floor
scrubbed the walls
vacuumed
cleaned the toilet
the bathtub
scrubbed the bathroom floor
and cut my toenails and
my hair.
then
all on the same day
the plumber came and fixed the kitchen faucet
and the toilet
and the gas man fixed the heater
and the phone man fixed the phone.
noe I sit in all this perfection.
it is quiet.
I have broken off with all 3 of my girlfriends.
I felt better when everything was in
disorder.
it will take me some months to get back to normal:
I can't even find a roach to commune with.
I have lost my rythm.
I can't sleep.
I can't eat.
I have been robbed of
my filth.
")

poem_190 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "My First Affair With That Older Woman", content: "
when I look back now
at the abuse I took from
her
I feel shame that I was so
innocent,
but I must say
she did match me drink for
drink,
and I realized that her life
her feelings for things
had been ruined
along the way
and that I was no mare than a
temporary
companion;
she was ten years older
and mortally hurt by the past
and the present;
she treated me badly:
desertion, other
men;
she brought me immense
pain,
continually;
she lied, stole;
there was desertion,
www.PoemHunter.com - The World's Poetry Archive
83other men,
yet we had our moments; and
our little soap opera ended
with her in a coma
in the hospital,
and I sat at her bed
for hours
talking to her,
and then she opened her eyes
and saw me:
&quot;I knew it would be you,&quot;
she said.
then hse closed her
eyes.

the next day she was
dead.

I drank alone
for two years
after that.
")

poem_191 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "My Groupie", content: "
I read last Saturday in the
redwoods outside of Santa Cruz
and I was about 3/4's finished
when I heard a long high scream
and a quite attractive
young girl came running toward me
long gown & divine eyes of fire
and she leaped up on the stage
and screamed: 'I WANT YOU!
I WANT YOU! TAKE ME! TAKE
ME!'
I told her, 'look, get the hell
away from me.'
but she kept tearing at my
clothing and throwing herself
at me.
'where were you,' I
asked her, 'when I was living
on one candy bar a day and
sending short stories to the
Atlantic Monthly?'
she grabbed my balls and almost
twisted them off. her kisses
tasted like shitsoup.
2 women jumped up on the stage
and
carried her off into the
woods.
I could still hear her screams
as I began the next poem.
mabye, I thought, I should have
taken her on stage in front
of all those eyes.
but one can never be sure
whether it's good poetry or
bad acid.
")

poem_192 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "the crunch", content: "
too much too little

too fat
too thin
or nobody.

laughter or
tears

haters
lovers

strangers with faces like
the backs of
thumb tacks

armies running through
streets of blood
waving winebottles
bayoneting and fucking
virgins.

an old guy in a cheap room
with a photograph of M. Monroe.

there is a loneliness in this world so great
that you can see it in the slow movement of
the hands of a clock

people so tired
mutilated
either by love or no love.

people just are not good to each other
one on one.

the rich are not good to the rich
the poor are not good to the poor.

we are afraid.

our educational system tells us
that we can all be
big-ass winners

it hasn't told us
about the gutters
or the suicides.

or the terror of one person
aching in one place
alone

untouched
unspoken to


watering a plant.
people are not good to each other.
people are not good to each other.
people are not good to each other.

I suppose they never will be.
I don't ask them to be.

but sometimes I think about
it.

the beads will swing
the clouds will cloud
and the killer will behead the child
like taking a bite out of an ice cream cone.

too much
too little

too fat
too thin
or nobody

more haters than lovers.

people are not good to each other.
perhaps if they were
our deaths would not be so sad.

meanwhile I look at young girls
stems
flowers of chance.

there must be a way.

surely there must be a way that we have not yet
though of.

who put this brain inside of me?

it cries
it demands
it says that there is a chance.

it will not say
'no.'
")

poem_193 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "The Genius Of The Crowd", content: "
there is enough treachery, hatred violence absurdity in the average
human being to supply any given army on any given day

and the best at murder are those who preach against it
and the best at hate are those who preach love
and the best at war finally are those who preach peace

those who preach god, need god
those who preach peace do not have peace
those who preach peace do not have love

beware the preachers
beware the knowers
beware those who are always reading books
beware those who either detest poverty
or are proud of it
beware those quick to praise
for they need praise in return
beware those who are quick to censor
they are afraid of what they do not know
beware those who seek constant crowds for
they are nothing alone
beware the average man the average woman
beware their love, their love is average
seeks average

but there is genius in their hatred
there is enough genius in their hatred to kill you
to kill anybody
not wanting solitude
not understanding solitude
they will attempt to destroy anything
that differs from their own
not being able to create art
they will not understand art
they will consider their failure as creators
only as a failure of the world
not being able to love fully
they will believe your love incomplete
and then they will hate you
and their hatred will be perfect

like a shining diamond
like a knife
like a mountain
like a tiger
like hemlock

their finest art
")

poem_194 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "So Now?", content: "
he words have come and gone,
I sit ill.
the phone rings, the cats sleep.
Linda vacuums.
I am waiting to live,
waiting to die.
")

poem_195 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "To The Whore Who Took My Poems", content: "
some say we should keep personal remorse from the
poem,
stay abstract, and there is some reason in this,
but jezus;
twelve poems gone and I don't keep carbons and you have
my
paintings too, my best ones; its stifling:
are you trying to crush me out like the rest of them?
why didn't you take my money? they usually do
from the sleeping drunken pants sick in the corner.
next time take my left arm or a fifty
but not my poems:
I'm not Shakespeare
but sometime simply
there won't be any more, abstract or otherwise;
there'll always be mony and whores and drunkards
down to the last bomb,
but as God said,
crossing his legs,
I see where I have made plenty of poets
but not so very much
poetry.
")

poem_196 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Working Out", content: "
Van Gogh cut off his ear
gave it to a
prostitute
who flung it away in
extreme
disgust.
Van, whores don't want
ears
they want
money.
I guess that's why you were
such a great
painter: you
didn't understand
much
else.
")

poem_197 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Writing", content: "
often it is the only
thing
between you and
impossibility.
no drink,
no woman's love,
no wealth
can
match it.
")

poem_198 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "The Look", content: "
I once bought a toy rabbit
at a department store
and now he sits and ponders
me with pink sheer eyes:
He wants golfballs and glass walls.
I want quiet thunder.

Our disappointment sits between us.
")

poem_199 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "notice", content: "
the swans drown in bilge water,

take down the signs,

test the poisons,

barricade the cow

from the bull,

the peony from the sun,

take the lavender kisses from my night,

put the symphonies out on the streets

like beggars,

get the nails ready,

flog the backs of the saints,

stun frogs and mice for the cat,

burn the enthralling paintings,

piss on the dawn,

my love

is dead.
")

poem_200 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "the girls and the birds", content: "
the girls were young

and worked the

streets

but often couldn’t

score, they

ended up

in my hotel

room

3 or 4 of

them

sucking at the

wine,

hair in face,

runs in

stockings,

cursing, telling

stories . . .

somehow

those were

peaceful

nights

but really

they reminded me

of long

ago when I was a

boy

watching my grand-

mother’s

canaries make

droppings

into their

seed

and into their

water

and the

canaries were

beautiful

and

chattered

but

never

sang.

")

poem_201 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "Another Bed", content: "
another bed
another women

more curtains
another bathroom
another kitchen

other eyes
other hair
other
feet and toes.

everybodys looking.
the eternal search.

you stay in bed
she gets dressed for work
and you wonder what happened
to the last one
and the one after that...
it's all so comfortable-
this love making
this sleeping together
the gentle kindness...

after she leaves you get up and use her
bathroom,

it's all so intimate and strange.
you go back to bed and
sleep another hour.

when you leave its with sadness
but you'll se her again
whether it works or not.
you drive down to the shore and sit
in your car. it's almost noon.

–another bed, other ears, other
ear rings, other mouths, other slippers, other
dresses

colors, doors, phone numbers.

you were once strong enough to live alone.
for a man nearing sixty you should be more
sensible.

you start the car and shift,
thinking, I'll phone Jeanie when I get in,
I haven't seen her since Friday.
")

poem_202 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "what they want", content: "
Vallejo writing about
loneliness while starving to
death;
Van Gogh’s ear rejected by a
whore;
Rimbaud running off to Africa
to look for gold and finding
an incurable case of syphilis;
Beethoven gone deaf;
Pound dragged through the streets
in a cage;
Chatterton taking rat poison;
Hemingway’s brains dropping into
the orange juice;
Pascal cutting his wrists
in the bathtub;
Artaud locked up with the mad;
Dostoevsky stood up against a wall;
Crane jumping into a boat propeller;
Lorca shot in the road by Spanish
troops;
Berryman jumping off a bridge;
Burroughs shooting his wife;
Mailer knifing his.
– that’s what they want:
a God damned show
a lit billboard
in the middle of hell.
that’s what they want,
that bunch of
dull
inarticulate
safe
dreary
admirers of
carnivals.
")


# PLEA TO A PASSING MAID
# worms
# the fighter (hemingway)
# my friend..
# dead bull
# summer women
# strip
