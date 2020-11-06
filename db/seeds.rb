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
  author = Author.create!(name: "William Shakespeare")
  book = Book.create!(author_id: author.id, title: "Sonnets", year: "1564 - 1616")

  nums = (1..154).to_a
  nums.each do |num|
    url = "http://www.shakespeares-sonnets.com/sonnet/#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h1.title').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('p#sonnettext').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Shakespeare done'
end

1.times do
  author = Author.create(name: "Wystan Hugh Auden")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1907-1973")

  nums = [*1647..1696, *1698..1716, *1718..1720]
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Auden done'
end

1.times do
  author = Author.create(name: "William Wordsworth")
  book = Book.create(author_id:  author.id, title: "The Poems", year: "1770-1850")

  nums = (34638..34753).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Wordsworth done'
end

1.times do
  author = Author.create(name: "Delmore Schwartz")
  book = Book.create(author_id:  author.id, title: "The Poems", year: "1913-1966")

  nums = (25523..25586).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Delmore Schwartz done'
end


1.times do
  author = Author.create(name: "Maya Angelou")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1928-2014")

  nums = (1181..1202).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Maya Angelou done'
end

1.times do
  author = Author.create(name: "Osip Mandelstam")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1891-1938")

  nums = (18053..18056).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Osip Mandelstam done'
end

1.times do
  author = Author.create(name: "Joseph Brodsky")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1940-1996")

  nums = (3759..3776).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Brodsky done'
end

1.times do
  author = Author.create(name: "Robert Frost")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1874-1963")

  nums = (10654..10777).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Frost done'
end

1.times do
  author = Author.create(name: "Ernest Hemingway")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1899-1961")

  nums = (12564..12575).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Hemingway done'
end

1.times do
  author = Author.create(name: "T.S. Eliot")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1888-1965")

  nums = (9683..9728).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'T.S. Eliot done'
end

1.times do
  author = Author.create(name: "John Berryman")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1914-1972")

  nums = (2620..2689).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Berryman done'
end

1.times do
  author = Author.create(name: "Pablo Neruda")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1904-1973")

  nums = (20620..20689).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Neruda done'
end

1.times do
  author = Author.create(name: "Federico Garcia Lorca")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1898-1936")

  nums = [17323, 17329, 17331, 17332, 17335, 17337, 17338, 17341, 17344]
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Lorca done'
end

1.times do
  author = Author.create(name: "Leonard Cohen")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1934-2016")

  nums = [42869, 42870, 530822107858537629, 70180, 3530822107858514769, 71608, 40537, 3530822107858572303, 37899, 61039, 71607, 62577, 3530822107859596625, 40542, 37901, 70428, 3530822107859536896, 3530822107859536897, 61017, 74433, 74432, 74429, 74415, 3530822107858602407, 3530822107858541162, 3530822107858575011, 62576, 74118, 74406, 74401, 74110, 138028]
  nums.each do |num|
    url = "https://songmeanings.com/songs/view/#{num}/"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h1 a').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('div.holder.lyric-box').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Cohen done'
end

# cohen - more
cohen = Author.find_by_name("Leonard Cohen")
book_lc = Book.find_by_author_id(cohen.id)

poem_lc1 = Poem.create!(author_id: cohen.id, book_id: book_lc.id, title: "Gift", content: "
You tell me that silence
is nearer to peace than poems
but if for my gift
I brought you silence
(for I know silence)
you would say
     'This is not silence
this is another poem'
and you would hand it back to me.
")

poem_lc2 = Poem.create!(author_id: cohen.id, book_id: book_lc.id, title: "You Do Not Have To Love Me", content: "
You do not have to love me
just because
you are all the women
I have ever wanted
I was born to follow you
every night
while I am still
the many men who love you

I meet you at a table
I take your fist between my hands
in a solemn taxi
I wake up alone
my hand on your absense
in Hotel Discipline

I wrote all these songs for you
I burned red and black candles
shaped like a man and a woman
I married the smoke
of two pyramids of sandalwood
I prayed for you
I prayed that you would love me
and that you would not love me
")

poem_lc3 = Poem.create!(author_id: cohen.id, book_id: book_lc.id, title: "I left a woman waiting", content: "
I left a woman waiting
I met her sometime later
She said, I see your eyes are dead
What happened to you, lover?
What happened to you, my lover?
What happened to you, lover?
What happened to you?
And since she spoke the truth to me
I tried to answer truthfully
Whatever happened to my eyes
Happened to your beauty
Happened to your beauty
What happened to your beauty
Happened to me
We took ourselves to someone's bed
And there we fell together
Quick as dogs and truly dead were we
And free as running water
Free as running water
Free as running water
Free as you and me
The way it's got to be
The way it's got to be, lover
")

# vesna parun
vesna = Author.create(name: "Vesna Parun")

book_vp = Book.create(author_id: vesna.id, title: "The Poems", year: "1922-2010")

poem_vp1 = Poem.create(author_id: vesna.id, book_id: book_vp.id, title: "You Having Hands More Innocent Than Mine", content: "
You having hands more innocent than mine
and being as wise as carelessness.
You, who can read better than I
his loneliness from his brow,
and remove the slow shadows of
hesitance from his face
the way the spring wind removes
the cloud shadows floating above the hill.

If your embrace cheers the heart
and your thighs arrest the pain,
if your name is a repose
to his thoughts, and your throat
a shade to his bed,
and the night of your voice an orchard
still untouched by storms.

Then stay by him
and be more devoted than all
others that loved him before you.
Fear the echo that
approaches innocent love nests.
And be gentle to his dream,
under an invisible mountain
at the edge of the roaring sea.

Walk along his shore. May the sad
porpoises meet you.
Wander through his woods.
Friendly lizards won’t do you
any harm.
And thirsty snakes I tamed
will be humbled before you.

May the birds I warmed
in the nights of hard frost
sing for you.
May the boy I shielded from the spies
on an empty road caress you.
And the flowers I watered with my tears
cover you with their fragrance.

I didn’t witness the best age of his
manhood. I didn’t receive his fruits
in my bosom
that was ravaged by the stares
of cattlemen on the fairs
and greedy robbers.

I will never hold hands of
his children. And the tales
I made for them a long time ago
will tell to poor little bears
left in black forest.
You having hands more innocent than mine,
be gentle to his dream
that remained innocent.
But let me see his face while
unknown years descend upon it.

And tell me sometimes the things
about him,
so I don’t need to ask
astonished strangers,
and the neighbours that pity
my patience.

You having hands more innocent than mine,
stay by his headrest
and be gentle to his dream!
")

# antun gustav matos
matos = Author.create(name: "Antun Gustav Matos")

book_agm = Book.create(author_id: matos.id, title: "The Poems", year: "1873-1914")

poem_agm1 = Poem.create(author_id: matos.id, book_id: book_agm.id, title: "Hair Comfort", content: "
 watched you last night. In a dream. Sad. Dead.
In a fatal hall, in idyll of flowers,
On a high stand, in agony of candles,
Ready to give you my life as an offer.

I didn’t cry. I didn’t. I stood stunned
In the fatal hall, full of splendid death.
Doubting that the dark eyes are clear
From where once a better life to me shined.

All, all is dead; the eyes, breath and arms,
All that desperately I tried to revive
In a blind horror and the passion pains.

In the fatal hall, thoughts in greys.
Only your hair was still alive,
And told me: Death is a dream. Be calm!
")

# santic
santic = Author.create(name: "Aleksa Santic")

book_as = Book.create(author_id: santic.id, title: "The Poems", year: "1868-1924")

poem_as1 = Poem.create(author_id: santic.id, book_id: book_as.id, title: "Where are you?", content: "
When pearls of dew at night are strewn
On meadow flowers in early bloom,
My bosom starts a longing tune:
“Where are you, where are you?”

When, relaxed, I fall asleep,
When my soul calm is deep,
In my heart whispers creep:
“Where are you, where are you?”

When the dawn glows red
In the shimmer of jewels clad,
My soul stirs a song in bed:
“Where are you, where are you?”

When great rejoicing is on high
And gloom prepares a heavy sigh,
My love begins to sing the rhyme:
''Where are you, where are you?''
")

poem_as2 = Poem.create(author_id: santic.id, book_id: book_as.id, title: "Emina", content: "
Last night, returning from the warm hamam,
I passed by the garden of the old imam,
And lo, in the garden, in the shade of a jasmine,
There with a pitcher in her hand stood Emina.

What beauty! By my Muslim faith I could swear,
She wouldn’t be ashamed if she were at the sultan’s!
And the way she walks and her shoulders move...
-Not even a hodja’s amulet could help me!

I offered her salaam, but by my faith,
Beautiful Emina wouldn’t even hear it.
Instead, scooping water in her silver pitcher,
Around the garden she went to water the roses.

A wind blew from the branches down her lovely shoulders
Unravelling those thick braids of hers.
Her hair gave off a scent of blue hyacinths,
Making me giddy and confused!

I nearly stumbled, I swear by my faith,
But beautiful Emina didn’t come to me.
She only gave me a frowning look,
Not caring, the naughty one, that I’m crazy for her!
")

# ujevic
ujevic = Author.create(name: "Augustin Tin Ujevic")

book_atu = Book.create(author_id: ujevic.id, title: "The Poems", year: "1891-1955")

poem_atu1 = Poem.create(author_id: ujevic.id, book_id: book_atu.id, title: "Nocturne", content: "
Tonight my forehead is white-hot,
Tonight my eyebrows all perspire
And a dream lights up my thought,
Of beauty tonight I shall expire!

The soul is passionate in its core,
It’s a torch in the deep of night,
Let us weep, weep without roar,
Let us die, die alone, out of sight!
")

poem_atu2 = Poem.create(author_id: ujevic.id, book_id: book_atu.id, title: "Necklace V", content: "
These words are black from profoundness,
these poems are ripe and without a fuss,
they so gushed forth from the darkness
and now aim like outstretched arms.

If not the poet, I am at least a wretch
and sometimes I cherish my wounds.
For each sob will a gold coin fetch,
and my tears will make necklace beads.

Though they will have price only
if seen once, all in gold and pearl
hanging as a necklace gloriously
around your neck, my beloved girl.
")

# desanka maksimovic
desanka = Author.create(name: "Desanka Maksimovic")

book_dm = Book.create(author_id: desanka.id, title: "The Poems", year: "1898-1993")

poem_dm1 = Poem.create(author_id: desanka.id, book_id: book_dm.id, title: "Bloody Fairy Tale", content: "
It was in a land of peasants
in the mountainous Balkans,
a company of schoolchildren
died a martyr's death
in one day.

They were all born
in the same year
their school days passed the same
taken together
to the same festivities,
vaccinated against the same diseases,
and all died on the same day.

It was in a land of peasants
in the mountainous Balkans,
a company schoolchildren
died a martyr's death
in one day.

And fifty-five minutes
before the moment of death
the company of small ones
sat at its desk
and the same difficult assignments
they solved: how far can a
traveler go if he is on foot...
and so on.

Their thoughts were full
of the same numbers
and throughout their notebooks in school bags
lay an infinite number
of senseless A's and F's.
A pile of the same dreams
and the same secrets
patriotic and romantic
they clenched in the depths of their pockets.
and it seemed to everyone
that they will run
for a long time beneath the blue arch
until all the assignments in the world
are completed.

It was in a land of peasants
in the mountainous Balkans,
a company of small ones
died a martyr's death
in one day.

Whole rows of boys
took each other by the hand
and from their last class
went peacefully to slaughter
as if death was nothing.

Whole lines of friends
ascended at the same moment
to their eternal residence.
")

poem_dm2 = Poem.create(author_id: desanka.id, book_id: book_dm.id, title: "Warning", content: "
Listen, I'll tell you my secret:
Never leave me alone
when music plays.
It could seem to me
that some eyes gray
are so deep and soft,
the eyes that are actually plain.
It could seem to me
that I dive into the sound
and I could give my hands
to anyone around.
It could seem to me
so easy, so gay
to love someone
for only one day.
Or, I could tell someone
my dearest,
magically growing secret
how much I love you.
Oh, never leave me alone
when music plays.
It could seem to me that again,
somewhere in a forest,
my tears flow through a new well.
It could seem to me that a black butterfly
makes patterns on heavy water--
those that no one feels free to tell.
It could seem to me that somewhere in the dark zone
someone sings and with a bitter flower
touches my heart where the incurable wound stays.
Oh, never leave me alone,
never alone,
when music plays.
")

poem_dm3 = Poem.create(author_id: desanka.id, book_id: book_dm.id, title: "Apprehension", content: "
No… don’t come to me! I want to adore
and love your two eyes from far, far away.
For, happiness’s beau just while waiting for—
when only allusion comes out of its way.

No… don’t come to me! There is more allure
in waiting with sweet apprehension, fear.
Just while seeking out everything is pure;
It’s nicer when just forboding is near.

No… don’t come to me! Why that, and what for?
Only from afar all stars spark and glee;
Only from afar we admire all.
No… let not your eyes come closer to me.
")

poem_dm4 = Poem.create(author_id: desanka.id, book_id: book_dm.id, title: "Spring Poem", content: "
While watching all these early buds and swallows,
I can feel tonight
that my heart’s slowly growing over sorrows
as someone’s horizon on smiley days might;
That it’s getting bigger like all plants around
and as light as feather,
and that all happiness that’s above the ground
and a Hell of pain wouldn’t really matter:

It’s longing for all things that a life as such
could give nice to thy,
and completely nothing wouldn’t be too much--
it’s eager desire and hopes are so high.
Everything that’s happened has been just a play
of my heart on fire;
my true love has never been given away
as much as I could and as I desire;

There are, in my deeps, gentle tides of words
never let outside;
I could give my heart to everyone on worlds,
yet, it would remain a lot of it inside.
")

poem_dm5 = Poem.create(author_id: desanka.id, book_id: book_dm.id, title: "I Seek Absolution", content: "
I seek absolution
For those who have no strength
To tell an evil man that he is evil
Or a bad man that he is bad;
For the one who regrets to make
Another man unhappy with the truth,
For the people who lie out of mercy.
For the man who would rather be
Humiliated than to humiliate,
For the one who, even if he discerns
A mask on a face,
Has no heart to tear it off,
For the people who cannot offend
A man of a different faith or belief,
To whom all judges seem stern
For each merciful falsehood and
Many other similar weaknesses.
")

# simic
simic = Author.create(name: "Antun Branko Simic")

book_abs = Book.create(author_id: simic.id, title: "The Poems", year: "1898-1925")

poem_abs1 = Poem.create(author_id: simic.id, book_id: book_abs.id, title: "Warning", content: "
Man, be careful
not to walk small
under the stars.

May your whole body
be filled with
the dim light of the stars!

To have no regrets
when with the last glances
you part with the stars!

In your final hour
instead of dust
pass whole to the stars.
")

poem_abs2 = Poem.create(author_id: simic.id, book_id: book_abs.id, title: "Poets", content: "
Poets are eternal wonder in the world.
They walk the Earth and their eyes
large and mute grow near the things.
Leaning an ear
on silence that surrounds them and torments them,
poets are eternal blinking in the world.
")

poem_abs3 = Poem.create(author_id: simic.id, book_id: book_abs.id, title: "The Vampire", content: "
He leads me into the night
his hand is small warm and soft
He leads me into the night
his empty blue watery eyes attract me
He gives me from the night
the poison of wine the words of ridicule

I hide my soul from him

He embraces my body
and drinks drinks my lips
and dances falling drunken of my blood

And waits for the moment
when my dead body falls and stretches out
so he can take my white soul
and with it flash through the night into the abyssal darkness
")

poem_abs4 = Poem.create(author_id: simic.id, book_id: book_abs.id, title: "Death and I", content: "
Death isn't outside of me. It's inside me
since the very first beginning: it grows with me
in every moment.
One day
I stop growing
but it continues growing
inside of me until I get overgrown
and it gets to the edge of me. My end
is truly its beginning:
when it reigns on alone.
")

poem_abs5 = Poem.create(author_id: simic.id, book_id: book_abs.id, title: "Separation with oneself", content: "
We are standing on the edge of the world
and watching the setting of final stars into the depths of the night

With the stars we set as well

We are already standing on the utmost edge of ourselves

Who removed the earth below us invisibly
so that we already see it as distantly as a star?

The stars have gone out of sight
which one of us can still sense themselves?

We fall eternally

Our path is bottomless and our fall is silent
")

poem_abs6 = Poem.create(author_id: simic.id, book_id: book_abs.id, title: "My transfigurations", content: "
I sing of myself when I take my pale soft face
from the dark, dayless and uneasy night into the crystal morning
and I swim across the fields, meadows and waters with my gaze

I sing of myself which dies an infinite amount of times daily
and resurrects an infinite amount of times as well

Oh god, transform me, because I'm tired of changes,
into your bright, unchanging and eternal star
which will shine at night from a distant sky
into the black grief of the nocturnal desperates
")


# miljkovic
branko = Author.create(name: "Branko Miljkovic")

book_bm = Book.create(author_id: branko.id, title: "The Poems", year: "1934-61")

poem_bm1 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Everyone Will Write Poetry", content: "
dream is an ancient and forgotten truth
that no one can verify anymore
foreign lands are singing now as sea and worries
east is west from the west, false movement is the fastest
now wisdom and birds of my forsaken disease are singing
flower between ash and a smell
those who refuse to survive love
and lovers turning back time
garden whose smells earth doesn't recognize
and soil that stays faithful to the fire
because this world isn't Sun's only concern

but one day
where heart was Sun will stand
and human speech will no longer have words
which poem would deny
Everyone will write poetry
truth will exist in all the words
in the places where poem is the most beautiful
the one who started it first will retreat
leaving poem to the others
I accept the great thought of future poets:
one unhappy man can not be a poet
I accept the judgment of the singing crowd:
THOSE WHO CAN NOT STAND THE SONG SHALL LISTEN TO THE STORM

but:

WILL FREEDOM ITSELF SING
AS SLAVES HAVE SUNG OF IT
")

poem_bm2 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Tired Poem", content: "
Those that have the world at hand
Should think of what to do with it
We have only words
And we're managing just fine in such poverty.

It's comforting to be the soil
It's proud to be the stone
It's wise to be the fire
It's pious to be nothing

Dirty from the forest that he too often sings of
Poet sings despite the poetry
Heartless, with no violence and with no flame
Like word that got over the music

Freedom is old
My true name is waiting for me to die
Bird, behind the Sun in the middle of the thought
Which we kiss the future with,
Everything burned down; that is a festival

Obedient ash
Flour of nothingness
Is transforming
Into a scabby dog behind me
Into a flame bird before me
It tells me the truth behind my back

Dove
You are the true accent of the tenderness that passed
Make a dawn from our tiredness
Scent is the time that the flower had

But unword says
it is
late
Unflower
says
it is
night
Unbird says
it is
flame
And Is says it Isn't
To which bird curses
Flower says that is hell
The true word has not been born yet
")

poem_bm3 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "In Vain I Wake Her", content: "
For the Sun that explains itself in plants
I wake her
for the sky streched between the fingers
I wake her for the words that burn the throat
I love her with my ears
One should go to the end of the world
and find dew on the grass
I wake her for some distant things
that look alike the ones
here
For the people with no face nor name passing down the street
For the anonymous words of squares I wake her for the manufactured landscapes of public parks
I wake her for this planet of ours that might become
a mine in the bleeding sky
I wake her for the smiles in the stone of comarades that fell asleep
between two battles
when sky was not a great birdcage
but an airport
My love full of others is part of a dawn
I wake her for the dawn for love for me for
others
I wake her though in vain
in vain as alluring a bird that has landed forever
Surely she said:
let him look for me and see that I'm gone
that woman with hands of a child that I love
that child that fell asleep not wiping its tears that I wake
In vain in vain in vain
in vain I wake her
for she'll wake up different and new
In vain I wake her
for her lips won't be able to tell her
In vain I wake her
you know water flows but doesn't say anything
In vain I wake her
One should promise to the long lost name
somebody's face in the sand
If not so
cut off my arms and turn me into a stone
")

poem_bm4 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "First canto", content: "
I found myself within a forest dark
Dante

It was a forest that ate the sky
the forest from which I came out to realize
that I did not come out that beasts have eaten me
and I knew that it will be bitter to tell
what I saw and didn't
see when I entered it's darkness and came out not
from that forest which ate its paths with green jaws
and got lost in itself
there is one warm shore hill of green and one
Beatrice
but there are three jaws three scissors and three knives
yes I would like to return
I went ahead of myself on the cried out road and sand was biting my feet
like glass and I saw dogs eating dirt
saw sinners being swung by the evil wind
sky that barks and rain of damnation heavy
and eternal
I saw blind waters of Stix and mud of hatred
I saw city in flames and women whose arms are snakes
I saw the wailing wall with no stars
and I heard words of pain in maelstrom
of those who became tree or a stone
and I can not hope for death
of those wretched that never've been born
I saw I saw I saw and heard and wept
flute of earth of forest
of blood
alluring the other shore
on the dire shore there stood people and wept
ay ay your damned souls
with balsamed arms and lips of blood
I saw I saw I saw and heard and fell dead
Oh Acheron Acheron
all sides of the world meet on your shores.
")

poem_bm5 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Love of poetry", content: "
I love happiness that is not happy
Poem that reconciles two words at war
Freedom that has its slaves
And lips that sell for a kiss

I love the word for which two pictures are fighting
And a picture drawn on the inside of the eyelid
Flowers arguing with time
In the name of future fruit and the honour of the spring
I love everything that moves for everything that moves
Moves by the laws of the quiescence and death
I love all the truths that aren't compulsory
For actual truth is shy as a flower

I love yesterday's tenderness
To tell my own body 'enough' and dream of plants
Fingers eyes and hearing differently organized
In the forest than in body
")

poem_bm6 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Destiny Of A Poet", content: "
At this time it is still danger that is singing
Flame that claims transparency
for friendship
Melodic birds escape the destiny
But they escape the words as well

As words sin the poem is born
There is no other way to become a poet
The world is divided into those who sing
And those who remain slaves

But the day of great liberation will come
The poems will open as dungeons
The poets will be destroyed
The poems will be adapted

When people discover a secret of how you become
great
The squares will be left without monuments
The secrets once known only to poets
Shall belong to the people
")

poem_bm7 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Criticism of metaphor", content: "
Two words touch as soon as you say them
And disappear into the meaning unknown
That has nothing to do with them
Because in head there is only one word
And poem is written just so
you don't have to say that word
That's how words teach each other
That's how words invent each other
That's how words influence each other badly
Poem is a string of blinded words
But their love is quite obvious
They live on the account of your comfort
The more powerless you are the more beautiful they are
And when you drain all your strength, when you die
People say: goodness, what a beautiful poetry he wrote!
And nobody suspects of the word that you never spoke
")

poem_bm8 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "A Drop of Ink", content: "
What things can fit into a drop of ink
one unwritten sun
one unsigned bird
one undrawn flower
and still enough
to write an epitaph:

two stars spent the night
in whose heart in whose night
then two flowers sprung up
from whose blood from whose blood
and two birds took off
from whose head for whose night
two stars two flowers two birds
no one knows whose they are
no one knows where they're from.
")

poem_bm9 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Sea for the workmen", content: "
While in your verses the words are bored
hopeless and condemned to death
this is the sea of poems that doesn't hesitate.
It's metaphors are navigable, dangerous
hilarious, sweet and entirely photogenic.
Maybe you'd like to steal their salt and make them
tasteless
but before the sea you are unworthy.

Sea sings of itself, naughty and free
it rhymes with whatever
though, due to it's talents, unskillful with what it's akin to.
It's depths are wiser
than all of your aphorisms.
Sea likes the fishermen that steal from it full
of love
and sailors that use the dangers that it provides
until they stray and after.

Sea doesn't like those that woo it
like their own wisdom slow and careful.
Sea, if it loves, loves workmen on vacation
that don't sleep for three nights until they reach the sea;
and when they do, they say: 'it is beautiful, our sea',
then rush to tan and go back home.
")

poem_bm10 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Poverty Of Poetry", content: "
Tell me something that is forest
Tell me something that is sea
Who knows what should be said
Barefooted and bitter you stumble from one word to another

Fire more bitter than the smoke
Under your forehead burns
It will provide you many honours
Unless you burn out too early

But if you wish
To make others' words real
To praise others' heart
You will regret being a poet

Because you don't write the poem, you live it
Poem isn't a poem if it's not joyful
Those who never praised others' heart
Have surrendered to the cruelty or mercy of the words
")

poem_bm11 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Consciousness Of Oblivion", content: "
Hope is a luxury. Eternal night in blood
threatens to an imaginary eye with a wall blind.
Oh fire, behind yourself dark, I can not recall
for as if the first one to love,
I love.

Do I know what I knew do I know what I shall:
name lost and the lonely shell,
beautifully synchronized with the emptiness that recalls
barren flowers and barren winters.

I am worried lover of that flower
that teases Sun and emptiness in me
who turns into nightingale, when different than the rest
landscape touches me and turn into dust.

But with oblivion I protected the world and protect it
for all times, from time and dust
Oh where are those places when wind blows
moving emptiness! Where is my timid star?

Turpitude desire a poem in vain! On my knees
I read the landscape that reveals
in being, in an empty stone where hides
the last star whose glow never lies.
")

poem_bm12 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Night Stronger Than World", content: "
Oh what time is it in the Universe
made out of stars red abyss blooms
you overcome yourself with fog across the world
There is no lullaby for her angry dew

Stronger than the world night of dark plots
delights the emptiness of the sleeping body that burst
in stars when a dream plants the wine in the back of your head
And birds into stone from the pike land .

Let an empty shadow celebrate
the time in head's different than in heart
hear the lush invisible coming from all sides.

We know that from past is greater
all that never will and all that never happened
And that this world echoes empty
")

poem_bm13 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Future of the fire", content: "
I'll hide you in my winter
Eternal spring, frozen dawn
Sun is your enemy
in the name of justice, and in the name of the desert

Sun is turning, truth changes it's place
The faithful ones will be left with a lie
But in the truthful place it is cold
In the truthful place no one builds home

Cool bird of fire is the only knowledge
Oh stone that chews it's ash
Oh ash that settles new hope
From hope which from it flies away.

Strange dialogue between fire and a bird
promising bird more enchanting, fire smarter
If they find a common tongue
The Bird and the fire might save the world.﻿
")

poem_bm14 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Sea before I sleep", content: "
The world is ending slowly. Everyone is starring
at the lying time on the wall: oh let's leave!
Boundaries that we live in
aren't boundaries that we'll die in.
Dead body's bitter night,
heart is dead but the depths remain.
Tonight,
water would drink itself to the bottom
and rest.

Travel, while there is still world and knowledge:
dust will make you beautiful, you'll meet ash and glow.
walk your path until you go blind
but do know:
Sun is a lie, yet it's path is true.
Let the traders of time sail with wax in their ears,
listen bravely deserts as they sing
while stars white are kneeling before the closed down sea
and the strength that crucifies in you still exists.


Emptiness, oh how tiny are the stars!

Your dream without body, night without night,
is an adjective of the clear, full of praise, Sun.
Do I see you due to my power or yours?
Transparent fence overpowered by the glow,
wishful transparency that I fear,
your bloom is the only star above town
your futility is undeniable - number one.
World is ending slowly, sad world.

Who shall bury our heart and the bones
where memory doesn't reach, where movement
doesn't multiply us and days do not repeat!
Rip my tongue out and put a flower in it's place:
wandering through the light begins. Stop the words!
Surely tomorrow even cowards will be able to
what today can only brave and true
who in the place between us and the night
have found wonderful reasons for a different love.

The world is ending. And we passionately believe
in a thought that still no one thinks,
in an empty place, in foam
then sea meddles with emptiness
and sounds itself in roar.
")

poem_bm15 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "A ballad for the troubadours of Ohrid", content: "
Wisdom, the dawns break with unskilled rays
No longer do I have the right to plain words
My heart dims, my eyes are ablaze.
Sing, great elders, while above with the birds
Stars, as metaphors do, now spray!
The lowly rots, the lofty fades away.
Bird, I’ll lead you to words, but honor the ash, do aim
To give back the borrowed flame.
In another’s heart, we’ve heard our own exclaim,
That to sing and to die is one and the same.

The sun is a glowless word.
Conscience can’t sing, for it’s afraid
Of the sensitive void. Vicious birds,
Thieves of visions, peck at my insides. I am chained
To a nonexistent rock, nailed, I stay.
It’s that much blacker, for we’ve signed this deceit
With the stars of an invisible night. Do retain
That descent into life as witness to your heat.
When the ink ripens into blood, the knowledge remains
That to sing and to die is one and the same.

Wisdom, the stronger will be the first to fail!
Only lowlifes know the meaning of poetry,
Thieves of fire, not at all frail,
Tied to the mast of a ship being tailed
By a submarine song, more dangerous by reality.
Once it's left the ripe fruit, the sun aswoon is entailed
To take the place the ash-resting kiss forsakes.
But the power courting the nightingales
None other will have in our wake.
When to sing and to die is one and the same.

Life is lethal, yet keeps death at bay.
A horrid disease will bear my name.
We’ve suffered greatly. Heed now the lay
Of an Inferno tamed. May the heart not delay.
To sing and to die is one and the same.
")

poem_bm16 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Dark Land", content: "
Delighted they are with others' word. Infidelities
Grave hiding in the heart that fears:
Praised are sideways. Sun is a mistake
Followed by the seen blind atrocities.
Cunning fire offers night instead of eyes
Yet sick still stand in the used out air
And people differently follow what they see is there
Pit doubts in them, for within them lies ;
From danger are safe only the weak.
And for the crime is guilty even those that sleep.
There is no one to forgive the strong
For descending into the dark land, and for the gold
that they've found that no one can have.
Whatever you do evil turns out, for that underground dirt
Is worth more each day.
")

poem_bm17 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "If We Speak", content: "
If we speak
we said what we didn't mean to say
If we keep silent we said nothing
but we held back much.

Every word means what
its silence means.
")

poem_bm18 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Poem about a flower", content: "
One teeny flower
Still his first words has not said
And already knew all enigmas of the Sun
And the secrets which soil may shed.

One teeny flower
On his feet hasn’t yet stood
And already could nurture himself
With light, air and water as food.

One teeny flower,
To read and write he can’t do
But well knows life, knows the world
And he wafts, wafts a scent so true.
")

poem_bm19 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "The Sky", content: "
There isn't such a thing as the blue sky
it is only explosion of our surprise
over the emptiness.
")

poem_bm20 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Poem for my 27th birthday", content: "
I don't need words anymore, I need time;
It is time when Sun tells us the hour;
It is time for flower to speak, and for mouth to be mute;
How can man who lives poorly sing out the truth?

I believed in dream and the storm,
enamoured I was by two nights at night
While in the same fruit both north and south
freeze and bloom.

Dreaming, I overslept all the holidays!
While tame thunder in the glass sang.
Put Fire back where it belongs, said
and kiss belongs in hell.

Even bread gets education underground;
I wish to fight on the side of evil;
With history's mercy, still I will
puking enter the Eden

For friends I named crooks
enamoured with all that sings and harms.
before the pious water I shall be praying
'til my knees get numbed by stars
")

poem_bm21 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "The Last Poem", content: "
Evening star shall stare at my burned out eyes
and won't find it's lost reflection.
Somewhere someone will
over the peaceful river of thoughts lean
remembering
Sadness once in me shall fly out into the world
And distant sunflowers will bow their heads.
")

poem_bm22 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Odysseus", content: "
To go without getting closer
To search and to always be far from something

Stealing from night pieces of the road
And seeing yourself disfigured in a shattered mirror

While on lighting rods periwinkle flowers blossom.
")

poem_bm23 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Chronicle", content: "
On the first day birds died and snakes moved into the nests and winds
On the second day fish left waters and water flowed away empty
On the third day forest went to town but town was nowhere to be found
On the fourth day the Tower was built of skulls and teeth
On the fifth day forest was collecting headless bodies by the river
On the sixth day a little fire in love alike sun
On the seventh day angels did not sing
On the eighth day on Monday the first bird sung from ash
and the wall spoke.
")

poem_bm24 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Defending The Land", content: "
          We watched as those we love died standing

In the heart love stronger than death
In the head a thought larger than the head
That too is defending the land

Terrible are the warriors beneath the ground, soldiers of defence,
A source of strength should the living falter
That too is defending the land.

A great word grows not from the heart nor from the head
But from the ground like the plant or flower
That too is defending the land

The struggling seed thinks flower
The day thinks sun
That too is defending the land

The extent of the land behind us
Is the extent of our strength
That too is defending the land
")

poem_bm25 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "To The Homeland", content: "
                   We watched as those we love died standing

There is no song outside of truth
I love you
And if they sent animals with empty eyes after me

I love you
And if they dug out a dog from the ground to bark at us

I love you
And if they shifted my future behind me

And if they killed me
I love you
")

poem_bm26 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Requiem", content: "
V

You were plastered into stone, invisible ones,
You all were ready to die
one within another and so it was,
hail you weird river of salvation
you were searched for in the dark lump
of fainted senses, in the limiting frontiers
you and surprises were not discovered.
Fare thee well my town, where my memory ceases
You are now all dead and your body
is an untouchable record and warm
handful of Serbia's earth and our

rephren:

Their mouths were filled with sand and they were
mute
Fare thee well my town, where my memory ceases
Hail you weird river of salvation
")

poem_bm27 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Triptych for Eurydice", content: "
I
At the damned shore longer than a day,
where nightingales are all dead,
and red steel precedes me,
Bitter taste of your absence I felt
in my mouth.
death is still buzzing in my ear

Night on this side of the moon often slips
into unnecessary truths and thrilled massacres.
Oh, under my skin river of blood longs
For the night from the other side of the moon, night of the sour cherry tree.

But all the doors are locked. All
the echoes are dead. They have never loved so much.
Will I the victim, surprise the secretive death.

Bitter tear in heart. In the pestiferous wind I stand.
That rock-hard dream will never end
I must awake you dead Eurydice.

II
At the bottom of the blind places where I'm not,
where sights are eerie,
on the other side of blood where fruit poisonous grows,
I descended,
there where my eye will ripe with constellation of tears
that night will soon steal

Oh, it will move into its temple
Here I am, defenseless in front of dreadful loneliness
Not to look back no matter how much you long
To be an eyeless face on the empty wall.

Red birds sing in my flesh.
Black birds fly above my head.
Let my forehead be bitten by soil

by leper and stone under summer grass,
If I lose your beautiful face
on this bitter shore of fever and darkness.

III
Stars make the night. Bird flies out of my sleepy head.
Between two bitter depths, one bird: and a cliff
of good hope. Oh If I could be dead.
But curse won't help. Death
of my own in the head I carry,
I traveler without luggage or face.

I've lost you by the underground night, distant
I, wild hunter for stars
wrongly confronted with untruth,
unforgiving sleeper spotted by fate,
I, whose tears now flow down somebody else’s face.

Where, but in my poem, are you beautiful Eurydice?
You despised every shape and form of existence , oh you,
picture of my black city and lost goal.

Everywhere in the world terrible love rules.
On the horizon , as the last hope
Clouds full of birds and future plants
appear.
")

poem_bm28 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Orpheus at the Underground", content: "
Don't look back. A big secret is unveiling
behind your back. Birds are moldering
high above your head while neverending
suffering is blooming before you
and poisonous rains pour.

Wounded by the stars you wonder in your dream. Shiny,
she follows your trail, but you alone mustn't see her.
Oh while her glow falls on you
they could even hide her away

you'll find the entrance where two murky dogs stand.
Sleep, time is in the evil. You are damned forever.
Evil is in the heart. Dead, if they exist,
will pronounce you alive. Here's the one
behind whose back the world was made
like an eternal conspiracy and a sad twist
")

poem_bm29 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Rondel", content: "
Blind walk to hide you away from space, tired
from the night lit up by the borrowed stars, and there
may you forget, forget a little bit each day,
if name is the answer to that dream.

Don't meet the people with dangerous hands at the bottom
where ash is a witness to blood and everything's asleep.
Forget, forget each day a bit.
One name is the reason to that dream.

Hands that use stone and the still time
on the movable line in the meantime,
where the road is wide
and the two loud stones die
may they take desert for a witness or the fallen Sun
so one name is reason to that dream.
")

poem_bm30 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Sonnet about the bird", content: "
It hatched out of a stone thrown
and became iris of the blinded sky
a little life that've taken off
of our endless shoulders bowed.
Oh strange bird whose purpose
is to be the flight of the earth and the song of deserted
sky, that is heard but not grasped. Oh, white
courting of the wind to that fiery bird.
Bird that is walled into the brain and wall
that never met the sight
that hearing has found in the places of murmur,
your death was conceived in our ear.
Oh stone-bird may the night mourn you
with the sultry stars with the stars unreasonable.
")

poem_bm31 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "I Dreamt Her In Stone", content: "
Let your white swans dream of crystal lakes,
but don't trust the sea that is tracking us and inviting.
Invisible force to which sunflowers bow, is dreaming of space
can you see in darkness - staring at forgotten days?

Three worlds love you, three fires burn you. And we
walk in front of hope, haunted by wandering deserts.
We are the ones who invented it all and stayed alone,
you holy woman marbled white, condolences to which they hail.

On the audio shores where ancient sea ends
your icy heart fears: air is a great miracle.
Let beauty of the Sun last until the last dream,
up towards the peaks which lost our trail. But silly
don't trust that sea that is tracking us and inviting.
Dream of crystal lakes in the darkness.﻿
")

poem_bm32 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Beginning of a dream", content: "
May I unworthy be wrapped in a wind
O Tower that I breathe on, that ends beyond time
Sky feels tight in a bird, bird even more so
My separate eye watches outside of head.

I take away the name from the world
to hide it in pre-existence
Where nothing starts, for there's no space no more
when animals that forest's curse bore, and myself
are killed with a dream by
Night of deadly rain and a slumbering force.

Haunted by pure fire, oh what to do
with what I heard and saw when unfound I dive into
space before words where my head rot
When I fly and as a man that sleeps I move not
Runaway crane, rose with no fear,
grievance of black birds, sad ode, and a tear!
")

poem_bm33 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Tower Of Skulls", content: "
Grievance of black birds, sad ode, and a tear!
After death - robbed sight and an empty name
It isn't love,
but suffering and shame
When echoes move places and shores.

Underground wind lulls the sleeping ones to sleep
Entrance's guarded by two silences an' a rock
It isn't love, but suffering and wall
Of skulls where stars, that once shone - rot.

Becoming voice and time I disappear, I wake,
Flower greater than the night, wave with no keepsake
Above my head the stars that light
Who's route I changed,and the sight
O Boat full of oblivion and wind with no flaw
heavy shadows of some other world, that falls.﻿
")

poem_bm34 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Rejection of a doubt", content: "
Heavy shadows of some other world, that fell
O ye Slave of tiring hill an' bad news!
It's too late now to question what our conscious holds
Our entire life being robbed by the words.

Unfulfilled eyes' love and illusions trembling
Place me in a place much closer
Where word equals destiny and subconscious
Where shadows are grandiose and things are small.

When I go blind, all the silhouettes of water who will water?
Children due to grow should be born
For the meaning of a secret in illusion
that dreams

At the bottom of a poem, what lays?
Unsettling flute in the air of it's own
when the Sun of make-believe to a demon I bestow.
")

poem_bm35 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Beginning of a journey", content: "
At the bottom of a poem, what lays
When same gift is a dawn, and someplace a night of rest?
Oh distance of a dream where south Pleiades plays,
Hide me from the blind rock watching from the sky .

It's the timid valleys that became pits
in this poem that gives me no peace.
Heart full of darkness its own angel picks,
to hide my intentions an' watch over bitter seas.

Black sail of my wind, oh blinded sailing!
Sea comes only to the knees of my pride
Up above my head, symmetry is threatening
Worlds lined into illusion by the mind.
What to pair you with, when I lost your sight
My beautiful day with elegy's heart.
")

poem_bm36 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Beginning Of A Quest For Self", content: "
My beautiful day with elegy's heart
When one's shadow through landscapes is
Influence of stars above me - who can fight (!)
Overwhelmed with fear I wonder in tears﻿

World! Non detached by events no one has found oneself in your scenes
Return my day if somewhere it still is
Earth again unknown
When in skull the snakes are born.

Heads lined up in forgotten time
With the last words and futile thought
Fear their own face in the murky rock.

I search for you in the wind
Spoken word for fallen world, if you still exist
I search for beginning, a glow and hours
that ceased.
")

poem_bm37 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Identification of Being and a Word", content: "
I search for beginning, glow and hours that ceased
To live my life and resurrect it
From the crumbs of reality disguised inside the dream
When entering the desert sleeping ones conceal.

I repeat those words that have given me
That flower that rock bird that appeared
from nothingness, sun that exploded
above the world which they chose themselves.

Hopeful I listen sides of the world.
Casts moon, time. Still
Word's above the world for the other words.

Day of blind love ends half-real
Didn't pass in remembrance of anoint enchanted world
When eternity gave you the two sad birds.
")

poem_bm38 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Atonement", content: "
When two sad birds gave you eternity
Patience of space and as punishment it's face
Oh Head, down the black ladder
into everlasting misery's day
what kind of fire did evoke they?

At the bottom there's the Sun
And fire is the time. Crane,
Where is it's echo, in dream or in death? Defeated
Witnesses of a sea and pointless change
Dreamed of peace and froze the wave.

World turned into time, stolen from an evil dragon
By steady fire and a painful haze. Build
There is no convicts tonight - everyone’s dreaming
In the gardens where nevermore grow and the moss,
there is no hope, nor fear of the snake
At the door behind which
the space rots.
")

poem_bm39 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Memory of the Deceased", content: "
At the door behind which the space rots
He is confused golden coin and ambiguous growth of
Dim words deeper and deeper that wait for us
to sprout the marrow through this core of ours.

Who could find him in the singing flame
salvation and grass grow from his name,
The only awake though just a voice
Heard but yet unseen.

Between everything that happens, space and time
the sinless speech in light to overcome
When cities burn in self-defense.

He is the star above nothingness, speech that reveals crushed
Sun of the underground like mercury in a bone.
The memory lost feeds the desert there.
")

poem_bm40 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Beginning Of The Oblivion", content: "
The memory lost feeds the desert there
Before the small bush of in a flight killed bird
It's where exists all that you can't find anywhere in the world
Why do beginning still lasts in the end
Though all of those days are long gone by.

All is a name or a word there.Early in time
Sunflowers and Sun and the other stars.
Night will come out of the sea and wake up in heart.
Shooting star
foretold to the dark, dew for a dream
an early medicine.

Mesmerized by the turn of the sky that bones our grind
While the wise men 'bout future tell lies.
Can you see well to protect what is not there?

And it's love that is gone, shore and water are here to tell.
Rust the remains of the cursed ship.
by the fire of which the days feed.
")

poem_bm41 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Making Up A World", content: "
By the fire where no day feeds
shapes deformed with violent dilution
of emptiness and dreams. Truthfulness of speech
All replaced with a word to an unclear song leads.

World with wind under every leaf in dark
that ends with stars above marked
woods
And abomination in a kiss that must be born
Arriving, we invented on our own.

Heights are inviting, where everything loses sense,
Where essence is round and similar to it's shape
And from all reality only words remained. And colours?
And sounds and smells? They can even kiss
but there is no love. Event retold,
What is left is non-found treasure an' the buried mourn.
")

poem_bm42 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Enchanting", content: "
Non-found treasure an' the buried mourn are left
in enchantments that we never knew,
where we fell late, O sound-full dew,
When waters don't flow, because nothing exists
If it hasn't ceased. Landscape is divided
by echo of that word. Hours have stopped
and waves are caught above the pit. Is
reality delusional or runaway conscious breastfeeds
haunted sound with murky exit to nothing?
Oh desert most similar to the Sun, is there anything
finer than sand lulled by eternity and heart!
And what part of the world gift becomes
When you watch above the made up land, lonely star,
My love, dead, but yet alive?
")

poem_bm43 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Preaching of the fire", content: "
My love, dead, but yet alive
Let in it's day outspoken burn
Let play poet until poem is earned
Bird-lit poet that in me resides.

Oh golden residue of time spaces
Full of Sun! Shadow, where does that land hide
Where all made of oblivion matter reveals,
Fire in self and a morning-less day in trees.

What is the name of time before we're born
Ready in others' hope and painless flame all that?
Hello, oh possible star that we can't even think of,
Or forget me poem, for my desire is to blame.
Under ground the lasting that started shall continue.
Oh everything that passed eternity became.
")

poem_bm44 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "End Of Journey", content: "
Oh everything that passes, eternity becomes.
Shadow that was tree, lasts. Wake
under your name that wakes
hand with flowers, blood enslaving itself.

The journey will end, silent hills remain,
Grey emptiness, wind that roams,
Place that has no place in desire but offers
evil to deliver us
and reveal the truth.

That which you pray to is a Sorrowful Nightingale.
Love is never over.
What makes suffering humane? O hear
Echoing Day. Stars stand motionless.
Empty hands, empty heart, wishful shadow
I am gone, but my love remains.
")

poem_bm45 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Preaching Of Love", content: "
I am gone but my love still exists;
I see it in the Sun and soil where rot our bones.
Day ends in it's grace
like music like emptiness, in peace.

It will save intentions mine and yours
And resurrect dead birthdays at it's will.
Immeasurable shade of villainy at the bottom of the wind
Shall vanish into ash, of those that ceased to be.

In an empty heart in the dead of night, call for me
dead desire, to repeat the world.
If I haven't found love and have lulled my mind to sleep,
So the day that's yet to come already seems empty,
May I unworthy be wrapped in the wind
As a branch that stretches into noise in vain.
")

poem_bm46 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Main Roads", content: "
May I unworthy be wrapped in a wind
Grievance of black birds, sad ode and a tear
Heavy shadows of some other world, that fell
What's that hiding at the bottom of the poem.

My beautiful day with elegy's heart
I search for beginning, glow and hours that ceased
When two sad birds gave you eternity
At the door behind which the space rots

The memory lost feeds the desert there.
And by the fire where no day feeds
Non-found treasure and the buried mourn are left.

My love, dead, but yet alive
Oh everything that passes, eternity becomes.
Though I am gone my love still exists.
")

poem_bm47 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Dedication of elegies", content: "
Messenger of headland what a bird
under heart you carry? By an eye replaced the world
above the river tightly sleeping you dream
Bitter fruit of climate for riddles above your bloodstream
when dead time and a pit the dome become
of our bitter days in a lavish flow
of stars under which I fell in fervour.
Where I have kneeled the Sun shall fall.

Speak up shadows do I sense the deceit
of a bleary nape.Oh sad north of the body, sky of four winds, turn into vapour
over wide open water that delivers
over body whole the darkness of eyes. Flames
become joyless when poems in me find
the dark abundance that torture me starved.

All that I have is our words
over waters that suspect the dark splice of the flow
when heights discover pain in me kneeling before
my core that dreams the painless flower.
By that which banishes river from the earth, let us be cured
When world tuned our bread into stone
when mirror into her dead face turns
above evil cliff for the winged birds.

Messenger of headland what a bird
under heart you carry? By an eye replaced the world
above the river tightly sleeping you dream
Bitter fruit of climate for riddles above your bloodstream
when dead time and a pit the dome become
of our bitter days in a lavish flow
of stars under which I fell in fervour.
Where I have kneeled the Sun shall fall.
")

poem_bm48 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Ode to plants", content: "
I
They came from one concise day known and unknown
Bashful in our use, many plants
Making visible the line that divides dream from a day
Any place where there is minerals and water imagination and air
Plants that pierce the body with aery spears of scent
that stop us with their poison and with protein extend
They collect us 'round the world and our exhaustion feed
Of the soil which stays before our powers locked
they dig the needed treasures from the closed crease
From the black lock which takes only plants, no keys
Oh very brave and inventive plants
Everything they find they unselfishly show
Standing between us and the emptiness like the most beautiful fence
Plants that devour emptiness and in turn give breath

II

They find roads between two extremes: between minerals in which there is no night,
where sun never sets, where symmetry is constant even in our heart
They grow away from real and then they appear
They parallel future and the past making sure there isn't more of the dead real than the living unreal
They make time necessary, go to death and back
Blending day with night, conceiving sweet fruits
Preparing love

III

That's where it all starts if there really is an adapted light in them
(Where they don't mediate between us and our Sun is the desert)
They create the world before it's obviousness before the first day
Birds bloom in branches people of clay create trees and then take from it heart alike rose
They are the least made up
They don't exchange Sunday for Monday

IV

Two worlds are imagining it: underground and the one whose day is an imitation of the invisible Sun

Plant with a root outside of this world
Opens the wind up and enters the emptiness without knocking
Penetrates the matter and touches eternity, it's persuaded flower
It's floral experience: out-pour of one world into another
Green witchcraft floral devil flower and not mind
It's indolence touched by wonder

Give the seed back to the oblivion
It's transparency releases me of God
Like the birds who cross the sea
(confusing birds not understanding space)
It's indolence it's flower without memory took away eternity though it is an act of the two worlds
Though it exploits one substance not least specific in the depths of day

Plants!
I name them to live with me, I give them garden
I introduce them to my needs and habits
I use their oblivion

V

I know your root
But from which seed does your shadow grow
Floral beauty longtime invisible distant in the seed
Underground you found my bodiless head that dreams the true dream

Stars lined into cocoon
Everything that's created with a song and Sun
Between my absence and the night of your floral ambitions
That make me needed even when I'm gone
Green microphone
of my underground voice Black Elder that grows from Hell
For there is no other Sun under ground

Oh plant where are your angels to insects alike
And my blood that ties oxygen and time
")

poem_bm49 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Praise to the World", content: "
Oh world do not leave me
Do not go you naïve swallow

Do not hurt the earth
Do not bother the air
Do no harm to water
Do not make me quarrel with fire
Let me walk
Towards myself as towards my own aim

Let me talk to water
Talk to the earth
And the bird that lives of air
My voice stretched out as a nerve
Let me talk
While there is fire in me
We may once be able
To what we say, we touch with our hands

Oh world do not leave me
Do not go you naïve swallow
")

poem_bm50 = Poem.create(author_id: branko.id, book_id: book_bm.id, title: "Ode to the Fire", content: "
I
She has no one but the Sun and me

II
She appears to a vagabond
to the witty one
to the one in love

Nothing is lost in fire
it has only been interpreted

III
At the edges of fire
objects that don't glow
nor by any other means are,
last in somebody else's time

One-bird flock
flies out of it.

Take a handful of ashes
or anything that has passed
and you'll see that it still is fire
or that it could be﻿
")

p "Miljkovic - 50x"

# blake
blake = Author.create(name: "William Blake")

innocence = Book.create(author_id: blake.id, title: "Songs of Innocence and Experience / Songs of Innocence", year: "1789-94")

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


experience = Book.create(author_id: blake.id, title: "Songs of Innocence and Experience / Songs of Experience", year: "1789-94")

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

rosseti = Book.create(author_id: blake.id, title: "Poems from the Rossetti Manuscript / Part I.", year: "Written circa 1793")

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

rossetti_2 = Book.create(author_id: blake.id, title: "Poems from the Rossetti Manuscript / Part II.", year: "Written circa 1800-1810")

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

pickering = Book.create(author_id: blake.id, title: "The Pickering Manuscript", year: "c.1801-3")

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


yeats = Author.create(name: "William Butler Yeats")
poems = Book.create(author_id: yeats.id, title: "The Poems", year: "1865-1939")

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


bukowski = Author.create(name: "Charles Bukowski")
poems_b = Book.create(author_id: bukowski.id, title: "The Poems", year: "1920-1994")

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

poem_203 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "The Tragedy of Leaves", content: "
I awakened to dryness and the ferns were dead,
the potted plants yellow as corn;
my woman was gone
and the empty bottles like bled corpses
surrounded me with their uselessness;
the sun was still good, though,
and my landlady’s note cracked in fine and
undemanding yellowness; what was needed now
was a good comedian, ancient style, a jester
with jokes upon absurd pain; pain is absurd
because it exists, nothing more;
I shaved carefully with an old razor
the man who had once been young and
said to have genius; but
that’s the tragedy of the leaves,
the dead ferns, the dead plants;
and I walked into a dark hall
where the landlady stood
execrating and final,
sending me to hell,
waving her fat, sweaty arms
and screaming
screaming for rent
because the world had failed us
both.
")

poem_205 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "the ladies of summer", content: "
the ladies of summer will die like the rose
and the lie

the ladies of summer will love
so long as the price is not
forever

the ladies of summer
might love anybody;
they might even love you
as long as summer
lasts

yet winter will come to them
too

white snow and
a cold freezing
and faces so ugly
that even death
will turn away--
wince--
before taking
them.
")

poem_203 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "shot in the eye", content: "
shot in the eye
shot in the brain
shot in the ass
shot like a flower in the dance

amazing how death wins hands down
amazing how much credence is given to idiot forms of
life

amazing how laughter has been drowned out
amazing how viciousness is such a constant

I must soon declare my own war on their war
I must hold to my last piece of ground
I must protect the small space I have made that has
allowed me life

my life not their death
my death not their death

this place, this time, now
I vow to the sun
that I will laugh the good laugh once again
in the perfect place of me
forever.

their death not my life.
")

poem_206 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "***", content: "
For those who believe in God, most of the big questions are answered.
But for those of us who can't readily accept the God formula, the big answers don't remain stone-written.
We adjust to new conditions and discoveries. We are pliable.
Love need not be a command nor faith a dictum.
I am my own god.
We are here to unlearn the teachings of the church, state, and our educational system.
We are here to drink beer. We are here to kill war.
We are here to laugh at the odds and live our lives so well that Death will tremble to take us.
")

#poem_207 = Poem.create(author_id: bukowski.id, book_id: poems_b.id, title: "***", content: "
# ")

# PLEA TO A PASSING MAID
# worms
# the fighter (hemingway)
# my friend..
# dead bull
# strip

# brodsky - more
brodsky = Author.find_by_name("Joseph Brodsky")
book_b = Book.find_by_author_id(brodsky.id)

poem_b1 = Poem.create(author_id: brodsky.id, book_id: book_b.id, title: "From nowhere with love, on the -eenth of Marchember", content: "
From nowhere with love, on the -eenth of Marchember,
dear respectful my darling, doesn't matter
even who, for the face, speaking frankly,
is impossible to remember, not yours, and
no-one's best friend, sends his regards being on one
of the five continents, related to cow-boys;
I loved you more than angels and even Himself
and am further from you now than from them both;
late at night, in the sleeping valley, in its very pit,
twisting at night on the blank bed-sheet --
as not mentioned below at least, -- with a throb
I whip up the pillow by moaning 'you'
from beyond the seas, its shores connecting
in the dark, with my body your body through
all it's features, as a crazy mirror, reflecting.
")

poem_b2 = Poem.create(author_id: brodsky.id, book_id: book_b.id, title: "Torso", content: "
If suddenly wandered into a stone grass,
looking better in marble, than reality,
il notice a faun, predavšegosâ driving
with nymph, both in bronze happier, than a dream,
you can let the staff of overworked hands:
you're in Empire, friend.

Air, flame, water, fauns, mollusk, lions,
taken from nature or from the head, –
everything, God invented and tired to continue
brain, converted into a stone or metal.
This is - the end of things, it is - in the end of the road
mirror, to enter.

Stand up in a free niche and, zakativ eyes,
look, how to pass the century, disappearing behind
angle, and in the groin of moss
and shoulders rests the dust - the tan ages.
Someone will break away arm, and head and shoulders
roll down, stuc.

And it will remain a torso, unnamed amount of muscle.
A thousand years of living in a niche with the mouse
broken claw, not beating granite,
I went out one night, pisknuv, prosemenit
across the road, so as not to come into the hole
at midnight. no morning.
")

poem_b3 = Poem.create(author_id: brodsky.id, book_id: book_b.id, title: "Bosnia Tune", content: "
As you pour yourself a scotch
Crush a roach or check your watch
As your hands adjust your tie people die

In the towns with funny names
Hit by bullets, caught in flames
By and large not knowing why people die

And in small places you don't know of
Yet big for having no chance to scream
Or say good-bye people die

Chorus: La, la... Let me know

People die as you elect
New apostles of neglect, self restraint
Whereby people die Too far off to practice love
For thy neighbour, brother Slav
Where your cherubs dread to fly people die

Chorus...

While the statues disagree
Cain's version, history for its fuel tends to buy
Those who die

As you watch the athletes score
Or check your latest statement
Or sing your child a lullaby people die

Time, whose sharp, bloodthirsty quill
Parts the killed from those who kill
Will pronounce the latter tribe
As your type.

2nd Version:

As you pour yourself a scotch,
crush a roach, or scratch your crotch,
as your hand adjusts your tie,
people die.
In the towns with funny names,
hit by bullets, caught in flames,
by and large not knowing why,
people die.
In small places you don't know
of, yet big for having no
chance to scream or say good-bye,
people die.
People die as you elect
brand-new dudes who preach neglect,
self-restraint, etc. –whereby
people die.
Too far off to practice love
for thy neighbor/brother Slav,
where your cherubs dread to fly,
people die.
While the statues disagree,
Cain's version, history
for its fuel tends to buy
those who die.
As you watch the athletes score,
check your latest statement, or
sing your child a lullaby,
people die.
Time, whose sharp bloodthirsty quill
parts the killed from those who kill,
will pronounce the latter band
as your brand.
")

# auden - more
auden = Author.find_by_name("Wystan Hugh Auden")
poem_a = Book.find_by_author_id(auden.id)

poem_209 = Poem.create(author_id: auden.id, book_id: poem_a.id, title: "Refugee Blues", content: "
Say this city has ten million souls,
Some are living in mansions, some are living in holes:
Yet there's no place for us, my dear, yet there's no place for us.

Once we had a country and we thought it fair,
Look in the atlas and you'll find it there:
We cannot go there now, my dear, we cannot go there now.

In the village churchyard there grows an old yew,
Every spring it blossoms anew:
Old passports can't do that, my dear, old passports can't do that.

The consul banged the table and said,
'If you've got no passport you're officially dead':
But we are still alive, my dear, but we are still alive.

Went to a committee; they offered me a chair;
Asked me politely to return next year:
But where shall we go to-day, my dear, but where shall we go to-day?

Came to a public meeting; the speaker got up and said;
'If we let them in, they will steal our daily bread':
He was talking of you and me, my dear, he was talking of you and me.

Thought I heard the thunder rumbling in the sky;
It was Hitler over Europe, saying, 'They must die':
O we were in his mind, my dear, O we were in his mind.

Saw a poodle in a jacket fastened with a pin,
Saw a door opened and a cat let in:
But they weren't German Jews, my dear, but they weren't German Jews.

Went down the harbour and stood upon the quay,
Saw the fish swimming as if they were free:
Only ten feet away, my dear, only ten feet away.

Walked through a wood, saw the birds in the trees;
They had no politicians and sang at their ease:
They weren't the human race, my dear, they weren't the human race.

Dreamed I saw a building with a thousand floors,
A thousand windows and a thousand doors:
Not one of them was ours, my dear, not one of them was ours.

Stood on a great plain in the falling snow;
Ten thousand soldiers marched to and fro:
Looking for you and me, my dear, looking for you and me.
")

poem_212 = Poem.create(author_id: auden.id, book_id: poem_a.id, title: "I Have No Gun,But I Can Spit", content: "
Some thirty inches from my nose
The frontier of my Person goes,
And all the untilled air between
Is private pagus or demesne.
Stranger, unless with bedroom eyes
I beckon you to fraternize,
Beware of rudely crossing it:
I have no gun, but I can spit.
")

poem_213 = Poem.create(author_id: auden.id, book_id: poem_a.id, title: "For What As Easy", content: "
For what as easy
For what thought small,
For what is well
Because between,
To you simply
From me I mean.

Who goes with who
The bedclothes say,
As I and you
Go kissed away,
The data given,
The senses even.

Fate is not late,
Nor the speech rewritten,
Nor one word forgotten,
Said at the start
About heart,
By heart, for heart.
")

poem_217 = Poem.create(author_id: auden.id, book_id: poem_a.id, title: "Autumn Song", content: "
    Now the leaves are falling fast,
    Nurse's flowers will not last;
    Nurses to the graves are gone,
    And the prams go rolling on.

    Whispering neighbours, left and right,
    Pluck us from the real delight;
    And the active hands must freeze
    Lonely on the separate knees.

    Dead in hundreds at the back
    Follow wooden in our track,
    Arms raised stiffly to reprove
    In false attitudes of love.

    Starving through the leafless wood
    Trolls run scolding for their food;
    And the nightingale is dumb,
    And the angel will not come.

    Cold, impossible, ahead
    Lifts the mountain's lovely head
    Whose white waterfall could bless
    Travellers in their last distress.
")

poem_225 = Poem.create(author_id: auden.id, book_id: poem_a.id, title: "This Lunar Beauty", content: "
This lunar beauty
Has no history
Is complete and early,
If beauty later
Bear any feature
It had a lover
And is another.

This like a dream
Keeps other time
And daytime is
The loss of this,
For time is inches
And the heart's changes
Where ghost has haunted
Lost and wanted.

But this was never
A ghost's endeavor
Nor finished this,
Was ghost at ease,
And till it pass
Love shall not near
The sweetness here
Nor sorrow take
His endless look.
")


# add more => rails c
1.times do
  author = Author.create(name: "Friedrich Nietzsche")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1844-1900")

  nums = [20799, 20800]
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Nietzsche done'
end

1.times do
  author = Author.create(name: "Edgar Allan Poe")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1809-1849")

  nums = (22531..22596).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Edgar Allan Poe done'
end

1.times do
  author = Author.create(name: "Vasko Popa")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1922-1991")

  nums = (22599..22630).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Vasko Popa done'
end

1.times do
  author = Author.create(name: "Charles Baudelaire")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1821-1867")

  nums = (2153..2194).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Charles Baudelaire done'
end

1.times do
  author = Author.create(name: "Sylvia Plath")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1932-1963")

  nums = (22229..22458).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Sylvia Plath done'
end

1.times do
  author = Author.create(name: "Walt Whitman")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1819-1892")

  nums = (33509..33838).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Walt Whitman done'
end

1.times do
  author = Author.create(name: "James Joyce")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1882-1941")

  nums = (14311..14361).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'James Joyce done'
end

1.times do
  author = Author.create(name: "Jalaluddin Rumi")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1207-1273")

  nums = (24351..24432).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Jalaluddin Rumi done'
end

1.times do
  author = Author.create(name: "Khalil Gibran")
  book = Book.create(author_id: author.id, title: "The Poems", year: "1883-1931")

  nums = (11000..11046).to_a
  nums.each do |num|
    url = "https://mypoeticside.com/show-classic-poem-#{num}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('h2.title-poem').each do |element|
      title = element.text.strip
      Poem.create!(author_id: author.id, book_id: book.id, title: title)
    end

    poem = Poem.last
    p "#{poem.title}"

    html_doc.search('.poem-entry#contentfont').each do |element|
      content = element.text.strip
      poem.update!(content: content)
    end
  end
  p 'Khalil Gibran done'
end

prevert = Author.create(name: "Jacques Prévert")
book_jp = Book.create(author_id: prevert.id, title: "The Poems", year: "1900-1977")

poem_jp1 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Alicante", content: "
  An orange on the table
  Your dress on the rug
  And you in my bed
  Sweet gift of the present
  Freshness of the night
  Warmth of my life
  ")

poem_jp2 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "This Love", content: "
This love
So violent
So fragile
So tender
So hopeless
This love
Beautiful as the day
And bad as the weather
When the weather is bad
This love so true
This love so beautiful
So happy
So joyous
And so pathetic
Trembling with fear like a child in the dark
And so sure of itself
Like a tranquil man in the middle of the night
This love that made others afraid
That made them speak
That made them go pale
This love intently watched
Because we intently watch it
Run down hurt trampled finished denied forgotten
Because we ran it down hurt it trampled
it finished it denied it forgot it
This whole entire love
Still so lively
And so sunny
It's yours
It's mine
That which has been
This always new thing
And which hasn't changed
As true as a plant
As trembling as a bird
As warm as live as summer
We can both of us
Come and go
We can forget
And then go back to sleep
Wake up suffer grow old
Go back to sleep again
Awake smile and laugh
And feel younger
Our love stays there
Stubborn as an ***
Lively as desire
Cruel as memory
Foolish as regrets
Tender as remembrance
Cold as marble
Beautiful as day
Fragile as a child
It watches us, smiling
And it speaks to us without saying a word
And me I listen to it, trembling
And I cry out
I cry out for you
I cry out for me
I beg you
For you for me for all who love each other
And who loved each other
Yes I cry out to it
For you for me and for all the others
That I don't know
Stay there
There where you are
There where you were in the past
Stay there
Don't move
Don't go away
We who loved each other
We've forgotten you
Don't forget us
We had only you on the earth
Don't let us become cold
Always so much farther away
And anywhere
Give us a sign of life
Much later on a dark night
In the forest of memory
Appear suddenly
Hold your hand out to us
And save us
")

poem_jp3 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "The Dunce", content: "
He says no with his head
but he says yes with his heart
he says yes to what he loves
he says no to the teacher
he stands
he is questioned
and all the problems are posed
sudden laughter seizes him
and he erases all
the words and figures
names and dates
sentences and snares
and despite the teacher's threats
to the jeers of infant prodigies
with chalk of every colour
on the blackboard of misfortune
he draws the face of happiness.
")

poem_jp4 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Autumn", content: "
A horse collapses in the middle of an alley
Leaves fall on him
Our love trembles
And the sun too.
")

poem_jp5 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Picasso's Promenade", content: "
On a very round plate of real porcelain
an apple poses
face to face with it
a painter of reality
vainly tries to paint
the apple as it is
but
the apple won't allow it
the apple
it has its word to say about it
and several tricks in its bag of apples
and there it is turning
on its real plate
artfully on itself
blandly without budging
and like a Duc de Guise who disguises himself as a gas duct
because they want to draw his portrait against his will
the apple disguises itself as a beautiful fruit in disguise
and it's then
that the painter of reality
begins to realize
that all the appearances of the apple are against him
and
like the unfortunate pauper
like the poor pauper who finds himself suddenly at the mercy
  of no matter what benevolent and charitable and redoubtable
  association of benevolence charity and redoubtability
the unfortunate painter of reality
then suddenly finds himself the sad prey
of a numberless crowd of associations of ideas
And the apple turning evokes the apple tree
the earthly Paradise and Eve and then Adam
a watering-can a trellis Parmentier a stairway
Canadian Hesperidian Norman apples Reinette apples and Appian apples
the serpent of the Tennis Court and the Oath of Apple Juice
and original sin
and the origins of art
and Switzerland with William Tell
and even Isaac Newton
several times prizewinner at the Exhibition of Universal Gravitation
and the dazed painter loses sight of his model
and falls asleep
It's just then that Picasso
who's going by there as he goes by everywhere
every day as if at home
sees the apple and the plate and the painter fallen asleep
What an idea to paint an apple
says Picasso
and Picasso eats the apple
and the apple tells him Thanks
and Picasso breaks the plate
and goes off smiling
and the painter drawn from his dreams
like a tooth
finds himself all alone again before his unfinished canvas
with right in the midst of his shattered china
the terrifying pips of reality.
")

poem_jp6 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Song", content: "
What day is it
It's everyday
My friend
It's all of life
My love
We love each other and we live
We live and love each other
And do not know what this life is
And do not know what this day is
And do not know what this love is
")

poem_jp7 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Paris At Night", content: "
Three matches one by one lit in the night
The first to see your whole face
The second to see your eyes
The last to see your mouth
And the whole darkness to remind me of it all
Hugging you

(translation version 2:
Three matches one by one struck in the night
The first to see your face in its entirety
The second to see your eyes
The last to see your mouth
And the darkness all around to remind me of all these
As I hold you in my arms.)
")

poem_jp8 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Breakfast", content: "
He put the coffee
In the Cup
He put the milk
In the coffee cup
He added the sugar
In the coffee with milk
With spoon
He turned
He drank the coffee with milk
And he based the cup
Without speaking to me
He lit up
A cigarette
He made circles
With the smoke
He put the ashes
In the ashtray
Without speaking to me
Without looking at me
He got up
He put
His hat on his head
He put
His raincoat
Because it was raining
And he left
Under the rain
Without a word
Without looking at me
And I took
My head in my hands
And I cried.
")

poem_jp9 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Barbara", content: "
Remember barbara
It was raining constantly on Brest that day
And you walked smiling
Radiant delighted free-flowing
Under the rain
Remember barbara
It was raining constantly on Brest
And I met you rue de Siam
You were smiling
And I was smiling the same
Remember barbara
You that I didn't know
You who didn't know me
Reminds you
Still remember that day
Do not forget
A man under a porch was sheltering
And he shouted your name
Barbara
And you ran to him in the rain
Dazzling delighted blossoming
And you threw yourself into his arms
Remember that Barbara
And don't hold it against me if I tu you
I tell you to everyone I love
Even if I only saw them once
I tell you to all those who love each other
Even if I don't know them
Remember barbara
Do not forget
This wise and happy rain
On your happy face
On this happy city
This rain on the sea
On the arsenal
On Ouessant's boat
Oh barbara
What bullshit war
What have you become now
Under this iron rain
Of blood steel fire
And whoever hugged you
Lovingly
Is he dead missing or still alive
Oh barbara
It's raining endlessly on Brest
As it was raining before
But it's not the same anymore and everything is damaged
It's a terrible and sorry rain of mourning
It's not even the storm anymore
Blood iron steel
Simply clouds
Who die like dogs
Dogs that disappear
Along the water on Brest
And will rot away
Far far away from Brest
Of which nothing remains.
")

poem_jp10 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "The Lord's Supper", content: "
They are at the table
They don't eat
They are not on their plate
And their plate stands straight
Vertically behind their heads.
")

poem_jp11 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Sunday", content: "
Between the rows of trees on avenue des Gobelins
A marble statue leads me by the hand
Today is Sunday the cinemas are full
Birds in the branches watch humans
And the statue kisses me but no one sees us
Except a blind child who points to us.
")

poem_jp12 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Pater Noster", content: "
Our Father in heaven
Stay there
And we will stay on earth
Who is sometimes so pretty
With its mysteries of New York
And then its mysteries of Paris
Who are worth that of the Trinity
With its small Ourcq canal
Its great wall of China
Its Morlaix river
His nonsense from Cambrai
With its Pacific Ocean
And its two pools at the Tuilleries
With his good children and his bad subjects
With all the wonders of the world
Who are there
Simply on earth
Available to everyone
Scattered
Amazed themselves to be such wonders
And who dare not admit it
Like a pretty naked girl who dares not show herself
With the appalling misfortunes of the world
Who are legion
With their legionaries
With their torturers
With the masters of this world
The masters with their priests their traitors and their reisters
With the seasons
With the years
With the pretty girls and with the old idiots
With the straw of misery rotting in the steel of the cannons.
")

poem_jp13 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "To do a bird's portrait", content: "
Paint a cage first
with an open door
then paint
something nice
something simple
something beautiful
something useful
for the bird
then place the canvas against a tree
in a garden
in a forest
or in a forest
hide behind the tree
without saying anything
without moving ...
Sometimes the bird arrives quickly
but it may as well take long years
before deciding
Do not be discouraged
wait
wait if necessary for years
the speed or the slowness of the arrival of the bird
having no relation
with the success of the painting
When the bird arrives
if he arrives
observe the deepest silence
wait for the bird to enter the cage
and when he entered
gently close the door with the brush
then
delete all the bars one by one
being careful not to touch any of the bird's feathers
Then make a portrait of the tree
by choosing the most beautiful of its branches
for the bird
also paint the green foliage and the freshness of the wind
the dust of the sun
and the sound of grass beasts in the heat of summer
and then wait until the bird decides to sing
If the bird does not sing
it's a bad sign
sign that the painting is bad
but if he sings it's a good sign
sign you can sign
So you gently tear off
one of the bird's feathers
and write your name in the corner of the board.
")

poem_jp14 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "The garden", content: "
Thousands and thousands of years
Not sufficient
To say
The little second of eternity
Where you kissed me
Where i kissed you
One morning in the winter light
At Parc Montsouris in Paris
In Paris
On the ground
The earth which is a star.
")

poem_jp15 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "First day", content: "
White sheets in a wardrobe
Red sheets in a bed
A child in his mother
His mother in pain
Father in the hallway
The hallway in the house
The house in the city
The city at night
Death in a cry
And the child in life.
")

poem_jp16 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Almost", content: "
In Fontainebleau
In front of the Aigle Noir hotel
There is a bull sculpted by Rosa Bonheur
A little further all around
There is the forest
And a little further
Pretty body
There is still the forest
And misfortune
And next to it happiness
Happiness with dark circles
Happiness with pine needles in the back
Happiness that thinks of nothing
Happiness like the bull
Sculpted by Rosa Bonheur
And then the misfortune
Misfortune with a gold watch
With a train to catch
The misfortune that thinks of everything ...
Asset
Everything ... everything ... everything ...
And at all
And who wins 'almost' every time
Almost.
")

poem_jp17 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "The Beautiful Season", content: "
Fasting frozen
All alone penniless
A sixteen year old girl
Standing still
Place de la Concorde
At noon on August 15th.
")

poem_jp18 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Huge And Red", content: "
Huge and red
Above the Grand Palace
The winter sun appears
And disappears
Like him my heart will disappear
And all my blood will go away
Go away looking for you
My love
My beauty
And find you
There where you are.
")

poem_jp19 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "The Red Horse", content: "
In the rides of the lie
The red horse of your smile
Turned
And I'm standing there planted
With the sad whip of reality
And I have nothing to say
Your smile is also true
Let my four truths.
")

poem_jp20 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "The Broken Mirror", content: "
The little man who kept singing
the little man who danced in my head
the little youth man
broke his shoe lace
and all the huts of the party
suddenly fell apart
and in the silence of this celebration
in the desert of this head
I heard your happy voice
your torn and fragile voice
childish and sorry
coming from afar and who called me
and i put my hand on my heart
where stirred
bloody
the seven pieces of ice from your starry laughter.
")

poem_jp21 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Quicksands", content: "
Demons and wonders
Winds and tides
Already far away the sea has retreated
Demons and wonders
Winds and tides
And you
Like an alga gently caressed by the wind
In the sands of the bed you stir while dreaming
Demons and wonders
Winds and tides
Already far away the sea has retreated
But in your half-open eyes
Two small waves remained
Demons and wonders
Winds and tides
Two little waves to drown me.
")

poem_jp22 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Despair Sits On A Bench", content: "
In a square on a bench
There is a man who calls you when we pass
He has binoculars an old gray suit
He smokes a little ninas he sits
And he calls you when we pass
Or just beckons you
Don't look at it
Don't listen to it
You have to pass
Pretend we don't see him
As if we didn't hear it
We must pass hurry
If you watch it
If you listen to it
He beckons you and nothing and nobody
Can't stop you from sitting next to him
So he looks at you and smiles
And you suffer excruciatingly
And the man keeps smiling
And you smile with the same smile
Exactly
The more you smile the more you suffer
Excruciatingly
The more you suffer the more you smile
Irremediably
And you stay there
Frozen sitting
Smiling on the bench
Children playing near you
Passers-by pass
Quietly
Birds fly away
Leaving a tree
For another
And you stay there
On the bench
And you know you know
That you will never play again
Like these kids
You know that you will never pass again
Quietly
Like these passers-by
Never again will you fly away
Leaving one tree for another
Like these birds.
")

poem_jp23 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "The School of Fine Arts", content: "
In a box of braided straw
Father chooses a small ball of paper
And he throws it away
In the bowl
In front of her intrigued children
Then arises
multicolour
The big Japanese flower
The instant water lily
And the children are silent
amazed
Never later in their memory
This flower cannot fade
This sudden flower
Made for them
Minute
In front of them.
")

poem_jp24 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "You will see what you will see", content: "
A naked girl swims in the sea
Bearded man walking on water
Where is the wonder of wonders
The miracle announced above?
")

poem_jp25 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Song In The Blood", content: "
There are large pools of blood on the world
where does all this spilled blood go
Is it the earth that drinks it and gets drunk
funny drunk then
so wise ... so monotonous ...
No the earth doesn't get drunk
the earth doesn't go wrong
she regularly pushes her toy car her four seasons
rain ... snow ...
hail ... good weather ...
she is never drunk
it barely allows itself from time to time
an unfortunate little volcano
She turns the earth
it turns with its trees ... its gardens ... its houses ...
she turns with her big pools of blood
and all living things turn with it and bleed ...
She doesn't care
Earth
it turns and all living things start to scream
she does not care
She turns
it doesn't stop spinning
and the blood keeps flowing ...
Where does all this spilled blood go
the blood of murders ... the blood of wars ...
the blood of misery ...
and the blood of men tortured in prisons ...
the blood of children quietly tortured by their mom and dad ...
and the blood of men who bleed from the head
in the sheds ...
and the roofer's blood
when the roofer slips and falls from the roof

The declared war
I took my courage
with two hands
and I strangled him.

The Minister of War:
I continue.
A destroyed hospital: ten, a hundred -
and I am modest -
can be rebuilt
And, the project adopted unanimously,
night has fallen,
the hospital jumped with some scraps from the neighborhood nearby.
Day breaks over the city
where laughter diminishes, dissipates and disappears.
Everything becomes serious again.
Life, like the stock market, resumes its course
and general mobilization continues in a normal fashion.

And the blood that comes and flows in great waves
with the newborn ... with the new child ...
the screaming mother ... the crying child ...
blood flows ... the earth turns
the earth keeps spinning
the blood keeps flowing
Where does all this spilled blood go
the blood of the batons ... of the humiliated ...
suicides ... shootings ... convicts ...
and the blood of those who die like that ... by accident.
In the street passes a living
with all his blood in it
suddenly he's dead
and all his blood is out
and the rest of the living make the blood disappear
they take away the body
but he is stubborn blood
and where the dead man was
much later all black
a little blood still spills ...
clotted blood
rust of life rust of bodies
blood curdled like milk
like milk when it turns
when it turns like the earth
like the spinning earth
with his milk ... with his cows ...
with his living ... with his dead ...
the earth that turns with its trees ... its living ... its houses ...
the earth that turns with weddings ...
burials ...
shells ...
regiments ...
the earth which turns and which turns and which turns
with its great streams of blood.
")

poem_jp26 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Osiris or the Flight into Egypt", content: "
It's war it's summer
The war is already summer
And the desolate isolated city
Smile smile again
Smile smile anyway
With her sweet summer look
Smile sweetly to those who love each other
It's war it's summer
A man with a woman
Walk in a deserted museum
This museum is the Louvre
This city is Paris
And the freshness of the world
Is there all asleep
A guard wakes up hearing the steps
Press a button and fall back into your dream
However that appears in its stone niche
The wonder of Egypt standing in its light
The statue of Osiris alive in the dead wood
Alive to kill again
All the dead idols of the churches of Paris
And the lovers kiss
Osiris marries them
And then go into the shadows
Of his living night.
")

poem_jp27 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Song of the Birder", content: "
The bird that flies so gently
The red bird, warm as blood
The tender bird the mocking bird
The bird that suddenly gets scared
The bird that suddenly knocks
The bird that wants to run away
The bird alone and panicked
The bird that would like to live
The bird that would like to sing
The bird that would cry
The red bird, warm as blood
The bird that flies so gently
It's your pretty child heart
Your heart beating so sadly
Against your breast so hard so white
")

poem_jp28 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Complaint Of The Shot", content: "
They pulled me out
pity
I was a bad target
the sky was so blue
They looked up
invoking their god
And whoever approached
only
without hurrying
just like them
a little bit pulled aside
next to the last spring
to the grace of the dead
At the grace of God.

They pulled me out
by the feet
and threw me in the cart of the dead
dead from the ranks
ranks in their lifetime
numbered
their living hostile to death
And I'm there near them
still living a little
killing the time of my pain
killing time as best I can.
")

poem_jp29 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Jailer's Song", content: "
Where are you going handsome jailer
With that blood stained key
I will deliver the one I love
If there is still time
And that I locked up
Tenderly cruelly
At the most secret of my desire
In the depths of my torment
In the lies of the future
In the nonsense of oaths
I want to deliver her
I want her to be free
And even to forget me
And even go away
And even come back
And still to love me
Or to love another
If another likes him
And if I stay alone
And she went
I will only keep
I will always keep
In my two hollow hands
Until the end of the days
The softness of her breasts shaped by love.
")

poem_jp30 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "The Wonders of Freedom", content: "
Between the teeth of a trap
The paw of a white fox
And blood on the snow
The blood of the white fox
And tracks in the snow
The tracks of the white fox
Who escapes on three legs
In the setting sun
With between his own teeth
A hare that is still alive
")

poem_jp31 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Vincent's Lament", content: "
At Arles where rolls the Rhone
In the atrocious midday light
A man of phosphor and blood
Gives a haunting groan
Like a woman giving birth
And the man flees howling
Pursued by the sun
A sun of strident yellow
To a ****house near the Rhone
The man comes like a christmas king
With his absurd present
He has the blue and gentle look
The true mad lucid look
Of those who give life everything
Of those who are not jealous
And shows the poor child
His ear couched in the cloth
And she cries without understanding anything
Imagining sad omens
And looks without daring to take
The frightful tender shell
In which the moans of dead love
And the inhuman voices of art
Mix with the murmurs of the sea
And die on the tiling
In the room where the red eiderdown
Of a sudden bursting red
Blends this red so red
With the much more redder blood
Of half-dead Vincent
And wise as the very image
Of misery and love
The nude child all alone and ageless
Looks upon poor Vincent
Stricken by his own storm
Which spreads on the tile
Onto his most beautiful painting
And the storm runs out indifferent
Rolling before it its great barrels of blood
The dazzling storm of Vincent's genius
And Vincent stays there sleeping waking croaking
And the sun over the ****house
Like a mad orange in a nameless desert
The sun on Arles
Howling turns around.
")

poem_jp32 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Quartier Libre", content: "
I put my cap in the cage
and went out with the bird on my head
So
one no longer salutes
asked the commanding officer
No
one no longer salutes
replied the bird
Ah good
excuse me I thought one saluted
said the commaning officer
You are fully excused everybody makes mistakes
said the bird.
")

poem_jp33 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "In Vain", content: "
An old man howling at death
rolls his hoop across the square
He cries that it's winter and all is done
that the match is rigged the dice are thrown
the bets are made the mass is sung
the piece is played and the curtain down
In vain
in vain
They call me, those friends who can't stand me
they're running to fast and they stand watch in hand
asking me questions they don't understand
In vain
in vain
Others more dead than alive walking blind
trailing their childhood dreams behind
And those well-tailored clubmen
bore you to tears with political fears
that the country's in danger the course is run
the statue's of clay the time has come...
Already I hear at the foot of the square
the roll of the muffled drum
the bugle is blowing the garden is closing
In vain
in vain
For those who loved it the garden stays open
")

poem_jp34 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Children who love each other", content: "
The children who love each other kiss
leaning on the gates of the night
And the passers-by walk by and point fingers at them,
but the children who love each other
are not to be disturbed,
and it's only their shadow
that shivers in the night,
stirring the rage of the passers-by,
their rage, their scorn, their laughs and their envy.
The children who love each other are not to be disturbed,
they are elsewhere, far beyond the night,
far above the day,
basking in the light of their first love.
")

poem_jp35 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "I Am What I Am", content: "
I am what I am
I’m made that way
When I want to laugh
Yes I erupt with laughter
I love the one that loves me
Is it my fault
If it’s not the same one
That I love each time
I am what I am
I’m made that way
What more do you want
What do you want from me

I’m made for pleasure
And nothing can change that
My heels are too high
My figure too curved
My breasts way too firm
And my eyes too darkly ringed
And then afterwards
What can you do about it
I am what I am
I please who I please

What can you do about it
What happened to me
Yes I loved someone
Yes someone loved me
Like children love each other
Simply knowing how to love
Love love…
Why ask me
I’m here for your pleasure
And nothing can change that.
")

poem_jp36 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "For You, My Love", content: "
I went to the market of birds
And I bought birds
For you
My love

I went to the market of flowers
And I bought flowers
For you
My love

I went to the market of ironwork
And I bought chains
Heavy chains
For you
My love

And then I went to the market of slaves
And I looked for you
But I did not find you there
My love
")

poem_jp37 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Adrian", content: "
Adrian don’t be difficult!
Come back!

The snowball
you threw at me
last winter
at Chamonix
I have kept
It is on the mantelpiece
by the bridal wreath
of fire my poor mother
who died murdered
by my late father
who died guillotined
one sad winter’s morning
or was it spring …

Adrian don’t be difficult!
Come back!

I have made mistakes I admit
I remained ages
without returning
to the house
But I always hid from you
that I was in prison!
I have made mistakes I admit
I often beat the dog
but I loved you!

Adrian don’t be difficult!
Come back!

And Brin d’osier
your little fox-terrier
who died
last week
I kept him!
He is in the fridge
and when from time to time I open the door
to get a beer
I see the poor dead creature
it disheartens me
And yet it was I who did it
one evening to pass the time
while waiting for you …

Adrian don’t be difficult!
Come back!

I threw myself off
the Saint Jacques Tower
the day before yesterday
I killed myself
because of you
Yesterday they buried me
in a pretty little cemetary
and I thought of you
And this evening I came back
to the apartment
where you wandered round naked
when I was alive
and I am waiting for you …

Adrian don’t be difficult!
Come back!

I have made mistakes I admit
I remained ages
without returning to the house
But I always hid from you
that I was in prison!
I have made mistakes I admit
I often beat the dog
but I loved you!

Adrian don’t be difficult!
Come back!
")

poem_jp38 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "Birdwatcher’s Song", content: "
The bird that flies so gently
The bird red and warm as blood
The bird so soft the bird that mimics
The bird who is suddenly afraid
The bird who suddenly hits himself
The bird who would like to fly away
The bird panicked and alone
The bird who would like to live
The bird who would like to sing
The bird who would like to cry out
The bird red and warm as blood
The bird who flies so gently
It’s your heart pretty child
Your heart that beats its wings so sadly
Against your breast so strong so white.
")

poem_jp39 = Poem.create!(author_id: prevert.id, book_id: book_jp.id, title: "And The Party Continues", content: "
Standing in front of the bar
At the stroke of 10 o’ clock
A great barfly plumber
Dressed for Sunday even though it’s Monday
Sings for himself all alone
Sings that it’s Friday
That he won’t go to class
That the war is over
And work as well
That life is so beautiful
And the girls so pretty
And stumbling in front of the bar
But guided by his plumb-bob
He stops right in front of the bartender
Three peasants will come by and they will pay you
Then disappears into the sun
Without settling up for the check
Disappearing into the sun all the while continuing his song.
")

p "seed done! #{Poem.count}"

p "start cleaning"

Poem.destroy_by(content: "")

p "done #{Poem.count}"

