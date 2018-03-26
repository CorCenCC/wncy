-- WNCY database schema
--

-- Copyright (c) 2018, Steve Neale 
-- All rights reserved.

--
-- 'words' table
--

DROP TABLE IF EXISTS words;

CREATE TABLE words (
  id int(11) unsigned auto_increment,
  wn31_id int(11),
  word varchar(255),
  PRIMARY KEY (id)
) DEFAULT CHARSET=utf8;

--
-- 'word_sources' table
--

DROP TABLE IF EXISTS word_sources;

CREATE TABLE word_sources (
  word_id int(11) unsigned DEFAULT NULL,
  source varchar(255) DEFAULT NULL
) DEFAULT CHARSET=utf8;

--
-- 'senses' table
--

DROP TABLE IF EXISTS senses;

CREATE TABLE senses (
  wordid int(11) unsigned NOT NULL DEFAULT 0,
  synsetid int(11) unsigned NOT NULL DEFAULT 0,
  senseid int(11) unsigned DEFAULT NULL,
  sensenum int(11) unsigned NOT NULL DEFAULT 0,
  lexid int(11) unsigned NOT NULL DEFAULT 0,
  tagcount int(11) unsigned DEFAULT NULL,
  sensekey varchar(255) DEFAULT NULL,
  PRIMARY KEY (wordid, synsetid)
) DEFAULT CHARSET=utf8;

--
-- 'synsets' table
--

DROP TABLE IF EXISTS synsets;

CREATE TABLE synsets (
  synsetid int(11) unsigned NOT NULL DEFAULT 0,
  pos enum('n','v','a','r','s') NOT NULL,
  lexdomainid int(11) unsigned NOT NULL DEFAULT 0,
  definition mediumtext DEFAULT NULL,
  PRIMARY KEY (synsetid)
) DEFAULT CHARSET=utf8;

--
-- 'linktypes' table
--

DROP TABLE IF EXISTS linktypes;

CREATE TABLE linktypes (
  linkid int(11) unsigned NOT NULL DEFAULT 0,
  link varchar(255) DEFAULT NULL,
  recurses int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (linkid)
) DEFAULT CHARSET=utf8;

--
-- 'semlinks' table
--

DROP TABLE IF EXISTS semlinks;

CREATE TABLE semlinks (
  synset1id int(11) unsigned NOT NULL DEFAULT 0,
  synset2id int(11) unsigned NOT NULL DEFAULT 0,
  linkid int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (synset1id, synset2id, linkid)
) DEFAULT CHARSET=utf8;

--
-- 'lexlinks' table
--

DROP TABLE IF EXISTS lexlinks;

CREATE TABLE lexlinks (
  synset1id int(11) unsigned NOT NULL DEFAULT 0,
  word1id int(11) unsigned NOT NULL DEFAULT 0,
  synset2id int(11) unsigned NOT NULL DEFAULT 0,
  word2id int(11) unsigned NOT NULL DEFAULT 0,
  linkid int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (synset1id, word1id, synset2id, word2id, linkid)
) DEFAULT CHARSET=utf8;

--
-- 'lexdomains' table
--

DROP TABLE IF EXISTS lexdomains;

CREATE TABLE lexdomains (
  lexdomainid int(11) unsigned NOT NULL DEFAULT 0,
  lexdomainname varchar(255) DEFAULT NULL,
  lexdomain varchar(255) DEFAULT NULL,
  pos enum('n','v','a','r','s') DEFAULT NULL,
  PRIMARY KEY (lexdomainid)
) DEFAULT CHARSET=utf8;