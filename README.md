# hashids-pharo
A Smalltalk implementation of Ivan Akimov's Hashids to obsfuscate internal ids and references 

[http://hashids.org](http://hashids.org)

## What is it?

hashids (Hash ID's) creates short, unique, decodable hashes from unsigned integers.

_(NOTE: This is **NOT** a true cryptographic hash, since it is reversible)_

It was designed for websites to use in URL shortening, tracking stuff, or
making pages private (or at least unguessable).

This algorithm tries to satisfy the following requirements:

1. Hashes must be unique and decodable.
2. They should be able to contain more than one integer (so you can use them in complex or clustered systems).
3. You should be able to specify minimum hash length.
4. Hashes should not contain basic English curse words (since they are meant to appear in public places - like the URL).

Instead of showing items as `1`, `2`, or `3`, you could show them as `jR`, `k5`, and `l5`.
You don't have to store these hashes in the database, but can encode + decode on the fly.

All integers need to be greater than or equal to zero.

## Usage

### Encoding one number

You can pass a unique salt value so your hashes differ from everyone else's.
Here use **this is my salt** as an example.

```smalltalk
| hasher|
hasher := HidHasher newSalt: 'this is my salt'.
hasher encode: 12345 
```

`hash` is now going to be:

    NkK9

### Decoding

Notice during decoding, same salt value is used:

```smalltalk
| hasher|
hasher := HidHasher newSalt: 'this is my salt'.
hasher decode: 'NkK9'
```

This will now decode back to:

    12345



### Encoding several numbers
You can encode a collection  of numbers too...

```smalltalk
| hasher|
hasher := HidHasher newSalt: 'this is my salt'.
hasher encode: #(683 94108 123 5)
hash = hashids.encode(683, 94108, 123, 5)
```

`hash` is now going to be:

    'aBMswoO2UB3Sj'

### Decoding is done the same way

```smalltalk
| hasher|
hasher := HidHasher newSalt: 'this is my salt'.
hasher decode: 'aBMswoO2UB3Sj')
```

`numbers` is now going to be:

    an OrderedCollection(683 94108 123 5)

NB. Uless the result is a single value decode will return an Ordered collection. 
If you want to avoid the type changing you can use HidHasher>>decodeCollection: 
which will guarantee to return a collection even if i just contains 1 element.

### Encoding and specifying minimum hash length
In the examples above no value has been specified for the minimum hash length so it 
will be as short as possible.  To prevent small number having a short hash you can 
specify the minimum hash length for the HidHasher

Here we encode integer 1, and set the minimum hash length to **8**

```smalltalk
| hasher|
hasher := HidHasher newSalt: 'this is my salt' minHashLength: 8.
hasher encode: 1 
```

`hash` is now going to be:

    gB0NV05e

### Decoding with minimum hash length

```ruby
| hasher|
hasher := HidHasher newSalt: 'this is my salt' minHashLength: 8.
hasher decode: 'gB0NV05e' 
```

which gives:

    1 

### Specifying custom hash alphabet

by default the alphabet (list of allowed characters) in a hash are...
'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'.

If you wanted to change the allowed character then you can do so like this...

Here we set the alphabet to consist of: "abcdefghijkABCDEFGHIJK12345"

```smalltalk
| hasher|
hasher := HidHasher newSalt: 'this is my salt' minHashLength: 8 alphabet: 'abcdefghijkABCDEFGHIJK1234'.
hasher encode: #(1 2 3 4 5) 
```

`hash` is now going to be:

    EdHauDhat3

## Randomness

The primary purpose of hashids is to obfuscate ids. It's not meant or tested to be used for security purposes or compression.
Having said that, this algorithm does try to make these hashes unguessable and unpredictable:

### Repeating numbers

```smalltalk
| hasher|
hasher := HidHasher newSalt: 'this is my salt'.
hasher encode: #(5 5 5 5) 
```

You don't see any repeating patterns that might show there's 4 identical numbers in the hash:

    1Wc8cwcE

Same with incremented numbers:

```smalltalk
| hasher|
hasher := HidHasher newSalt: 'this is my salt'.
hasher encode: #(1 2 3 4 5 6 7 8 9 10) 
```

`hash` is now going to be:

    'kRHnurhptKcjIDTWC3sx'

### Incrementing number ids:
It's also not apparent that simple incremets are occurring

```smalltalk
| hasher|
hasher := HidHasher newSalt: 'this is my salt' minHashLength: 6.
1 to: 10 do: [ :count |
	Transcript 
	  show: (count printString, ' -> ', (hasher encode: count));
	  cr ]
```
results in...
  
    1 -> B0NV05
    2 -> LA6m0o
    3 -> bAyD0L
    4 -> EG2lAR
    5 -> Z0rDdo
    6 -> 4GlvA8
    7 -> Mdjvdr
    8 -> 8AD1dO
    9 -> 6GQgAy
    10 -> M0aWdb

### Encoding using a HEX string

You can also encode and decode Hex Strings

```smalltalk
| hasher|
hasher := HidHasher newSalt: 'this is my salt'.
hasher encodeHex: 'DEADBEEF'

```

`hash` is now going to be:

    zEMBllj

### Decoding to a HEX string

```smalltalk
| hasher|
hasher := HidHasher newSalt: 'this is my salt'.
hasher decodeHex: 'zEMBllj'
```

which gets us back to:

    DEADBEEF

## License

MIT License. See the `LICENSE.txt` file.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
