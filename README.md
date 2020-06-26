# SearchSploit_Helper
SearchSploit_Helper executes a search on ExploitDB's SearchSploit, then downloads all exploits returned from the search to a local directory, saving time during penetration testing.

## Usage:

Clone repository:
```
git clone https://github.com/rhuss623/SearchSploit_Helper.git
```

Change permissions:
```
cd SearchSploit_Helper
chmod u+x searchsploit_helper.sh
```

Perform searches:
```
e.g. ./searchsploit_helper.sh filezilla
```

Exploits are downloaded to a new directory named after the first argument:
```
$ cd filezilla
$ ls
1336.cpp  26220.c  2901.php  2914.php  37286.py  37729.py  39803.txt
```


### Usage suggestion:

I have personally added the following line to .bash_aliases:
```
alias searchsploit_helper='cp ~/SearchSploit_Helper/searchsploit_helper.sh .'
```
This allows me to quickly copy SearchSploit_Helper to my current directory with ease, ensuring that I have quick access to the exploits I've downloaded.

Don't forget to re-source .bashrc after adding a new bash alias:
```
. ~/.bashrc
```
