
/*
	this table is to simplify the chains in the compiler.
	the compiler uses the chan value to make list,
	we resolve them to thier own table for simple processing.
*/

INSERT INTO ChainedNodes ( firstnode, object, position) VALUES ( ?, ?, ? ): '10783543825069577167', '10783543825069577167', '1'

CREATE TABLE  `introspector`.`Statements17546201007601059027` (
  `Subject` bigint(20) unsigned NOT NULL,
  `Predicate` bigint(20) unsigned NOT NULL,
  `Object` bigint(20) unsigned NOT NULL,
  `Context` bigint(20) unsigned NOT NULL,
  KEY `Context` (`Context`),
  KEY `SubjectPredicate` (`Subject`,`Predicate`),
  KEY `PredicateObject` (`Predicate`,`Object`),
  KEY `ObjectSubject` (`Object`,`Subject`),
  KEY `subject_index` (`Subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=100000000 AVG_ROW_LENGTH=33 DELAY_KEY_WRITE=1


drop TABLE  `introspector`.`ChainedNodes`;


CREATE TABLE  `introspector`.`ChainedNodes` (
  `FirstNode` bigint(20) unsigned NOT NULL COMMENT 'the first node in the chain',
  `Position` int(11) unsigned NOT NULL COMMENT 'The position in the list',
  `Object` bigint(20) unsigned NOT NULL COMMENT 'The object in the list, including the first node for simplicity.',
  PRIMARY KEY (`FirstNode`,`Position`,`Object`) USING BTREE,
  KEY `FirstNode` (`FirstNode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8

