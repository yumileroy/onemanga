One Manga Downloader (shell script)
------------------
------------------

### **Description**:
**One Manga Downloader** is a [Bash](http://www.gnu.org/software/bash/ "Bash Website") script which allow you to download Manga from OneManga to compressed archive files.

- Supported Archives: rar, zip, 7z, tar
- Basic Logging - Time and Date of Filename Downloaded
- Supports OneManga.com and 1000Manga.com

###**Requirements**:

	awk, grep, sed (GNU versions recommended, not tested on non-GNU versions, for file-processing.)
	bc (CLI Calculator for the meter bar)
	GNU coreutils (I'm sure everyone has that on their *nix-based systems)
	GNU wget (Used for downloading)
	rar (Needed to compress .cbr)
	zip (Needed to compress .cbz)
	p7z (Needed to compress .cb7)
	tar (Needed to compress .cbt, but I'm sure everyone has that on their *nix-based systems, again GNU version recommended)

###**Instructions of Installation**:
In the current directory, execute either one of the following lines:

	install -m755 onemanga /usr/bin
	cp onemanga /usr/bin/ && chmod 755 /usr/bin/onemanga

###**Instructions of Usage**:

#### Example to Download in rar, zip, 7z, tar of Mirai Nikki Chapter 1 to 52:

	onemanga -rz7t -c 1-52 Mirai_Nikki

#### Same as above example with logging:

	onemanga -orz7t -c 1-52 Mirai_Nikki

#### Explaination of options (wdlorz7tsc):
	w for OMWEB display compatability mode (Nothing much you would need to use)
	d for using directory (Not too sure what it is for)
	l for downloading only the latest chapter of the manga
	o for enabling logging function
	r for downloading manga in cbr (rar - default if no compression formats specified)
	z for downloading manga in cbz (zip)
	7 for downloading manga in cb7 (7zip)
	t for downloading manga in cbt (tar)
	c for specifying chapters to download (etc -c 1-52 for Chapters 1 to 52)

### **Authors**:
Original Author was [**Suksit**](http://suksit.com/ "Suksit"), this is a fork by [**Yumi Nanako**](mailto:yuminanako@yuminanako.info "Yumi Nanako E-mail") and [**Leroy Lim**](mailto:leroylim@yuminanako.info "Leroy Lim E-mail").
It is currently maintained by [**Yumi Nanako**](mailto:yuminanako@yuminanako.info "Yumi Nanako E-mail")
