One Manga Downloader (shell script)
------------------
------------------

### **Description**:
**One Manga Downloader** is a [Bash](http://www.gnu.org/software/bash/ "Bash Website") script which allow you to download Manga from OneManga to compressed archive files.

- Supported Archives: rar, zip, 7z, tar
- Basic Logging - Time and Date of Filename Downloaded
- Supports OneManga.com and 1000Manga.com

### **Requirements**:
#### List of prerequisites:

	awk, grep, sed (GNU versions recommended, not tested on non-GNU versions, for file-processing.)
	bc (CLI Calculator for the meter bar)
    GNU bash (That's I'm sure everyone has that, well if not most. Tested on Bash 3.0.0 to 4.1.5)
	GNU coreutils (I'm sure everyone has that on their *nix-based systems)
	cURL (Used for downloading)
	rar (Needed to compress .cbr)
	zip (Needed to compress .cbz)
	p7z (Needed to compress .cb7)
	tar (Needed to compress .cbt, but I'm sure everyone has that on their *nix-based systems, again GNU version recommended)

#### To check for prerequisites:

    $ onemanga -p

### **Instructions of Installation**:
#### In the current directory, execute either one of the following lines:

	$ install -m755 onemanga /usr/bin

or

	$ cp onemanga /usr/bin/ && chmod 755 /usr/bin/onemanga

### **Instructions of Usage**:
#### Example to Download in rar, zip, 7z, tar of Mirai Nikki Chapter 1 to 52:

	$ onemanga -rz7t -c 1-52 Mirai_Nikki

The above command will download files named from Mirai_Nikki_01 to Mirai_Nikki_52 in .cbr, cbz, cb7 and cbt.

#### Same as above example with logging:

	$ onemanga -orz7t -c 1-52 Mirai_Nikki

The above command will download files named from Mirai_Nikki_01 to Mirai_Nikki_52 in .cbr, cbz, cb7 and cbt with a logfile named onemanga.log containing the time all the files was compressed.

#### Same as above with option to specify custom log filename:

    $ onemanga -rz7tf MiraiNikki.log -c 1-52 Mirai_Nikki

The above command will download files named from Mirai_Nikki_01 to Mirai_Nikki_52 in .cbr, cbz, cb7 and cbt with a logfile named MiraiNikki.log instead of onemanga.log containing the time all the files was compressed.

#### Example to Download Manga to their own directory:

	$ onemanga -l -c 1-52 Mirai_Nikki

The above command will download Mirai_Nikki chapters 1 to 52 into directory named Mirai_Nikki. If the directory does not exist, it will be created.

#### Example to search OneManga for the keyword "Mirai"

	$ onemanga -s Mirai

The above command should give an output like below:

	Searching http://www.onemanga.com/directory...

	Future Diary	(Mirai_Nikki)
	Mirai Nikki	(Mirai_Nikki)
	Mirai Nikki - Mosaic	(Mirai_Nikki_-_Mosaic)
	Mirai Nikki - Paradox	(Mirai_Nikki_-_Paradox)

	4 results.

#### Explaination of options (wdlorz7tpsfc):

	w for OMWEB display compatability mode (Nothing much you would need to use except when using OMWEB)
	d for downloading mangas to their own directory
	l for downloading only the latest chapter of the manga
	o for enabling logging function
	r for downloading manga in cbr (rar - default if no compression formats specified)
	z for downloading manga in cbz (zip)
	7 for downloading manga in cb7 (7zip)
	t for downloading manga in cbt (tar)
    p for checking prerequisites required to run onemanga
	s for searching OneManga for defined keyword
    f for specifying a custom log filename, same with o except with a custom log filename
	c for specifying chapters to download (etc -c 1-52 for Chapters 1 to 52)

### **onemanga Web Interface (Optional)**:
#### Description:

I've coded a PHP web interface for the onemanga shell script. It is available [here](http://github.com/yumileroy/omweb/ "OMWEB"). Feel free to fork it on Github and modify it as you like, the code is rather unpolished and messy, would be nice if someone forked it on Github and tidied it up. Any ideas on how to further improve the web interface would be gladly considered. 

#### Installation:

To use the PHP script, just upload it to a web-accessible directory on your web server, and make sure that onemanga is located in a directory located in the SYSTEM PATH variable like /usr/bin.

#### Demo:

An demo of the script running is [here](http://yuminanako.info/omweb/ "Yumi OMWEB Demo").

### **Authors**:

Original Author was [**Suksit**](http://suksit.com/ "Suksit"), this is a fork by [**Yumi Nanako**](mailto:yuminanako@yuminanako.info "Yumi Nanako E-mail") and [**Leroy Lim**](mailto:leroylim@yuminanako.info "Leroy Lim E-mail").
It is currently maintained by [**Yumi Nanako**](mailto:yuminanako@yuminanako.info "Yumi Nanako E-mail")
