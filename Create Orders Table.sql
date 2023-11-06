CREATE TABLE `orders` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `order_date` DATE NOT NULL,
    `total_amount` BIGINT(20) NOT NULL,
    `customer_id` BIGINT(20) UNSIGNED NOT NULL ,
    FOREIGN KEY(`customer_id`) REFERENCES `customer`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP
    

);
