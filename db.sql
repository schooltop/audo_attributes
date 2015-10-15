SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `order_attribute_values`
-- ----------------------------
DROP TABLE IF EXISTS `order_attribute_values`;
CREATE TABLE `order_attribute_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL COMMENT '属性ID',
  `value` varchar(255) DEFAULT NULL COMMENT '属性值',
  `system` varchar(255) DEFAULT NULL COMMENT '对接系统',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL COMMENT '订单ID',
  `attribute_en_name` varchar(255) DEFAULT NULL COMMENT '订单英文名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sync_attributes`
-- ----------------------------
DROP TABLE IF EXISTS `sync_attributes`;
CREATE TABLE `sync_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `en` varchar(255) DEFAULT NULL COMMENT '属性英文名',
  `cn` varchar(255) DEFAULT NULL COMMENT '属性中文名',
  `type` varchar(255) DEFAULT NULL COMMENT '属性对应模型',
  `system` varchar(255) DEFAULT NULL COMMENT '属性对接系统',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
