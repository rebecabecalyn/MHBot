-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: orsen_kb
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templates` (
  `idtemplates` int NOT NULL AUTO_INCREMENT,
  `response_type` varchar(250) NOT NULL,
  `template` varchar(250) NOT NULL,
  `relations` varchar(250) DEFAULT NULL,
  `blank_types` varchar(250) DEFAULT NULL,
  `nodes` varchar(45) DEFAULT NULL,
  `dependent_nodes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtemplates`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'feedback','I see, that\'s interesting.',NULL,NULL,NULL,NULL),(2,'feedback','Oh, so that\'s what happens.',NULL,NULL,NULL,NULL),(3,'feedback','Hmm, so _1_.','1 Repeat','Repeat','1','1'),(4,'general','Then what happens?',NULL,NULL,NULL,NULL),(5,'general','I see, so what happens next?',NULL,NULL,NULL,NULL),(6,'general','Tell me more then.',NULL,NULL,NULL,NULL),(7,'general','I want to know more.',NULL,NULL,NULL,NULL),(8,'specific','Describe _1_.','1 Object','Object','1','1'),(9,'specific','Tell me more about _1_.','1 Object','Object','1','1'),(10,'specific','What is _1_ like?','1 Character','Character','1','1'),(11,'specific','I want to hear more about _1_.','1 Object','Object','1','1'),(12,'specific','Tell something about _1_.','1 Object','Object','1','1'),(13,'specific','Why did _1_?','1 Event','Event','1','1'),(17,'hinting','The _1_ is _2_','1 Object, 1 HasProperty 2','Object,HasProperty','1,2','1,2'),(18,'hinting','There was a _1_ in the _2_.','1 Object, 1 AtLocation 2','Object,AtLocation','1,2','1,2'),(19,'hinting','There is _1_ in _2_.','1 Object, 1 AtLocation 2','Object,AtLocation','1,2','1,2'),(23,'hinting','Then, _1_ went to a _2_.','1 Character, 2 IsA place','Character,IsA','1,2','1,2'),(24,'hinting','The_1_ can _2_.','1 Object, 1 CapableOf 2','Object,CapableOf','1,2','1,2'),(25,'hinting','_1_ found _2_ at the _3_.','1 Character, 2 Object, 2 AtLocation 3','Character,Object,AtLocation','1,2,3','1,2,3'),(26,'feedback','I see, so _1_','1 Repeat','Repeat','1','1'),(27,'feedback','Ah, so _1_','1 Repeat','Repeat','1','1'),(28,'specific','How old is _1_?','1 Character','Character','1','1'),(29,'specific','What color is _1_?','1 Item','Item','1','1'),(30,'specific','How big is _1_?','1 Item','Item','1','1'),(31,'specific','What is _1_ made of?','1 Item','Item','1','1'),(33,'specific','What happened after _1_?','1 Event','Event','1','1'),(34,'feedback','Ah, I see, so _1_.','1 Repeat','Repeat','1','1'),(35,'feedback','Interesting, so, _1_.','1 Repeat','Repeat','1','1'),(36,'general','I wanna know more!',NULL,NULL,NULL,NULL),(37,'general','So what happens next?',NULL,NULL,NULL,NULL),(38,'general','Is there anything else you can say about that?',NULL,NULL,NULL,NULL),(39,'specific','What happens after _1_?','1 Repeat','Repeat','1','1'),(41,'hinting','The_1_ was at _2_','1 Object, 1 AtLocation 2','Object,AtLocation','1,2','1,2'),(42,'hinting','_1_  _2_.','1 Object, 1 CapableOf 2','Object,CapableOf','1,2','1,2'),(43,'hinting','The _1_ can have _2_','1 Object, 1 HasA 2','Object,HasA','1,2','1,2'),(44,'hinting','The_1_  is a _2_','1 Object, 1 IsA 2','Object,IsA','1,2','1,2'),(45,'hinting','The_1_  was near _2_','1 Object, 1 AtLocation 2','Object,AtLocation','1,2','1,2'),(46,'hinting','_1_  used for _2_','1 Object, 1 UsedFor 2','Object,UsedFor','1,2','1,2'),(47,'hinting','_1_  can be _2_','1 Object, 1 HasProperty 2','Object,HasProperty','1,2','1,2'),(48,'prompt','How about a story on _1_?','1 Prompt','Prompt','1','1'),(49,'prompt','You can talk about  _1_.','1 Prompt','Prompt','1','1'),(50,'prompt','What if we had a story about  _1_?','1 Prompt','Prompt','1','1'),(51,'prompt','Tell me a story on  _1_?','1 Prompt','Prompt','1','1'),(52,'prompt','Your characters could be  _1_.','1 Prompt','Prompt','1','1'),(53,'prompt','The story could be about  _1_.','1 Prompt','Prompt','1','1'),(54,'prompt',' How about a story on  _1_?','1 Prompt','Prompt','1','1'),(55,'prompt','I think stories with  _1_ are cool.','1 Prompt','Prompt','1','1'),(56,'prompt','If you like, you can tell a story about  _1_.','1 Prompt','Prompt','1','1'),(57,'prompt','What if there were  _1_?','1 Prompt','Prompt','1','1'),(58,'prompt','You could include  _1_ in your story.','1 Prompt','Prompt','1','1'),(59,'prompt','Maybe you’d want some  _1_ in the story.','1 Prompt','Prompt','1','1'),(60,'hinting','The _1_ has _2_','1 Object, 1 HasA 2','Object,HasA','1,2','1,2'),(61,'hinting','_1_ _2_ the _3_','1 Character, 1 CapableOf 2, 3 Object, 3 ReceivedAction 2','Character,CapableOf,Object,ReceivedAction','1,2,3','1,2,3,None'),(62,'hinting','_1_ _2_ to make _3_','1 Character, 1 CapableOf 2, 3 Object, 3 CreatedBy 2','Character,CapableOf,Object,CreatedBy','1,2,3','1,2,3,None'),(63,'hinting','_1_ _2_ to make _3_ so it can be used for _4_','1 Character, 1 CapableOf 2, 3 Object, 3 CreatedBy 2, 3 UsedFor 4','Character,CapableOf,Object,CreatedBy,UsedFor','1,2,3,4','1,2,3,None,4'),(64,'hinting','_1_ is a _2_ and it can _3_','1 Object, 1 IsA 2, 1 CapableOf 3','Object,IsA,CapableOf','1,2,3','1,2,3'),(65,'hinting','_1_ tried to _2_ but failed','1 Object, 1 CapableOf 2','Object,CapableOf','1,2','1,2'),(66,'hinting','_1_ used _2_ for _3_','1 Character, 2 Object, 2 UsedFor 3, 1 CapableOf 3','Character,Object,UsedFor,CapableOf','1,2,3,4','1,2,3,None'),(67,'hinting','_1_ wanted to _2_ during the _3_','1 Character, 1 CapableOf 2, 3 IsA weather','Character,CapableOf,IsA','1,2,3','1,2,3'),(68,'hinting','_1_ went to _2_ and _1_ _3_','1 Character, 1 AtLocation 2, 1 CapableOf 3','Character,AtLocation,CapableOf','1,2,3','1,2,3'),(69,'hinting','_1_ _2_ at _3_','1 Character, 1 CapableOf 2, 1 AtLocation 3','Character,CapableOf,AtLocation','1,2,3','1,2,3'),(70,'hinting','_1_ went to the _2_ to _3_','1 Character, 1 AtLocation 2, 2 UsedFor 3','Character,AtLocation,UsedFor','1,2,3','1,2,3'),(71,'hinting','The _1_ was _2_','1 Object, 1 ReceivesAction 2','Object,ReceivesAction','1,2','1,2'),(72,'hinting','The _1_ got _2_','1 Object, 1 ReceivesAction 2','Object,ReceivesAction','1,2','1,2'),(73,'hinting','_1_ wanted to_2_','1 Character, 1 Desires 2','Character,Desires','1,2','1,2'),(74,'hinting','_1_ desired to_2_','1 Character, 1 Desires 2','Character,Desires','1,2','1,2'),(75,'hinting','The _1_ was created by _2_','1 Object, 1 CreatedBy 2','Object,CreatedBy','1,2','1,2'),(76,'hinting','The _1_ is made by _2_','1 Object, 1 CreatedBy 2','Object,CreatedBy','1,2','1,2'),(77,'hinting','At the _1_, _2_ _3_ the _4_','1 IsA place, 2 Character, 2 CapableOf 3, 4 Object, 4 ReceivesAction 3','IsA,Character,CapableOf,Object,ReceivesAction','1,2,3,4','1,2,3,4,None'),(78,'hinting','At the _1_, _2_ _3_ created by _4_','1 IsA place, 2 Character, 2 CapableOf 3, 4 Object, 4 CreatedBy 3','IsA,Character,CapableOf,Object,CreatedBy','1,2,3,4','1,2,3,4,None'),(79,'hinting','The _1_ is _2_','1 IsA place, 1 HasProperty 2','IsA,HasProperty','1,2','1,2'),(80,'hinting','The _1_ _2_ _3_','2 Object, 2 HasProperty 1, 2 CapableOf 3','Object,HasProperty,CapableOf','2,1,3','2,1,3'),(84,'hinting','_1_ _2_ _3_ that was part of _4_','1 Character, 1 CapableOf 2, 3 Object, 3 PartOf 4, 3 ReceivesAction 2','Character,CapableOf,Object,PartOf,ReceivesAction','1,2,3,4','1,2,3,4,None'),(85,'hinting','_1_ wanted to _2_ during the _3_ _4_','1 Character, 1 CapableOf 2, 3 IsA weather, 3 HasProperty 4','Character,CapableOf,IsA,HasProperty','1,2,3,4','1,2,3,4'),(86,'hinting','On a _1_, _2_ went to _3_ for _4_','1 IsA weekday, 2 Character, 2 AtLocation 3, 3 UsedFor 4','IsA,Character,AtLocation,UsedFor','1,2,3,4','1,2,3,4'),(87,'hinting','On a _1_, _2_ went to _3_ for _4_','1 IsA weekend, 2 Character, 2 AtLocation 3, 3 UsedFor 4','IsA,Character,AtLocation,UsedFor','1,2,3,4','1,2,3,4,None'),(88,'hinting','On a _1_, _2_ went to _3_','1 IsA weekend, 2 Character, 2 AtLocation 3','IsA,Character,AtLocation','1,2,3','1,2,3'),(89,'hinting','On a _1_, _2_ went to _3_','1 IsA weekday, 2 Character, 2 AtLocation 3','IsA,Character,AtLocation','1,2,3','1,2,3'),(90,'hinting','On a _1_, _2_ CapableOf _3_','1 IsA weekend, 2 Character, 2 CapableOf 3','IsA,Character,CapableOf','1,2,3','1,2,3'),(91,'hinting','On a _1_, _2_ CapableOf _3_','1 IsA weekday, 2 Character, 2 CapableOf 3','IsA,Character,CapableOf','1,2,3','1,2,3'),(92,'hinting','It was _1_, when _2_ went to _3_','1 IsA month, 2 Character, 2 AtLocation 3','IsA,Character,AtLocation','1,2,3','1,2,3'),(93,'hinting','It was _1_, when _2_ _3_','1 IsA month, 2 Character, 2 CapableOf 3','IsA,Character,CapableOf','1,2,3','1,2,3'),(94,'hinting','It was _1_, when _2_ _3_','1 IsA day, 2 Character, 2 CapableOf 3','IsA,Character,CapableOf','1,2,3','1,2,3'),(95,'hinting','It was _1_, when _2_ went to _3_','1 IsA day, 2 Character, 2 AtLocation 3','IsA,Character,AtLocation','1,2,3','1,2,3'),(96,'hinting','The _1_ has a _2_ _3_','1 Object, 1 HasA 3, 3 HasProperty 2','Object,HasA,HasProperty','1,2,3','1,2,3'),(97,'hinting','The _1_ _2_ has a _3_','2 Object, 2 HasProperty 1, 2 HasA 3','Object,HasProperty,HasA','2,1,3','2,1,3'),(98,'hinting','The _1_ of the _2_ was _3_','1 Object, 2 HasA 1, 1 ReceivesAction 3','Object,HasA,ReceivesAction','1,2,3','1,2,3'),(99,'hinting','The _1_ of the _2_ was _3_ by _4_','1 Object, 2 HasA 1, 1 ReceivesAction 3, 4 Character, 4 CapableOf 3','Object,HasA,ReceivesAction,Character,CapableOf','1,2,3,4','1,2,3,4,None'),(100,'hinting','_1_ wants to _2_ so _1_ went _3_','1 Character, 1 Desires 2, 1 AtLocation 3','Character,Desires,AtLocation','1,2,3','1,2,3'),(101,'hinting','_1_ wants to eat _2_','1 Character, 1 CapableOf eat, 2 IsA food','Character,CapableOf,IsA','1,2','1,None,2'),(102,'hinting','_1_ want to have a _2_ for _3_','1 Character, 1 Desires 3, 2 UsedFor 3','Character,Desires,UsedFor','1,3,2','1,3,2'),(103,'hinting','_1_ _2_ so she can have _3_','1 Character, 1 CapableOf 2, 3 CreatedBy 2','Character,CapableOf,CreatedBy','1,2,3','1,2,3'),(104,'hinting','_1_ is a _2_ so _1_ like _3_','1 Character, 1 IsA 2, 1 Desires 3','Character,IsA,Desires','1,2,3','1,2,3'),(105,'hinting','_1_ made a _2_ _3_ by _4_','1 Character, 3 Object, 3 HasProperty 2, 3 CreatedBy 4, 1 CapableOf 4','Character,Object,HasProperty,CreatedBy,CapableOf','1,3,2,4','1,3,2,4,None'),(106,'follow_up','Don\'t you like it or is it wrong?',NULL,NULL,NULL,NULL),(107,'suggesting','What if the _1_ has _2_','1 Object, 1 HasA 2','Object,HasA','1,2','1,2'),(108,'suggesting','What if _1_ _2_ the _3_','1 Character, 1 CapableOf 2, 3 Object, 3 ReceivedAction 2','Character,CapableOf,Object,ReceivedAction','1,2,3','1,2,3,None'),(109,'suggesting','What if _1_ _2_ to make _3_','1 Character, 1 CapableOf 2, 3 Object, 3 CreatedBy 2','Character,CapableOf,Object,CreatedBy','1,2,3','1,2,3,None'),(110,'suggesting','What if _1_ _2_ to make _3_ so it can be used for _4_','1 Character, 1 CapableOf 2, 3 Object, 3 CreatedBy 2, 3 UsedFor 4','Character,CapableOf,Object,CreatedBy,UsedFor','1,2,3,4','1,2,3,None,4'),(111,'suggesting','What if _1_ is a _2_ and it can _3_','1 Object, 1 IsA 2, 1 CapableOf 3','Object,IsA,CapableOf','1,2,3','1,2,3'),(112,'suggesting','What if _1_ tried to _2_ but failed','1 Object, 1 CapableOf 2','Object,CapableOf','1,2','1,2'),(113,'suggesting','What if _1_ used _2_ for _3_','1 Character, 2 Object, 2 UsedFor 3, 1 CapableOf 3','Character,Object,UsedFor,CapableOf','1,2,3,4','1,2,3,None'),(114,'suggesting','What if _1_ wanted to _2_ during the _3_','1 Character, 1 CapableOf 2, 3 IsA weather','Character,CapableOf,IsA','1,2,3','1,2,3'),(115,'suggesting','What if _1_ went to _2_ and _1_ _3_','1 Character, 1 AtLocation 2, 1 CapableOf 3','Character,AtLocation,CapableOf','1,2,3','1,2,3'),(116,'suggesting','What if _1_ _2_ at _3_','1 Character, 1 CapableOf 2, 1 AtLocation 3','Character,CapableOf,AtLocation','1,2,3','1,2,3'),(117,'suggesting','What if _1_ went to the _2_ to _3_','1 Character, 1 AtLocation 2, 2 UsedFor 3','Character,AtLocation,UsedFor','1,2,3','1,2,3'),(118,'suggesting','What if the _1_ was _2_','1 Object, 1 ReceivesAction 2','Object,ReceivesAction','1,2','1,2'),(119,'suggesting','What if the _1_ got _2_','1 Object, 1 ReceivesAction 2','Object,ReceivesAction','1,2','1,2'),(120,'suggesting','What if _1_ wanted to_2_','1 Character, 1 Desires 2','Character,Desires','1,2','1,2'),(121,'suggesting','What if _1_ desired to_2_','1 Character, 1 Desires 2','Character,Desires','1,2','1,2'),(122,'suggesting','What if the _1_ was created by _2_','1 Object, 1 CreatedBy 2','Object,CreatedBy','1,2','1,2'),(123,'suggesting','What if the _1_ is made by _2_','1 Object, 1 CreatedBy 2','Object,CreatedBy','1,2','1,2'),(124,'suggesting','What if at the _1_, _2_ _3_ the _4_','1 IsA place, 2 Character, 2 CapableOf 3, 4 Object, 4 ReceivesAction 3','IsA,Character,CapableOf,Object,ReceivesAction','1,2,3,4','1,2,3,4,None'),(125,'suggesting','What if at the _1_, _2_ _3_ created by _4_','1 IsA place, 2 Character, 2 CapableOf 3, 4 Object, 4 CreatedBy 3','IsA,Character,CapableOf,Object,CreatedBy','1,2,3,4','1,2,3,4,None'),(126,'suggesting','What if the _1_ is _2_','1 IsA place, 1 HasProperty 2','IsA,HasProperty','1,2','1,2'),(127,'suggesting','What if the _1_ _2_ _3_','2 Object, 2 HasProperty 1, 2 CapableOf 3','Object,HasProperty,CapableOf','2,1,3','2,1,3'),(128,'suggesting','What if _1_ _2_ _3_ that was part of _4_','1 Character, 1 CapableOf 2, 3 Object, 3 PartOf 4, 3 ReceivesAction 2','Character,CapableOf,Object,PartOf,ReceivesAction','1,2,3,4','1,2,3,4,None'),(129,'suggesting','What if _1_ wanted to _2_ during the _3_ _4_','1 Character, 1 CapableOf 2, 3 IsA weather, 3 HasProperty 4','Character,CapableOf,IsA,HasProperty','1,2,3,4','1,2,3,4'),(130,'suggesting','What if on a _1_, _2_ went to _3_ for _4_','1 IsA weekday, 2 Character, 2 AtLocation 3, 3 UsedFor 4','IsA,Character,AtLocation,UsedFor','1,2,3,4','1,2,3,4'),(131,'suggesting','What if on a _1_, _2_ went to _3_ for _4_','1 IsA weekend, 2 Character, 2 AtLocation 3, 3 UsedFor 4','IsA,Character,AtLocation,UsedFor','1,2,3,4','1,2,3,4,None'),(132,'suggesting','What if on a _1_, _2_ went to _3_','1 IsA weekend, 2 Character, 2 AtLocation 3','IsA,Character,AtLocation','1,2,3','1,2,3'),(133,'suggesting','What if on a _1_, _2_ went to _3_','1 IsA weekday, 2 Character, 2 AtLocation 3','IsA,Character,AtLocation','1,2,3','1,2,3'),(134,'suggesting','What if on a _1_, _2_ CapableOf _3_','1 IsA weekend, 2 Character, 2 CapableOf 3','IsA,Character,CapableOf','1,2,3','1,2,3'),(135,'suggesting','What if on a _1_, _2_ CapableOf _3_','1 IsA weekday, 2 Character, 2 CapableOf 3','IsA,Character,CapableOf','1,2,3','1,2,3'),(136,'suggesting','What if it was _1_, when _2_ went to _3_','1 IsA month, 2 Character, 2 AtLocation 3','IsA,Character,AtLocation','1,2,3','1,2,3'),(137,'suggesting','What if it was _1_, when _2_ _3_','1 IsA month, 2 Character, 2 CapableOf 3','IsA,Character,CapableOf','1,2,3','1,2,3'),(138,'suggesting','What if it was _1_, when _2_ _3_','1 IsA day, 2 Character, 2 CapableOf 3','IsA,Character,CapableOf','1,2,3','1,2,3'),(139,'suggesting','What if it was _1_, when _2_ went to _3_','1 IsA day, 2 Character, 2 AtLocation 3','IsA,Character,AtLocation','1,2,3','1,2,3'),(140,'suggesting','What if the _1_ has a _2_ _3_','1 Object, 1 HasA 3, 3 HasProperty 2','Object,HasA,HasProperty','1,2,3','1,2,3'),(141,'suggesting','What if the _1_ _2_ has a _3_','2 Object, 2 HasProperty 1, 2 HasA 3','Object,HasProperty,HasA','2,1,3','2,1,3'),(142,'suggesting','What if the _1_ of the _2_ was _3_','1 Object, 2 HasA 1, 1 ReceivesAction 3','Object,HasA,ReceivesAction','1,2,3','1,2,3'),(143,'suggesting','What if the _1_ of the _2_ was _3_ by _4_','1 Object, 2 HasA 1, 1 ReceivesAction 3, 4 Character, 4 CapableOf 3','Object,HasA,ReceivesAction,Character,CapableOf','1,2,3,4','1,2,3,4,None'),(144,'suggesting','What if _1_ wants to _2_ so _1_ went _3_','1 Character, 1 Desires 2, 1 AtLocation 3','Character,Desires,AtLocation','1,2,3','1,2,3'),(145,'suggesting','What if _1_ wants to eat _2_','1 Character, 1 CapableOf eat, 2 IsA food','Character,CapableOf,IsA','1,2','1,None,2'),(146,'suggesting','What if _1_ want to have a _2_ for _3_','1 Character, 1 Desires 3, 2 UsedFor 3','Character,Desires,UsedFor','1,3,2','1,3,2'),(147,'suggesting','What if _1_ _2_ so she can have _3_','1 Character, 1 CapableOf 2, 3 CreatedBy 2','Character,CapableOf,CreatedBy','1,2,3','1,2,3'),(148,'suggesting','What if _1_ is a _2_ so _1_ like _3_','1 Character, 1 IsA 2, 1 Desires 3','Character,IsA,Desires','1,2,3','1,2,3'),(149,'suggesting','What if _1_ made a _2_ _3_ by _4_','1 Character, 3 Object, 3 HasProperty 2, 3 CreatedBy 4, 1 CapableOf 4','Character,Object,HasProperty,CreatedBy,CapableOf','1,3,2,4','1,3,2,4,None'),(150,'e-label','You seem _1_ . Is that right?','1 Emotion','Emotion','1','1'),(151,'e-pumping','Oh I see. Would you like to tell me exactly how you feel?',NULL,NULL,NULL,NULL),(152,'c-pumping','Can you share the reason why you are _1_ ?','1 Emotion','Emotion','1','1'),(153,'d-praise','I\'m glad that you are _1_ .','1 Emotion','Emotion','1','1'),(154,'d-correcting','Do you think what you did was right?',NULL,NULL,NULL,NULL),(155,'d-pumping','What do you think is the better way to do it?',NULL,NULL,NULL,NULL),(156,'evaluation','Did you learn anything from telling me this?',NULL,NULL,NULL,NULL),(157,'evaluation','What did you feel after telling me this?',NULL,NULL,NULL,NULL),(158,'recollection','So far, here are the important things we talked about.',NULL,NULL,NULL,NULL),(159,'e-end','If you\'re willing to share your thoughts or feelings, I am willing to listen. If you need more time, maybe we can talk about it again',NULL,NULL,NULL,NULL),(160,'e-emphasis','You sound really _1_. If you want to talk to me about it, then I\'m ready to listen.','1 Emotion','Emotion','1','1'),(161,'a-pumping','I\'m sorry you are going through this.',NULL,NULL,NULL,NULL),(162,'a-pumping','That must be hard.',NULL,NULL,NULL,NULL),(163,'a-pumping','I hate that this happened.',NULL,NULL,NULL,NULL),(164,'a-pumping','That sounds really challenging.',NULL,NULL,NULL,NULL),(165,'a-pumping','I can see how that would be difficult.',NULL,NULL,NULL,NULL),(166,'e-feedback','I am concerned that everything is not okay.',NULL,NULL,NULL,NULL),(167,'e-feedback','I\'d like to help you the way you would help me.',NULL,NULL,NULL,NULL),(168,'g-praise','Thank you for sharing with me.',NULL,NULL,NULL,NULL),(169,'g-praise','I\'m glad you told me.',NULL,NULL,NULL,NULL),(170,'g-praise','Thank you for trusting me with this. That really means a lot.',NULL,NULL,NULL,NULL),(171,'g-praise','This must be hard to talk about. Thanks for opening up to me.',NULL,NULL,NULL,NULL),(172,'mhbot_intro','Hello! I\'m MHBot and I\'m here to help improve your mental wellbeing through positive psychology. Do you want to know more?',NULL,NULL,NULL,NULL),(173,'mhbot_intro_followup','Positive psychology is the scientific study of what makes life most worth living, focusing on both individual and societal well-being.It studies positive subjective experience, positive individual traits, and positive institutions it aims to improve ',NULL,NULL,NULL,NULL),(174,'mhbot_welcome','So, How was your day?',NULL,NULL,NULL,NULL),(175,'mhbot_welcome','So, How was your day?',NULL,NULL,NULL,NULL),(176,'p_labelling','You seem _1_ today is that right?','1 Wellbeing','Wellbeing','1','1'),(177,'p_reevaluate','Oh I see, can you tell me more about your day today?',NULL,NULL,NULL,NULL),(178,'m_c_pumping','Why do you feel _1_ today?','1 Wellbeing','Wellbeing','1','1'),(179,'s_pumping','Can you tell me more?',NULL,NULL,NULL,NULL),(180,'p_praise','That sounds great! Keep up the positivity!?',NULL,NULL,NULL,NULL),(181,'mhbot_closing','If you are willing to share your thoughts or feelings. I am willing to listen. If you need more time, maybe we can talk about it again',NULL,NULL,NULL,NULL),(182,'o_reflect','Always remember to stay positive in every thing that you do!',NULL,NULL,NULL,NULL),(183,'closing_followup','Do you want to share another story?',NULL,NULL,NULL,NULL),(184,'counseling','Are you willing to try out counseling?',NULL,NULL,NULL,NULL),(185,'counseling_followup','Are you sure? This could really help you.',NULL,NULL,NULL,NULL),(186,'counseling_feedback_y','This will surely be of great help. The counselor\'s name is Emma. She\'s a really good listener and gives great advice. You can contact her through her email emma@dlsu.edu.ph.',NULL,NULL,NULL,NULL),(187,'counseling_feedback_n','I understand. It\'s alright. Do you want to share more about your day?',NULL,NULL,NULL,NULL),(188,'p_care','You should spend more time with _1_','1 Object','Object','1','1'),
(189,'p_care','When’s the last time you hang out with _1_? You should try to hang out with them soon.','1 Object','Object','1','1'),
(190,'p_enjoy','You should do _1_ more often!','1 Object','Object','1','1'),
(191,'p_music','Can you tell me about your favorite music?',NULL,NULL,NULL,NULL),
(192,'p_music_f2','How does this make you feel?',NULL,NULL,NULL,NULL),
(193,'p_music_pos','That’s so nice! You should listen to more similar music!',NULL,NULL,NULL,NULL),
(194,'p_music_neg','You should try to listen to more inspirational music, this could really help you.',NULL,NULL,NULL,NULL),
(195,'p_grateful_q1','Are you grateful for this?',NULL,NULL,NULL,NULL),
(196,'p_grateful_yes','That’s awesome! Reflecting on the things you are grateful for can remind you of the little things in life.',NULL,NULL,NULL,NULL),
(197,'p_grateful_no','Can you share with me something that you are grateful for?',NULL,NULL,NULL,NULL),
(198,'p_grateful_f2','Reflecting on the things you are grateful for can remind you of the little things in life.',NULL,NULL,NULL,NULL),
(199,'p_grateful_q2','The little things in life are really important. It’s nice to remember the things we are grateful for, even the small things.',NULL,NULL,NULL,NULL),
(200,'e_activity','It seemed like you really enjoyed that, you should do it more often!',NULL,NULL,NULL,NULL),
(201,'e_activity','Did you lose track of time doing that?',NULL,NULL,NULL,NULL),
(202,'e_past_q1','Do you often see yourself overthinking about what you did in the past or what will happen in the future?',NULL,NULL,NULL,NULL),
(203,'e_past_q1_f2','It’s really hard to break out of that thought, but sometimes, you should also live in the moment, and focus more of your energy on your daily tasks.',NULL,NULL,NULL,NULL),
(204,'e_nature_q1','That’s good! You should spend more time outside and observe your surroundings.',NULL,NULL,NULL,NULL),
(205,'e_nature_q2','Try to observe your surroundings whenever you’re in nature and outside.',NULL,NULL,NULL,NULL),
(206,'e_excel_q1','That sounds like a strength of yours. You should do it more often!',NULL,NULL,NULL,NULL),
(207,'r_enjoy_q1','You should try to look for people who enjoy _1_ as well!','1 Object','Object','1','1'),
(208,'r_friend_q1','It’s nice to hear you making new friends!',NULL,NULL,NULL,NULL),
(209,'r_friend_q2','When’s the last time you spoke to _1_?','1 Object','Object','1','1'),
(210,'r_friend_q2_f','You should try to reconnect with them!',NULL,NULL,NULL,NULL),
(211,'m_org_q1','That’s great! Being more involved in an organization can help you grow.',NULL,NULL,NULL,NULL),
(212,'m_new_q1','Did you enjoy that?',NULL,NULL,NULL,NULL),
(213,'m_bored_q1','Try something new like _1_','1 Object','Object','1','1'),
(214,'m_passion_q1','How do you use this to help others?',NULL,NULL,NULL,NULL),
(215,'m_friend_q1','You should spend more time with them!',NULL,NULL,NULL,NULL),
(216,'a_goal_q1','Try to make your goals more specific for you to be able to achieve them more.',NULL,NULL,NULL,NULL),
(217,'a_goal_q2','It’s nice that you set goals! You should practice that more often.',NULL,NULL,NULL,NULL),
(218,'a_success_q1','Be grateful and thankful for these accomplishments.',NULL,NULL,NULL,NULL),
(219,'a_achieve_q1','That’s amazing! How did you celebrate?',NULL,NULL,NULL,NULL),
(220,'pe_advice','Whenever you _1_, don’t forget to _2_','1 Activity, 2 HasPrerequisite','Activity,HasPrerequisite','1,2','1,2'),
(221,'prm_suggest','Why don’t you _1_ with your _2_','1 CanDo, 2 Person','CanDo,Person','1,2','1,2'),
(222,'a_advice','You should celebrate your _1_','1 Accomplishment','Accomplishment','1','1'),
(223,'a_advice','Whenever you _1_, don’t forget to celebrate.','1 Accomplishment','Accomplishment','1','1'),
(224,'m_suggest','Why don’t you try _1_?','1 Activity','Activity','1','1'),
(225,'a_suggest','Why don’t you celebrate whenever you _1_?','1 Accomplishment','Accomplishment','1','1'),
(226,'mhbot_pump','What happened at _1_','1 Place','Place','1','1'),
(227,'mhbot_pump','Can you tell me more about _1_?','1 Object','Object','1','1'),
(228,'r_advice','Whenever you spend time with _1_, don’t forget to _2_.','1 Person, 2 Activity','Person, Activity','1,2','1,2'),
(229,'m_advice','Don’t forget to try new activities every once in a while.',NULL,NULL,NULL,NULL),
(230,'e_suggest','Why don’t you _1_ more often?.','1 Activity','Activity','1','1'),
(231,'p_general','What is something you enjoy doing?',NULL,NULL,NULL,NULL),
(232,'e_general','What is something you consider as your strength?',NULL,NULL,NULL,NULL),
(233,'r_general','Why don’t you try reconnecting with your friends?',NULL,NULL,NULL,NULL),
(234,'m_general','What are some of your passions?',NULL,NULL,NULL,NULL),
(235,'a_general','What are some of your accomplishments?',NULL,NULL,NULL,NULL)
;
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 18:15:25
