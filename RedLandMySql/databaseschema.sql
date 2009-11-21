-- MySQL dump 10.13  Distrib 5.1.37, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: introspector
-- ------------------------------------------------------
-- Server version	5.1.37-1ubuntu5

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Bnodes`
--

DROP TABLE IF EXISTS `Bnodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bnodes` (
  `ID` bigint(20) unsigned NOT NULL,
  `Name` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=100000000 AVG_ROW_LENGTH=33 DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ChainedNodes`
--

DROP TABLE IF EXISTS `ChainedNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChainedNodes` (
  `FirstNode` bigint(20) unsigned NOT NULL COMMENT 'the first node in the chain',
  `Position` int(11) unsigned NOT NULL COMMENT 'The position in the list',
  `Object` bigint(20) unsigned NOT NULL COMMENT 'The object in the list, including the first node for simplicity.',
  PRIMARY KEY (`FirstNode`,`Position`,`Object`) USING BTREE,
  KEY `FirstNode` (`FirstNode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `ChainedStatements`
--

DROP TABLE IF EXISTS `ChainedStatements`;
/*!50001 DROP VIEW IF EXISTS `ChainedStatements`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ChainedStatements` (
  `Subject` bigint(20) unsigned,
  `Predicate` bigint(20) unsigned,
  `Object` bigint(20) unsigned,
  `Context` bigint(20) unsigned
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ChainedStatementsStop`
--

DROP TABLE IF EXISTS `ChainedStatementsStop`;
/*!50001 DROP VIEW IF EXISTS `ChainedStatementsStop`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ChainedStatementsStop` (
  `Subject` bigint(20) unsigned,
  `Predicate` bigint(20) unsigned,
  `Object` bigint(20) unsigned,
  `Context` bigint(20) unsigned
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `DataTypePredicates`
--

DROP TABLE IF EXISTS `DataTypePredicates`;
/*!50001 DROP VIEW IF EXISTS `DataTypePredicates`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `DataTypePredicates` (
  `URI` text
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `DistinctPredicate`
--

DROP TABLE IF EXISTS `DistinctPredicate`;
/*!50001 DROP VIEW IF EXISTS `DistinctPredicate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `DistinctPredicate` (
  `URI` text
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `InterestingURI`
--

DROP TABLE IF EXISTS `InterestingURI`;
/*!50001 DROP VIEW IF EXISTS `InterestingURI`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `InterestingURI` (
  `ID` bigint(20) unsigned,
  `URI` text
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Literals`
--

DROP TABLE IF EXISTS `Literals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Literals` (
  `ID` bigint(20) unsigned NOT NULL,
  `Value` longtext NOT NULL,
  `Language` text NOT NULL,
  `Datatype` text NOT NULL,
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `Value` (`Value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=100000000 AVG_ROW_LENGTH=44 DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Models`
--

DROP TABLE IF EXISTS `Models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Models` (
  `ID` bigint(20) unsigned NOT NULL,
  `Name` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `NodesAndTypes`
--

DROP TABLE IF EXISTS `NodesAndTypes`;
/*!50001 DROP VIEW IF EXISTS `NodesAndTypes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `NodesAndTypes` (
  `Subject` bigint(20) unsigned,
  `Predicate` bigint(20) unsigned,
  `Object` bigint(20) unsigned,
  `Context` bigint(20) unsigned
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `OWL_RESOURCE`
--

DROP TABLE IF EXISTS `OWL_RESOURCE`;
/*!50001 DROP VIEW IF EXISTS `OWL_RESOURCE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `OWL_RESOURCE` (
  `ID` bigint(20) unsigned,
  `uri` text,
  `subject_uri` text,
  `predicate_uri` text,
  `object_uri` text,
  `subject_id` bigint(20) unsigned,
  `predicate_id` bigint(20) unsigned,
  `object_id` bigint(20) unsigned
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `OWL_TYPE_PREDICATES`
--

DROP TABLE IF EXISTS `OWL_TYPE_PREDICATES`;
/*!50001 DROP VIEW IF EXISTS `OWL_TYPE_PREDICATES`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `OWL_TYPE_PREDICATES` (
  `CountObjects` bigint(21),
  `subject_uri` text,
  `predicate_uri` text,
  `object_uri` text,
  `subject_id` bigint(20) unsigned,
  `predicate_id` bigint(20) unsigned,
  `object_id` bigint(20) unsigned
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `OWL_TYPE_PREDICATES_VIEW`
--

DROP TABLE IF EXISTS `OWL_TYPE_PREDICATES_VIEW`;
/*!50001 DROP VIEW IF EXISTS `OWL_TYPE_PREDICATES_VIEW`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `OWL_TYPE_PREDICATES_VIEW` (
  `substring(subject_uri,length(subject_uri)-15)` longtext,
  `substring(predicate_uri,length(predicate_uri)-15)` longtext,
  `substring(object_uri,length(object_uri)-15)` longtext,
  `CountObjects` bigint(21),
  `subject_id` bigint(20) unsigned,
  `object_id` bigint(20) unsigned,
  `predicate_id` bigint(20) unsigned
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Resources`
--

DROP TABLE IF EXISTS `Resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Resources` (
  `ID` bigint(20) unsigned NOT NULL,
  `URI` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=100000000 AVG_ROW_LENGTH=63 DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Statements17546201007601059027`
--

DROP TABLE IF EXISTS `Statements17546201007601059027`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Statements17546201007601059027` (
  `Subject` bigint(20) unsigned NOT NULL,
  `Predicate` bigint(20) unsigned NOT NULL,
  `Object` bigint(20) unsigned NOT NULL,
  `Context` bigint(20) unsigned NOT NULL,
  KEY `Context` (`Context`),
  KEY `SubjectPredicate` (`Subject`,`Predicate`),
  KEY `PredicateObject` (`Predicate`,`Object`),
  KEY `ObjectSubject` (`Object`,`Subject`),
  KEY `subject_index` (`Subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=100000000 AVG_ROW_LENGTH=33 DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `ChainedStatements`
--

/*!50001 DROP TABLE `ChainedStatements`*/;
/*!50001 DROP VIEW IF EXISTS `ChainedStatements`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ChainedStatements` AS select `S`.`Subject` AS `Subject`,`S`.`Predicate` AS `Predicate`,`S`.`Object` AS `Object`,`S`.`Context` AS `Context` from `Statements17546201007601059027` `S` where (`S`.`Predicate` = 4114558830764260770) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ChainedStatementsStop`
--

/*!50001 DROP TABLE `ChainedStatementsStop`*/;
/*!50001 DROP VIEW IF EXISTS `ChainedStatementsStop`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ChainedStatementsStop` AS select `a`.`Subject` AS `Subject`,`a`.`Predicate` AS `Predicate`,`a`.`Object` AS `Object`,`a`.`Context` AS `Context` from `ChainedStatements` `a` where (not(`a`.`Object` in (select `ChainedStatements`.`Subject` AS `subject` from `ChainedStatements`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DataTypePredicates`
--

/*!50001 DROP TABLE `DataTypePredicates`*/;
/*!50001 DROP VIEW IF EXISTS `DataTypePredicates`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `DataTypePredicates` AS select `Resources`.`URI` AS `URI` from ((`Statements17546201007601059027` join `Resources`) join `Literals`) where ((`Literals`.`ID` = `Statements17546201007601059027`.`Object`) and (`Resources`.`ID` = `Statements17546201007601059027`.`Predicate`)) group by `Resources`.`URI` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DistinctPredicate`
--

/*!50001 DROP TABLE `DistinctPredicate`*/;
/*!50001 DROP VIEW IF EXISTS `DistinctPredicate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `DistinctPredicate` AS select distinct `InterestingURI`.`URI` AS `URI` from (`InterestingURI` join `Statements17546201007601059027`) where (`InterestingURI`.`ID` = `Statements17546201007601059027`.`Predicate`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `InterestingURI`
--

/*!50001 DROP TABLE `InterestingURI`*/;
/*!50001 DROP VIEW IF EXISTS `InterestingURI`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `InterestingURI` AS select `Resources`.`ID` AS `ID`,`Resources`.`URI` AS `URI` from `Resources` where ((not((`Resources`.`URI` like 'http://introspector.sf.net/2003/08/16/introspector.owl#id-%'))) and (not((`Resources`.`URI` like 'http://introspector.sf.net/2003/08/16/introspector.owl#filename%'))) and (`Resources`.`URI` like 'http://introspector.sf.net/2003/08/16/introspector.owl#%')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `NodesAndTypes`
--

/*!50001 DROP TABLE `NodesAndTypes`*/;
/*!50001 DROP VIEW IF EXISTS `NodesAndTypes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `NodesAndTypes` AS select `Statements17546201007601059027`.`Subject` AS `Subject`,`Statements17546201007601059027`.`Predicate` AS `Predicate`,`Statements17546201007601059027`.`Object` AS `Object`,`Statements17546201007601059027`.`Context` AS `Context` from `Statements17546201007601059027` where (`Statements17546201007601059027`.`Predicate` = 9656206768310202721) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OWL_RESOURCE`
--

/*!50001 DROP TABLE `OWL_RESOURCE`*/;
/*!50001 DROP VIEW IF EXISTS `OWL_RESOURCE`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `OWL_RESOURCE` AS select `me`.`ID` AS `ID`,`me`.`URI` AS `uri`,`subj_type`.`URI` AS `subject_uri`,`pred`.`URI` AS `predicate_uri`,`obj_type`.`URI` AS `object_uri`,`subj_type`.`ID` AS `subject_id`,`pred`.`ID` AS `predicate_id`,`obj_type`.`ID` AS `object_id` from (((((((`Resources` `me` join `Statements17546201007601059027` `S`) join `Statements17546201007601059027` `Sobj`) join `Statements17546201007601059027` `Ssubj`) join `Resources` `pred`) join `Resources` `obj`) join `Resources` `obj_type`) join `Resources` `subj_type`) where ((`S`.`Subject` = `me`.`ID`) and (`pred`.`ID` = `S`.`Predicate`) and (`obj`.`ID` = `S`.`Object`) and (`Sobj`.`Subject` = `S`.`Object`) and (`obj_type`.`ID` = `Sobj`.`Object`) and (`Sobj`.`Predicate` = 2982895206037061277) and (`Ssubj`.`Subject` = `S`.`Subject`) and (`subj_type`.`ID` = `Ssubj`.`Object`) and (`Ssubj`.`Predicate` = 2982895206037061277)) group by `me`.`ID`,`subj_type`.`ID`,`pred`.`ID`,`obj_type`.`ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OWL_TYPE_PREDICATES`
--

/*!50001 DROP TABLE `OWL_TYPE_PREDICATES`*/;
/*!50001 DROP VIEW IF EXISTS `OWL_TYPE_PREDICATES`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `OWL_TYPE_PREDICATES` AS select count(`me`.`ID`) AS `CountObjects`,`subj_type`.`URI` AS `subject_uri`,`pred`.`URI` AS `predicate_uri`,`obj_type`.`URI` AS `object_uri`,`subj_type`.`ID` AS `subject_id`,`pred`.`ID` AS `predicate_id`,`obj_type`.`ID` AS `object_id` from (((((((`Resources` `me` join `Statements17546201007601059027` `S`) join `Statements17546201007601059027` `Sobj`) join `Statements17546201007601059027` `Ssubj`) join `Resources` `pred`) join `Resources` `obj`) join `Resources` `obj_type`) join `Resources` `subj_type`) where ((`S`.`Subject` = `me`.`ID`) and (`pred`.`ID` = `S`.`Predicate`) and (`obj`.`ID` = `S`.`Object`) and (`Sobj`.`Subject` = `S`.`Object`) and (`obj_type`.`ID` = `Sobj`.`Object`) and (`Sobj`.`Predicate` = 2982895206037061277) and (`Ssubj`.`Subject` = `S`.`Subject`) and (`subj_type`.`ID` = `Ssubj`.`Object`) and (`Ssubj`.`Predicate` = 2982895206037061277)) group by `pred`.`ID`,`obj_type`.`ID`,`subj_type`.`ID` order by count(`me`.`ID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OWL_TYPE_PREDICATES_VIEW`
--

/*!50001 DROP TABLE `OWL_TYPE_PREDICATES_VIEW`*/;
/*!50001 DROP VIEW IF EXISTS `OWL_TYPE_PREDICATES_VIEW`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `OWL_TYPE_PREDICATES_VIEW` AS select substr(`OWL_TYPE_PREDICATES`.`subject_uri`,(length(`OWL_TYPE_PREDICATES`.`subject_uri`) - 15)) AS `substring(subject_uri,length(subject_uri)-15)`,substr(`OWL_TYPE_PREDICATES`.`predicate_uri`,(length(`OWL_TYPE_PREDICATES`.`predicate_uri`) - 15)) AS `substring(predicate_uri,length(predicate_uri)-15)`,substr(`OWL_TYPE_PREDICATES`.`object_uri`,(length(`OWL_TYPE_PREDICATES`.`object_uri`) - 15)) AS `substring(object_uri,length(object_uri)-15)`,`OWL_TYPE_PREDICATES`.`CountObjects` AS `CountObjects`,`OWL_TYPE_PREDICATES`.`subject_id` AS `subject_id`,`OWL_TYPE_PREDICATES`.`object_id` AS `object_id`,`OWL_TYPE_PREDICATES`.`predicate_id` AS `predicate_id` from `OWL_TYPE_PREDICATES` order by `OWL_TYPE_PREDICATES`.`CountObjects` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-11-21 10:52:40
