-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: sportify
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart_item_table`
--

DROP TABLE IF EXISTS `cart_item_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item_table` (
  `cart_item_id` int NOT NULL AUTO_INCREMENT,
  `cart_cart_id` int DEFAULT NULL,
  `product_product_id` int DEFAULT NULL,
  PRIMARY KEY (`cart_item_id`),
  KEY `FKpqxa7bm0hm2sm2hyt3x90b1nq` (`cart_cart_id`),
  KEY `FKqcv6vesk9drymh0juadurgask` (`product_product_id`),
  CONSTRAINT `FKpqxa7bm0hm2sm2hyt3x90b1nq` FOREIGN KEY (`cart_cart_id`) REFERENCES `cart_table` (`cart_id`),
  CONSTRAINT `FKqcv6vesk9drymh0juadurgask` FOREIGN KEY (`product_product_id`) REFERENCES `product_table` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item_table`
--

LOCK TABLES `cart_item_table` WRITE;
/*!40000 ALTER TABLE `cart_item_table` DISABLE KEYS */;
INSERT INTO `cart_item_table` VALUES (17,13,13),(18,13,14),(19,13,15),(20,13,16);
/*!40000 ALTER TABLE `cart_item_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_table`
--

DROP TABLE IF EXISTS `cart_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_table` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `cart_status` varchar(255) DEFAULT NULL,
  `customer_customer_id` int DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `FKgkmocvd0jspud1x6b10k3rxyu` (`customer_customer_id`),
  CONSTRAINT `FKgkmocvd0jspud1x6b10k3rxyu` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer_info_table` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_table`
--

LOCK TABLES `cart_table` WRITE;
/*!40000 ALTER TABLE `cart_table` DISABLE KEYS */;
INSERT INTO `cart_table` VALUES (13,'empty',5),(14,'empty',6),(15,'empty',7),(16,'empty',8);
/*!40000 ALTER TABLE `cart_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_table_cart_items`
--

DROP TABLE IF EXISTS `cart_table_cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_table_cart_items` (
  `cart_cart_id` int NOT NULL,
  `cart_items_cart_item_id` int NOT NULL,
  PRIMARY KEY (`cart_cart_id`,`cart_items_cart_item_id`),
  UNIQUE KEY `UK_meilknm2yphrablem7f8c8q7h` (`cart_items_cart_item_id`),
  CONSTRAINT `FKd963sktmefeqk8brtoy4ruta` FOREIGN KEY (`cart_cart_id`) REFERENCES `cart_table` (`cart_id`),
  CONSTRAINT `FKs5gi0cwvbqe16ksl8q9ox60bw` FOREIGN KEY (`cart_items_cart_item_id`) REFERENCES `cart_item_table` (`cart_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_table_cart_items`
--

LOCK TABLES `cart_table_cart_items` WRITE;
/*!40000 ALTER TABLE `cart_table_cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_table_cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_table`
--

DROP TABLE IF EXISTS `category_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_table` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_image` longblob,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_table`
--

LOCK TABLES `category_table` WRITE;
/*!40000 ALTER TABLE `category_table` DISABLE KEYS */;
INSERT INTO `category_table` VALUES (5,NULL,'cricket'),(6,NULL,'Football'),(7,NULL,'tennis'),(8,NULL,'Hocky');
/*!40000 ALTER TABLE `category_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_table_products`
--

DROP TABLE IF EXISTS `category_table_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_table_products` (
  `category_category_id` int NOT NULL,
  `products_product_id` int NOT NULL,
  PRIMARY KEY (`category_category_id`,`products_product_id`),
  UNIQUE KEY `UK_qrhd63l1c73rknew333vhmoth` (`products_product_id`),
  CONSTRAINT `FKix200s52px7o6m75ugth1mhy4` FOREIGN KEY (`products_product_id`) REFERENCES `product_table` (`product_id`),
  CONSTRAINT `FKqkc5qtcyrhq3m99vhrns347jj` FOREIGN KEY (`category_category_id`) REFERENCES `category_table` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_table_products`
--

LOCK TABLES `category_table_products` WRITE;
/*!40000 ALTER TABLE `category_table_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_table_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_table_subcategories`
--

DROP TABLE IF EXISTS `category_table_subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_table_subcategories` (
  `category_category_id` int NOT NULL,
  `subcategories_sub_category_id` int NOT NULL,
  PRIMARY KEY (`category_category_id`,`subcategories_sub_category_id`),
  UNIQUE KEY `UK_n9vv5y2puwj37ayptmcvu5r2` (`subcategories_sub_category_id`),
  CONSTRAINT `FK5xgvxfo4kostw0wl03mpecphq` FOREIGN KEY (`subcategories_sub_category_id`) REFERENCES `sub_category_table` (`sub_category_id`),
  CONSTRAINT `FKj6sd1ksbv5bh8cyk9x97an6ex` FOREIGN KEY (`category_category_id`) REFERENCES `category_table` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_table_subcategories`
--

LOCK TABLES `category_table_subcategories` WRITE;
/*!40000 ALTER TABLE `category_table_subcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_table_subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_info_table`
--

DROP TABLE IF EXISTS `customer_info_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_info_table` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_city` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_mobno` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_password` varchar(255) DEFAULT NULL,
  `customer_pincode` varchar(255) DEFAULT NULL,
  `customer_uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_info_table`
--

LOCK TABLES `customer_info_table` WRITE;
/*!40000 ALTER TABLE `customer_info_table` DISABLE KEYS */;
INSERT INTO `customer_info_table` VALUES (5,'shanti nagar','Pune','rahul@gmail.com','9988776655','Rahul Kumar','rahul123','425200','rahul'),(6,'Aadarsh Colony','Pune','sahil123@gmail.com','8812546141','Sahil wani','wanis44','425410','sahil'),(7,'JK Road shiv Colony','Pune','maheshw@gmail.com','7846412541','Mahesh Wadile','mahiwa87','425411','mahesh'),(8,'Samata Nagar','Pune','pradip44@gmail.com','8745451121','Pradip Surywanshi','pradipsurya4','425611','pradip');
/*!40000 ALTER TABLE `customer_info_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_info_table_carts`
--

DROP TABLE IF EXISTS `customer_info_table_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_info_table_carts` (
  `customer_customer_id` int NOT NULL,
  `carts_cart_id` int NOT NULL,
  PRIMARY KEY (`customer_customer_id`,`carts_cart_id`),
  UNIQUE KEY `UK_c7cliguymi084fxojj3xnqxs` (`carts_cart_id`),
  CONSTRAINT `FKafv5swp6evtm8vptjt70beacy` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer_info_table` (`customer_id`),
  CONSTRAINT `FKtg32ubr228q8gqx5dxokchdit` FOREIGN KEY (`carts_cart_id`) REFERENCES `cart_table` (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_info_table_carts`
--

LOCK TABLES `customer_info_table_carts` WRITE;
/*!40000 ALTER TABLE `customer_info_table_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_info_table_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_info_table_orders`
--

DROP TABLE IF EXISTS `customer_info_table_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_info_table_orders` (
  `customer_customer_id` int NOT NULL,
  `orders_order_id` int NOT NULL,
  PRIMARY KEY (`customer_customer_id`,`orders_order_id`),
  UNIQUE KEY `UK_r2b3jgg00yl5g631jcmkdby0o` (`orders_order_id`),
  CONSTRAINT `FKbd5y0s3vhek3gi3rf8l1yldlw` FOREIGN KEY (`orders_order_id`) REFERENCES `order_table` (`order_id`),
  CONSTRAINT `FKh953yvvjb7jldx6esmor4ca88` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer_info_table` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_info_table_orders`
--

LOCK TABLES `customer_info_table_orders` WRITE;
/*!40000 ALTER TABLE `customer_info_table_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_info_table_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryboy_info_table`
--

DROP TABLE IF EXISTS `deliveryboy_info_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryboy_info_table` (
  `deliveryboy_id` int NOT NULL AUTO_INCREMENT,
  `deliveryboy_address` varchar(255) DEFAULT NULL,
  `deliveryboy_adhar_card_no` varchar(255) DEFAULT NULL,
  `deliveryboy_email` varchar(255) DEFAULT NULL,
  `deliveryboy_img` longblob,
  `deliveryboy_licence` varchar(255) DEFAULT NULL,
  `deliveryboy_mobno` varchar(255) DEFAULT NULL,
  `deliveryboy_name` varchar(255) DEFAULT NULL,
  `deliveryboy_vehicle` varchar(255) DEFAULT NULL,
  `deliveryboy_city` varchar(255) DEFAULT NULL,
  `deliveryboy_password` varchar(255) DEFAULT NULL,
  `deliveryboy_user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`deliveryboy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryboy_info_table`
--

LOCK TABLES `deliveryboy_info_table` WRITE;
/*!40000 ALTER TABLE `deliveryboy_info_table` DISABLE KEYS */;
INSERT INTO `deliveryboy_info_table` VALUES (5,'adarsh nagar','154875212114','ganesg@gmail.com',NULL,'YES','1248897424','Ganesh gore','Two Wheeler','pune','gg123','ganesh'),(6,'samta nagar','794575211547','sagar@gmail.com',NULL,'YES','8857489741','Sagar Bamare','Two Wheeler','pune','sagar741','sagar'),(7,'shivaji nagar','414514871547','kunalpo@gmail.com',NULL,'YES','9157489741','kunal podar','Two Wheeler','pune','kunalpo74','kunal'),(8,'wagh nagar','122640752072','rohitm@gmail.com',NULL,'YES','8857489741','rohit mehera','Two Wheeler','pune','rohit33','rohitjadu');
/*!40000 ALTER TABLE `deliveryboy_info_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryboy_info_table_orders`
--

DROP TABLE IF EXISTS `deliveryboy_info_table_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryboy_info_table_orders` (
  `delivary_boy_deliveryboy_id` int NOT NULL,
  `orders_product_id` int NOT NULL,
  PRIMARY KEY (`delivary_boy_deliveryboy_id`,`orders_product_id`),
  UNIQUE KEY `UK_7laa1t214bf4ucxqyxel9y0e2` (`orders_product_id`),
  CONSTRAINT `FKe4m5js2pw28h8mom59vbtage1` FOREIGN KEY (`orders_product_id`) REFERENCES `product_table` (`product_id`),
  CONSTRAINT `FKn9iwk8umqx1mtekj3hgl4x73` FOREIGN KEY (`delivary_boy_deliveryboy_id`) REFERENCES `deliveryboy_info_table` (`deliveryboy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryboy_info_table_orders`
--

LOCK TABLES `deliveryboy_info_table_orders` WRITE;
/*!40000 ALTER TABLE `deliveryboy_info_table_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliveryboy_info_table_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_table`
--

DROP TABLE IF EXISTS `order_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_table` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_city` varchar(255) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_desc` varchar(255) DEFAULT NULL,
  `order_payment_by` varchar(255) DEFAULT NULL,
  `order_quantity` int DEFAULT NULL,
  `order_shipping_adress` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `order_total_cost` double DEFAULT NULL,
  `customer_customer_id` int DEFAULT NULL,
  `delivery_boy_deliveryboy_id` int DEFAULT NULL,
  `product_product_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKklung8lc9og6ysg1pt3q03w1f` (`customer_customer_id`),
  KEY `FKbk7s2to3etgdi5nr27qq16ph` (`delivery_boy_deliveryboy_id`),
  KEY `FKbyx1b9s4d19eib88k62unrnw2` (`product_product_id`),
  CONSTRAINT `FKbk7s2to3etgdi5nr27qq16ph` FOREIGN KEY (`delivery_boy_deliveryboy_id`) REFERENCES `deliveryboy_info_table` (`deliveryboy_id`),
  CONSTRAINT `FKbyx1b9s4d19eib88k62unrnw2` FOREIGN KEY (`product_product_id`) REFERENCES `product_table` (`product_id`),
  CONSTRAINT `FKklung8lc9og6ysg1pt3q03w1f` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer_info_table` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_table`
--

LOCK TABLES `order_table` WRITE;
/*!40000 ALTER TABLE `order_table` DISABLE KEYS */;
INSERT INTO `order_table` VALUES (9,'pune','2022-02-27','cricket bat mrf200cm','cash On Delievry',5,'shanti nagar','ordered',6000,5,5,13),(10,'pune','2022-02-25','covered with leather','cash On Delievry',4,'sunflower society','deliverd',5500,6,6,14),(11,'pune','2022-02-24',' size 27 inches','cash On Delievry',5,'jijau nagar','ordered',5000,7,6,15),(12,'pune','2022-02-20','hocky stick length 89cm','debit card',5,'ekta nagar','ordered',6500,8,8,15);
/*!40000 ALTER TABLE `order_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image_table`
--

DROP TABLE IF EXISTS `product_image_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image_table` (
  `product_image_id` int NOT NULL AUTO_INCREMENT,
  `product_image_image` longblob,
  `product_product_id` int DEFAULT NULL,
  PRIMARY KEY (`product_image_id`),
  KEY `FKsyu0i4aqpnl0m84s4762yqnoo` (`product_product_id`),
  CONSTRAINT `FKsyu0i4aqpnl0m84s4762yqnoo` FOREIGN KEY (`product_product_id`) REFERENCES `product_table` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image_table`
--

LOCK TABLES `product_image_table` WRITE;
/*!40000 ALTER TABLE `product_image_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_image_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_table`
--

DROP TABLE IF EXISTS `product_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_table` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_discount` int DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` int DEFAULT NULL,
  `product_quantity` int DEFAULT NULL,
  `category_category_id` int DEFAULT NULL,
  `seller_seller_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK81kvrola8t72at5w1u9qj6eya` (`category_category_id`),
  KEY `FK9pak8qmvhindahs7g3cha263k` (`seller_seller_id`),
  CONSTRAINT `FK81kvrola8t72at5w1u9qj6eya` FOREIGN KEY (`category_category_id`) REFERENCES `category_table` (`category_id`),
  CONSTRAINT `FK9pak8qmvhindahs7g3cha263k` FOREIGN KEY (`seller_seller_id`) REFERENCES `seller_info_table` (`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_table`
--

LOCK TABLES `product_table` WRITE;
/*!40000 ALTER TABLE `product_table` DISABLE KEYS */;
INSERT INTO `product_table` VALUES (13,'MRF200 Rubber Grip',10,'Cricket Bat',1200,20,5,5),(14,'covered with leather',20,'FootBall',1000,30,6,6),(15,' size 27 inches',25,'tennis racket',1500,10,7,7),(16,'hocky stick length 89cm',5,'Hockey Sticks',2000,40,8,8);
/*!40000 ALTER TABLE `product_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_table_cart_items`
--

DROP TABLE IF EXISTS `product_table_cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_table_cart_items` (
  `product_product_id` int NOT NULL,
  `cart_items_cart_item_id` int NOT NULL,
  PRIMARY KEY (`product_product_id`,`cart_items_cart_item_id`),
  UNIQUE KEY `UK_bba3a6a2q0ijr012rnohi61xc` (`cart_items_cart_item_id`),
  CONSTRAINT `FKk6mo6uo8wbdxtrcndmcxdel5e` FOREIGN KEY (`product_product_id`) REFERENCES `product_table` (`product_id`),
  CONSTRAINT `FKp6w07it3o11s7p0iln2w1lw13` FOREIGN KEY (`cart_items_cart_item_id`) REFERENCES `cart_item_table` (`cart_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_table_cart_items`
--

LOCK TABLES `product_table_cart_items` WRITE;
/*!40000 ALTER TABLE `product_table_cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_table_cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_table_orders`
--

DROP TABLE IF EXISTS `product_table_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_table_orders` (
  `product_product_id` int NOT NULL,
  `orders_order_id` int NOT NULL,
  PRIMARY KEY (`product_product_id`,`orders_order_id`),
  UNIQUE KEY `UK_suvv15slplo2g79rdwns1pph6` (`orders_order_id`),
  CONSTRAINT `FK53qablo3xgrta8yr01vnycyv5` FOREIGN KEY (`orders_order_id`) REFERENCES `order_table` (`order_id`),
  CONSTRAINT `FKh7dhihlj7ihg11eybu96xhsqw` FOREIGN KEY (`product_product_id`) REFERENCES `product_table` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_table_orders`
--

LOCK TABLES `product_table_orders` WRITE;
/*!40000 ALTER TABLE `product_table_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_table_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_table_product_images`
--

DROP TABLE IF EXISTS `product_table_product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_table_product_images` (
  `product_product_id` int NOT NULL,
  `product_images_product_image_id` int NOT NULL,
  PRIMARY KEY (`product_product_id`,`product_images_product_image_id`),
  UNIQUE KEY `UK_lw21xux8yovwe9cddef32jf85` (`product_images_product_image_id`),
  CONSTRAINT `FK8vgk5cxdrsbx285533qwkc1vk` FOREIGN KEY (`product_images_product_image_id`) REFERENCES `product_image_table` (`product_image_id`),
  CONSTRAINT `FKip329w82841y3pn73eokyxcvd` FOREIGN KEY (`product_product_id`) REFERENCES `product_table` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_table_product_images`
--

LOCK TABLES `product_table_product_images` WRITE;
/*!40000 ALTER TABLE `product_table_product_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_table_product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_info_table`
--

DROP TABLE IF EXISTS `seller_info_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_info_table` (
  `seller_id` int NOT NULL AUTO_INCREMENT,
  `seller_address` varchar(255) DEFAULT NULL,
  `seller_adharno` varchar(255) DEFAULT NULL,
  `seller_city` varchar(255) DEFAULT NULL,
  `seller_email` varchar(255) DEFAULT NULL,
  `seller_gstno` varchar(255) DEFAULT NULL,
  `seller_mobno` varchar(255) DEFAULT NULL,
  `seller_name` varchar(255) DEFAULT NULL,
  `seller_password` varchar(255) DEFAULT NULL,
  `seller_pic` longblob,
  `seller_shopname` varchar(255) DEFAULT NULL,
  `seller_uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_info_table`
--

LOCK TABLES `seller_info_table` WRITE;
/*!40000 ALTER TABLE `seller_info_table` DISABLE KEYS */;
INSERT INTO `seller_info_table` VALUES (5,'anand nagar','121234344444','Jalgaon','ram@gmail.com','22AAAAA00000A1Z5','8989898989','Ram Patil','ram123',NULL,'Shakti Sports','ram'),(6,'Ring Road','354874484830','Pune','nilesh@gmail.com','47911801ar154079kla','9547894311','Nilesh Rajput','nilu794',NULL,'nil sport shop','niluraj'),(7,'FC road','247874487346','Pune','jagan@gmail.com','74651801ar154120sds','9612145781','Jagan Bhosale','jagan001',NULL,'jagan sports','jaganb'),(8,'jail road','45787421234641','Nashik','vishalp@gmail.com','45251857bh154120sds','7425642242','Vishal Parul','vishu4744',NULL,'Vishu sport zone','vishu');
/*!40000 ALTER TABLE `seller_info_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_info_table_products`
--

DROP TABLE IF EXISTS `seller_info_table_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_info_table_products` (
  `seller_seller_id` int NOT NULL,
  `products_product_id` int NOT NULL,
  PRIMARY KEY (`seller_seller_id`,`products_product_id`),
  UNIQUE KEY `UK_i7vy1q3lbeo2cdltcur4p99vo` (`products_product_id`),
  CONSTRAINT `FK35bako7r9drykado4d43q7lly` FOREIGN KEY (`seller_seller_id`) REFERENCES `seller_info_table` (`seller_id`),
  CONSTRAINT `FKks7r7ywrwcvw1q7xa7clk6rom` FOREIGN KEY (`products_product_id`) REFERENCES `product_table` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_info_table_products`
--

LOCK TABLES `seller_info_table_products` WRITE;
/*!40000 ALTER TABLE `seller_info_table_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_info_table_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_category_table`
--

DROP TABLE IF EXISTS `sub_category_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_category_table` (
  `sub_category_id` int NOT NULL AUTO_INCREMENT,
  `sub_category_name` varchar(255) DEFAULT NULL,
  `category_category_id` int DEFAULT NULL,
  PRIMARY KEY (`sub_category_id`),
  KEY `FK2jyxmlt6dk4tiqca606jb703x` (`category_category_id`),
  CONSTRAINT `FK2jyxmlt6dk4tiqca606jb703x` FOREIGN KEY (`category_category_id`) REFERENCES `category_table` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_category_table`
--

LOCK TABLES `sub_category_table` WRITE;
/*!40000 ALTER TABLE `sub_category_table` DISABLE KEYS */;
INSERT INTO `sub_category_table` VALUES (9,'equipment',5),(10,'Sport Sheos',6),(11,'equipment',7),(12,'equipment',8);
/*!40000 ALTER TABLE `sub_category_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-28  0:34:21
