DROP DATABASE IF EXISTS `fancrawl`;

CREATE DATABASE `fancrawl`;

USE fancrawl;

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'access_right'
-- Original access_right list
-- ---

DROP TABLE IF EXISTS `access_right`;

CREATE TABLE `access_right` (
  `id` INT(20) AUTO_INCREMENT,
  `state` VARCHAR(255) DEFAULT 'stopped',
  `fancrawl_full_name` VARCHAR(255),
  `fancrawl_username` VARCHAR(255),
  `fancrawl_instagram_id` VARCHAR(20),
  `code` VARCHAR(255),
  `token` VARCHAR(255),
  `fancrawl_profile_picture` VARCHAR(255),
  PRIMARY KEY (`id`)
) COMMENT 'Original access_right list';

-- ---
-- Table 's_followed_by'
-- Original followed_by list
-- ---

-- DROP TABLE IF EXISTS `s_followed_by`;

CREATE TABLE `s_followed_by` (
  `id` INT(20) AUTO_INCREMENT,
  `fancrawl_instagram_id` VARCHAR(20),
  `followed_by_full_name` VARCHAR(255),
  `followed_by_username` VARCHAR(255),
  `followed_by_id` VARCHAR(20),
  PRIMARY KEY (`id`)
) COMMENT 'Original followed_by list';

-- ---
-- Table 's_followers'
-- original followers
-- ---

DROP TABLE IF EXISTS `s_following`;

CREATE TABLE `s_following` (
  `id` INT AUTO_INCREMENT,
  `fancrawl_instagram_id` VARCHAR(20),
  `following_full_name` VARCHAR(255),
  `following_username` VARCHAR(255),
  `following_id` VARCHAR(20),
  PRIMARY KEY (`id`)
) COMMENT 'original followers';

-- ---
-- Table 'beta_followers'
-- Attempted followers
-- ---

DROP TABLE IF EXISTS `beta_followers`;

CREATE TABLE `beta_followers` (
  `id` INT  AUTO_INCREMENT,
  `fancrawl_instagram_id` VARCHAR(20),
  `added_follower_instagram_id` VARCHAR(20),
  `count` INT(9) DEFAULT 0,
  `following_status` INT(1) DEFAULT 1,
  `followed_by_status` INT(1) DEFAULT 0,
  `creation_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `refresh_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) COMMENT 'Attempted followers';
