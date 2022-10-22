/**todo cancelType 设置默认值 0?*/

CREATE TABLE IF NOT EXISTS `trade_order`
(
    `id` number NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    `sn`                      varchar(32)     NOT NULL,
    `type`                    int             NOT NULL,
    `terminal`                int             NOT NULL,
    `user_id`                 bigint unsigned NOT NULL,
    `user_ip`                 varchar(30)     NOT NULL,
    `user_remark`             varchar(200),
    `status`                  int             NOT NULL,
    `product_count`           int             NOT NULL,
    `cancel_type`             int                      DEFAULT NULL,
    `remark`                  varchar(200),
    `payed`                   bit(1)          NOT NULL DEFAULT FALSE,
    `pay_time`                datetime                 DEFAULT NULL,
    `finish_time`             datetime                 DEFAULT NULL,
    `cancel_time`             datetime                 DEFAULT NULL,
    `sku_original_price`      int             NOT NULL DEFAULT '0',
    `sku_promotion_price`     int             NOT NULL DEFAULT '0',
    `order_promotion_price`   int             NOT NULL DEFAULT '0',
    `delivery_price`          int             NOT NULL DEFAULT '0',
    `pay_price`               int                      DEFAULT '0',
    `pay_order_id`            int                      DEFAULT NULL,
    `pay_channel`             int                      DEFAULT NULL,
    `delivery_type`           int             NOT NULL DEFAULT '1',
    `actual_delivery_type`    int             NOT NULL DEFAULT '1',
    `delivery_template_id`     int                      DEFAULT NULL,
    `express_no`              int                      DEFAULT NULL,
    `delivery_status`         bit(1)          NOT NULL DEFAULT FALSE,
    `delivery_time`           datetime                 DEFAULT NULL,
    `receive_time`            datetime                 DEFAULT NULL,
    `receiver_name`           varchar(20)              DEFAULT NULL,
    `receiver_mobile`         varchar(20)              DEFAULT NULL,
    `receiver_area_id`        int                      DEFAULT NULL,
    `receiver_post_code`      int                      DEFAULT NULL,
    `receiver_detail_address` varchar(255)             DEFAULT NULL,
    `refund_status`           int             NOT NULL DEFAULT '0',
    `refund_price`            int             NOT NULL DEFAULT '0',
    `coupon_id`               bigint unsigned          DEFAULT NULL,
    `creator`                 varchar(64)              DEFAULT '',
    `create_time`             datetime        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updater`                 varchar(64)              DEFAULT '',
    `update_time`             datetime        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted`                 bit(1)          NOT NULL DEFAULT FALSE,
    PRIMARY KEY ("id")
);


CREATE TABLE IF NOT EXISTS `trade_order_item`
(
    `id` number NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    `user_id`               bigint unsigned NOT NULL,
    `order_id`              bigint unsigned NOT NULL,
    `spu_id`                bigint unsigned NOT NULL,
    `sku_id`                bigint unsigned NOT NULL,
    `properties`            json                     DEFAULT NULL,
    `name`                  varchar(128)             DEFAULT NULL,
    `pic_url`               varchar(200)             DEFAULT NULL,
    `count`                 int             NOT NULL,
    `commented`             bit(1)                   DEFAULT NULL,
    `original_price`        int             NOT NULL DEFAULT '0',
    `total_original_price`  int             NOT NULL DEFAULT '0',
    `total_promotion_price` int             NOT NULL DEFAULT '0',
    `present_price`         int             NOT NULL DEFAULT '0',
    `total_present_price`   int             NOT NULL DEFAULT '0',
    `total_pay_price`       int             NOT NULL DEFAULT '0',
    `refund_status`         int             NOT NULL DEFAULT '0',
    `refund_total`          int             NOT NULL DEFAULT '0',
    `creator`               varchar(64)              DEFAULT '',
    `create_time`           datetime        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updater`               varchar(64)              DEFAULT '',
    `update_time`           datetime        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted`               bit(1)                   DEFAULT FALSE,
    PRIMARY KEY ("id")
);
