-- Data for vending_machines table

INSERT INTO vending_machines (vending_machine_id, location, installation_date) VALUES
(1, 'Front Entrance', '2022-01-15'),
(2, 'Back Corner', '2022-01-15'),
(3, 'Near Washers', '2022-03-01');

-- Data for vending-inventory

INSERT INTO vending_inventory (inventory_id, vending_machine_id, product_name, current_stock, restock_level, last_restock_date) VALUES
(1, 1, 'All Soap (Powder)', 15, 5, '2023-07-01'),
(2, 1, 'Oxi Clean (Powder)', 10, 3, '2023-07-01'),
(3, 1, 'Liquid Gain', 20, 7, '2023-07-01'),
(4, 1, 'Liquid Tide', 18, 6, '2023-07-01'),
(5, 2, 'Foca (Laundry Detergent Powder)', 12, 4, '2023-07-15'),
(6, 2, 'Ariel (Laundry Detergent Powder)', 14, 5, '2023-07-15'),
(7, 2, 'Laundry Bag Small', 25, 10, '2023-07-15'),
(8, 2, 'Laundry Bag Large', 20, 8, '2023-07-15'),
(9, 3, 'Suavitel (Dryer Sheets)', 30, 10, '2023-08-01'),
(10, 3, 'Tide (Powder)', 16, 5, '2023-08-01'),
(11, 3, 'Suavitel (Powder)', 13, 4, '2023-08-01'),
(12, 3, 'Gain (Powder)', 15, 5, '2023-08-01'),
(13, 3, 'Clorox (Powder)', 10, 3, '2023-08-01');


-- Data for vending-transactions

INSERT INTO vending_transactions (vending_transaction_id, vending_machine_id, product_name, purchase_time, amount) VALUES
(1, 3, 'Clorox (Powder)', '2023-07-01 09:20:00', 3.25),
(2, 3, 'Oxi Clean (Powder)', '2023-07-01 11:08:00', 3.75),
(3, 3, 'Liquid Gain', '2023-07-01 13:44:00', 4.25),
(4, 3, 'Ariel (Laundry Detergent Powder)', '2023-07-01 14:46:00', 4.0),
(5, 2, 'Suavitel (Powder)', '2023-07-01 14:57:00', 3.5),
(6, 2, 'Liquid Tide', '2023-07-01 17:50:00', 4.5),
(7, 1, 'Oxi Clean (Powder)', '2023-07-01 18:35:00', 3.75),
(8, 1, 'Laundry Bag Small', '2023-07-02 07:57:00', 1.5),
(9, 1, 'Liquid Gain', '2023-07-02 08:49:00', 4.25),
(10, 3, 'Laundry Bag Small', '2023-07-02 09:57:00', 1.5),
(11, 1, 'Laundry Bag Large', '2023-07-02 11:17:00', 2.5),
(12, 1, 'Suavitel (Dryer Sheets)', '2023-07-02 14:26:00', 2.25),
(13, 2, 'Gain (Powder)', '2023-07-02 17:12:00', 3.5),
(14, 3, 'Suavitel (Powder)', '2023-07-02 17:27:00', 3.5),
(15, 3, 'Ariel (Laundry Detergent Powder)', '2023-07-03 08:39:00', 4.0),
(16, 1, 'Foca (Laundry Detergent Powder)', '2023-07-03 09:21:00', 3.75),
(17, 2, 'Suavitel (Dryer Sheets)', '2023-07-03 11:17:00', 2.25),
(18, 3, 'Ariel (Laundry Detergent Powder)', '2023-07-03 12:03:00', 4.0),
(19, 3, 'Tide (Powder)', '2023-07-03 12:52:00', 4.0),
(20, 3, 'Laundry Bag Small', '2023-07-03 17:23:00', 1.5),
(21, 3, 'Liquid Tide', '2023-07-06 07:22:00', 4.5),
(22, 1, 'Liquid Gain', '2023-07-06 07:59:00', 4.25),
(23, 1, 'Clorox (Powder)', '2023-07-06 11:14:00', 3.25),
(24, 1, 'Laundry Bag Small', '2023-07-06 16:14:00', 1.5),
(25, 2, 'Laundry Bag Large', '2023-07-06 18:37:00', 2.5),
(26, 1, 'Suavitel (Dryer Sheets)', '2023-07-07 07:57:00', 2.25),
(27, 2, 'Laundry Bag Small', '2023-07-07 08:55:00', 1.5),
(28, 3, 'Suavitel (Dryer Sheets)', '2023-07-07 10:12:00', 2.25),
(29, 1, 'Suavitel (Powder)', '2023-07-07 10:34:00', 3.5),
(30, 1, 'Foca (Laundry Detergent Powder)', '2023-07-07 11:35:00', 3.75),
(31, 3, 'Gain (Powder)', '2023-07-07 14:08:00', 3.5),
(32, 3, 'Tide (Powder)', '2023-07-07 14:39:00', 4.0),
(33, 1, 'Gain (Powder)', '2023-07-07 17:55:00', 3.5),
(34, 2, 'Liquid Gain', '2023-07-07 18:00:00', 4.25),
(35, 2, 'Liquid Gain', '2023-07-07 18:08:00', 4.25),
(36, 2, 'Oxi Clean (Powder)', '2023-07-07 18:38:00', 3.75),
(37, 2, 'Laundry Bag Small', '2023-07-08 08:55:00', 1.5),
(38, 3, 'Liquid Gain', '2023-07-08 09:08:00', 4.25),
(39, 3, 'Suavitel (Dryer Sheets)', '2023-07-08 09:15:00', 2.25),
(40, 3, 'Clorox (Powder)', '2023-07-08 10:33:00', 3.25),
(41, 1, 'Tide (Powder)', '2023-07-08 11:40:00', 4.0),
(42, 2, 'Oxi Clean (Powder)', '2023-07-08 13:23:00', 3.75),
(43, 3, 'Tide (Powder)', '2023-07-08 13:48:00', 4.0),
(44, 3, 'Liquid Gain', '2023-07-08 14:39:00', 4.25),
(45, 3, 'Liquid Tide', '2023-07-08 15:47:00', 4.5),
(46, 1, 'Laundry Bag Small', '2023-07-08 16:48:00', 1.5),
(47, 1, 'Suavitel (Dryer Sheets)', '2023-07-09 07:50:00', 2.25),
(48, 3, 'Foca (Laundry Detergent Powder)', '2023-07-09 09:31:00', 3.75),
(49, 3, 'Liquid Tide', '2023-07-09 12:57:00', 4.5),
(50, 2, 'Suavitel (Powder)', '2023-07-09 13:01:00', 3.5),
(51, 3, 'Liquid Gain', '2023-07-09 17:35:00', 4.25),
(52, 3, 'Clorox (Powder)', '2023-07-09 18:56:00', 3.25),
(53, 1, 'All Soap (Powder)', '2023-07-09 18:57:00', 3.5),
(54, 2, 'Oxi Clean (Powder)', '2023-07-10 12:32:00', 3.75),
(55, 2, 'Suavitel (Powder)', '2023-07-10 13:04:00', 3.5),
(56, 1, 'Liquid Tide', '2023-07-10 13:21:00', 4.5),
(57, 2, 'Liquid Tide', '2023-07-10 13:43:00', 4.5),
(58, 3, 'Oxi Clean (Powder)', '2023-07-10 14:57:00', 3.75),
(59, 3, 'Suavitel (Powder)', '2023-07-10 16:06:00', 3.5),
(60, 1, 'Tide (Powder)', '2023-07-11 07:03:00', 4.0),
(61, 3, 'Laundry Bag Small', '2023-07-11 07:36:00', 1.5),
(62, 2, 'Liquid Tide', '2023-07-11 10:57:00', 4.5),
(63, 3, 'Laundry Bag Large', '2023-07-11 16:21:00', 2.5),
(64, 3, 'Foca (Laundry Detergent Powder)', '2023-07-11 17:51:00', 3.75),
(65, 3, 'Clorox (Powder)', '2023-07-11 18:04:00', 3.25),
(66, 3, 'Oxi Clean (Powder)', '2023-07-13 10:18:00', 3.75),
(67, 3, 'Liquid Gain', '2023-07-13 12:48:00', 4.25),
(68, 1, 'Suavitel (Dryer Sheets)', '2023-07-13 14:39:00', 2.25),
(69, 3, 'Ariel (Laundry Detergent Powder)', '2023-07-13 17:11:00', 4.0),
(70, 1, 'All Soap (Powder)', '2023-07-13 17:58:00', 3.5),
(71, 2, 'Clorox (Powder)', '2023-07-14 08:16:00', 3.25),
(72, 3, 'Gain (Powder)', '2023-07-14 08:32:00', 3.5),
(73, 3, 'Suavitel (Powder)', '2023-07-14 09:31:00', 3.5),
(74, 3, 'Foca (Laundry Detergent Powder)', '2023-07-14 09:31:00', 3.75),
(75, 2, 'Suavitel (Dryer Sheets)', '2023-07-14 10:34:00', 2.25),
(76, 2, 'Oxi Clean (Powder)', '2023-07-14 13:51:00', 3.75),
(77, 2, 'Suavitel (Powder)', '2023-07-14 16:13:00', 3.5),
(78, 2, 'Oxi Clean (Powder)', '2023-07-14 16:36:00', 3.75),
(79, 2, 'Liquid Tide', '2023-07-14 18:22:00', 4.5),
(80, 2, 'Laundry Bag Small', '2023-07-15 07:01:00', 1.5),
(81, 3, 'Ariel (Laundry Detergent Powder)', '2023-07-15 07:47:00', 4.0),
(82, 3, 'Foca (Laundry Detergent Powder)', '2023-07-15 08:35:00', 3.75),
(83, 3, 'Liquid Tide', '2023-07-15 10:34:00', 4.5),
(84, 3, 'Oxi Clean (Powder)', '2023-07-15 12:05:00', 3.75),
(85, 3, 'Liquid Tide', '2023-07-15 12:39:00', 4.5),
(86, 3, 'Foca (Laundry Detergent Powder)', '2023-07-15 12:56:00', 3.75),
(87, 3, 'Laundry Bag Small', '2023-07-15 13:15:00', 1.5),
(88, 1, 'Gain (Powder)', '2023-07-15 16:05:00', 3.5),
(89, 3, 'Laundry Bag Small', '2023-07-15 16:44:00', 1.5),
(90, 2, 'Clorox (Powder)', '2023-07-15 17:45:00', 3.25),
(91, 1, 'Foca (Laundry Detergent Powder)', '2023-07-15 17:58:00', 3.75),
(92, 3, 'Ariel (Laundry Detergent Powder)', '2023-07-15 18:45:00', 4.0),
(93, 2, 'Suavitel (Dryer Sheets)', '2023-07-16 08:58:00', 2.25),
(94, 3, 'Liquid Tide', '2023-07-16 09:24:00', 4.5),
(95, 2, 'Suavitel (Dryer Sheets)', '2023-07-16 09:41:00', 2.25),
(96, 2, 'Clorox (Powder)', '2023-07-16 11:40:00', 3.25),
(97, 2, 'Clorox (Powder)', '2023-07-16 12:05:00', 3.25),
(98, 2, 'Suavitel (Dryer Sheets)', '2023-07-16 12:45:00', 2.25),
(99, 3, 'Gain (Powder)', '2023-07-16 13:11:00', 3.5),
(100, 1, 'Laundry Bag Small', '2023-07-16 14:04:00', 1.5),
(101, 3, 'Tide (Powder)', '2023-07-16 14:17:00', 4.0),
(102, 2, 'Suavitel (Powder)', '2023-07-16 16:31:00', 3.5),
(103, 1, 'Liquid Gain', '2023-07-16 16:46:00', 4.25),
(104, 1, 'Foca (Laundry Detergent Powder)', '2023-07-16 17:30:00', 3.75),
(105, 3, 'All Soap (Powder)', '2023-07-17 07:06:00', 3.5),
(106, 2, 'Suavitel (Powder)', '2023-07-17 07:16:00', 3.5),
(107, 1, 'Suavitel (Powder)', '2023-07-17 07:16:00', 3.5),
(108, 3, 'Liquid Tide', '2023-07-17 07:24:00', 4.5),
(109, 2, 'Foca (Laundry Detergent Powder)', '2023-07-17 09:56:00', 3.75),
(110, 2, 'Suavitel (Dryer Sheets)', '2023-07-17 10:38:00', 2.25),
(111, 3, 'Tide (Powder)', '2023-07-17 10:57:00', 4.0),
(112, 1, 'Clorox (Powder)', '2023-07-17 11:13:00', 3.25),
(113, 2, 'Liquid Gain', '2023-07-17 12:03:00', 4.25),
(114, 3, 'Suavitel (Powder)', '2023-07-17 18:54:00', 3.5),
(115, 2, 'Liquid Tide', '2023-07-18 08:10:00', 4.5),
(116, 3, 'Laundry Bag Small', '2023-07-18 13:01:00', 1.5),
(117, 3, 'Suavitel (Powder)', '2023-07-18 14:31:00', 3.5),
(118, 1, 'Laundry Bag Large', '2023-07-18 15:19:00', 2.5),
(119, 1, 'Clorox (Powder)', '2023-07-18 15:32:00', 3.25),
(120, 2, 'Tide (Powder)', '2023-07-18 16:01:00', 4.0),
(121, 1, 'Suavitel (Dryer Sheets)', '2023-07-18 16:54:00', 2.25),
(122, 3, 'Suavitel (Powder)', '2023-07-18 18:46:00', 3.5),
(123, 1, 'Gain (Powder)', '2023-07-20 08:45:00', 3.5),
(124, 1, 'Liquid Tide', '2023-07-20 09:43:00', 4.5),
(125, 1, 'Ariel (Laundry Detergent Powder)', '2023-07-20 10:42:00', 4.0),
(126, 1, 'Ariel (Laundry Detergent Powder)', '2023-07-20 11:23:00', 4.0),
(127, 2, 'Gain (Powder)', '2023-07-20 12:45:00', 3.5),
(128, 1, 'Laundry Bag Large', '2023-07-20 13:57:00', 2.5),
(129, 3, 'Ariel (Laundry Detergent Powder)', '2023-07-20 13:58:00', 4.0),
(130, 2, 'Foca (Laundry Detergent Powder)', '2023-07-20 14:28:00', 3.75),
(131, 3, 'Suavitel (Dryer Sheets)', '2023-07-20 18:46:00', 2.25),
(132, 2, 'Clorox (Powder)', '2023-07-21 08:34:00', 3.25),
(133, 3, 'Oxi Clean (Powder)', '2023-07-21 10:00:00', 3.75),
(134, 1, 'Laundry Bag Small', '2023-07-21 11:47:00', 1.5),
(135, 1, 'Tide (Powder)', '2023-07-21 12:49:00', 4.0),
(136, 1, 'Foca (Laundry Detergent Powder)', '2023-07-21 13:14:00', 3.75),
(137, 2, 'Clorox (Powder)', '2023-07-21 15:36:00', 3.25),
(138, 1, 'Liquid Tide', '2023-07-21 16:15:00', 4.5),
(139, 3, 'Suavitel (Powder)', '2023-07-21 16:52:00', 3.5),
(140, 2, 'Clorox (Powder)', '2023-07-22 08:17:00', 3.25),
(141, 2, 'Clorox (Powder)', '2023-07-22 08:52:00', 3.25),
(142, 1, 'Laundry Bag Large', '2023-07-22 09:09:00', 2.5),
(143, 3, 'Laundry Bag Small', '2023-07-22 10:01:00', 1.5),
(144, 3, 'Laundry Bag Small', '2023-07-22 10:12:00', 1.5),
(145, 1, 'Ariel (Laundry Detergent Powder)', '2023-07-22 12:27:00', 4.0),
(146, 3, 'Ariel (Laundry Detergent Powder)', '2023-07-22 12:29:00', 4.0),
(147, 1, 'Suavitel (Powder)', '2023-07-22 12:39:00', 3.5),
(148, 2, 'Liquid Tide', '2023-07-22 15:38:00', 4.5),
(149, 1, 'Laundry Bag Small', '2023-07-22 16:56:00', 1.5),
(150, 1, 'Tide (Powder)', '2023-07-22 18:01:00', 4.0),
(151, 3, 'Liquid Gain', '2023-07-22 18:25:00', 4.25),
(152, 3, 'Laundry Bag Large', '2023-07-23 07:43:00', 2.5),
(153, 2, 'Liquid Tide', '2023-07-23 07:59:00', 4.5),
(154, 2, 'Foca (Laundry Detergent Powder)', '2023-07-23 08:33:00', 3.75),
(155, 2, 'Laundry Bag Small', '2023-07-23 10:10:00', 1.5),
(156, 2, 'Suavitel (Dryer Sheets)', '2023-07-23 12:15:00', 2.25),
(157, 3, 'Laundry Bag Small', '2023-07-23 14:50:00', 1.5),
(158, 2, 'Liquid Tide', '2023-07-23 17:47:00', 4.5),
(159, 3, 'Liquid Tide', '2023-07-23 17:53:00', 4.5),
(160, 1, 'Liquid Tide', '2023-07-24 07:09:00', 4.5),
(161, 1, 'Suavitel (Dryer Sheets)', '2023-07-24 13:09:00', 2.25),
(162, 1, 'Tide (Powder)', '2023-07-24 13:32:00', 4.0),
(163, 2, 'Laundry Bag Small', '2023-07-24 14:06:00', 1.5),
(164, 3, 'Suavitel (Dryer Sheets)', '2023-07-24 16:56:00', 2.25),
(165, 3, 'Oxi Clean (Powder)', '2023-07-25 07:18:00', 3.75),
(166, 3, 'Liquid Gain', '2023-07-25 09:17:00', 4.25),
(167, 3, 'Suavitel (Dryer Sheets)', '2023-07-25 09:38:00', 2.25),
(168, 3, 'Liquid Tide', '2023-07-25 10:07:00', 4.5),
(169, 2, 'Liquid Gain', '2023-07-25 14:14:00', 4.25),
(170, 2, 'Tide (Powder)', '2023-07-25 15:51:00', 4.0),
(171, 2, 'Foca (Laundry Detergent Powder)', '2023-07-25 16:36:00', 3.75),
(172, 3, 'Tide (Powder)', '2023-07-25 17:52:00', 4.0),
(173, 1, 'Suavitel (Dryer Sheets)', '2023-07-27 08:33:00', 2.25),
(174, 1, 'Suavitel (Powder)', '2023-07-27 08:58:00', 3.5),
(175, 2, 'Laundry Bag Large', '2023-07-27 11:37:00', 2.5),
(176, 3, 'Suavitel (Dryer Sheets)', '2023-07-27 12:49:00', 2.25),
(177, 3, 'Suavitel (Dryer Sheets)', '2023-07-27 15:46:00', 2.25),
(178, 2, 'Liquid Gain', '2023-07-27 17:18:00', 4.25),
(179, 3, 'Tide (Powder)', '2023-07-27 17:39:00', 4.0),
(180, 2, 'Laundry Bag Small', '2023-07-28 07:12:00', 1.5),
(181, 3, 'Ariel (Laundry Detergent Powder)', '2023-07-28 08:27:00', 4.0),
(182, 1, 'Gain (Powder)', '2023-07-28 09:32:00', 3.5),
(183, 1, 'Foca (Laundry Detergent Powder)', '2023-07-28 12:25:00', 3.75),
(184, 2, 'All Soap (Powder)', '2023-07-28 12:51:00', 3.5),
(185, 2, 'Ariel (Laundry Detergent Powder)', '2023-07-28 13:37:00', 4.0),
(186, 2, 'Clorox (Powder)', '2023-07-28 13:41:00', 3.25),
(187, 1, 'Laundry Bag Large', '2023-07-28 14:16:00', 2.5),
(188, 1, 'Tide (Powder)', '2023-07-28 15:15:00', 4.0),
(189, 2, 'Laundry Bag Small', '2023-07-29 10:38:00', 1.5),
(190, 2, 'Clorox (Powder)', '2023-07-29 11:32:00', 3.25),
(191, 1, 'Liquid Gain', '2023-07-29 13:39:00', 4.25),
(192, 2, 'Laundry Bag Large', '2023-07-29 14:59:00', 2.5),
(193, 3, 'Clorox (Powder)', '2023-07-29 17:56:00', 3.25),
(194, 1, 'Foca (Laundry Detergent Powder)', '2023-07-30 07:45:00', 3.75),
(195, 1, 'Laundry Bag Large', '2023-07-30 08:15:00', 2.5),
(196, 3, 'Clorox (Powder)', '2023-07-30 11:39:00', 3.25),
(197, 3, 'Foca (Laundry Detergent Powder)', '2023-07-30 14:56:00', 3.75),
(198, 3, 'Liquid Tide', '2023-07-30 16:46:00', 4.5),
(199, 1, 'Liquid Tide', '2023-07-30 16:52:00', 4.5),
(200, 1, 'Laundry Bag Large', '2023-07-30 17:41:00', 2.5);
