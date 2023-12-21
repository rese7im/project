-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 03:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vogue`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_id`, `username`, `password`, `updated_at`) VALUES
(1, 3, 'reese7im', 'wysiwy52402', '2023-12-13 18:18:53'),
(2, 11, 'Salahuddin', 'adswwrwfmin1', '2023-12-13 18:18:53'),
(3, 12, 'Gumban', 'addhsowewumin', '2023-12-13 18:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_title` varchar(300) NOT NULL,
  `blog_desc` varchar(300) NOT NULL,
  `blog_detail` varchar(2000) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_title`, `blog_desc`, `blog_detail`, `ufile`, `updated_at`) VALUES
(4, 'A Bachelor of Fine Arts in Graphic Design (BFA) ', 'Students master visual communication, honing skills vital for dynamic careers in graphic design, branding strategy, and multimedia production. ', ' Develops artistic and technical skills in visual communication, preparing students for careers in graphic design, branding, and multimedia.\r\n', '6835ELcbwExyxZk.jpg', '2023-12-08 01:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `xfile` varchar(1000) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `xfile`, `ufile`, `updated_at`) VALUES
(1, '8148fag.png', '8437log.png', '2022-07-15 10:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `port_title` varchar(500) NOT NULL,
  `port_desc` varchar(1000) NOT NULL,
  `port_detail` varchar(2000) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `port_title`, `port_desc`, `port_detail`, `ufile`, `updated_at`) VALUES
(8, 'Systems Analyst', 'Analyze and design information systems, ensuring they meet organizational needs. Evaluate and enhance system efficiency.', 'A Systems Analyst plays a crucial role in bridging the gap between business needs and technological solutions. They are responsible for analyzing and understanding an organization\'s processes, workflows, and systems, and then designing information systems that effectively address the organization\'s requirements. ', '98004080henri-l-547224-unsplash.jpg', '2023-12-08 02:34:10'),
(9, 'UX/UI Designer', 'A UX/UI Designer focuses on creating visually appealing and user-friendly interfaces for digital products. ', 'This role combines design principles with user-centric thinking to enhance the overall user experience, ensuring that digital products are intuitive, accessible, and aesthetically pleasing.', '3511_qra9YzJraJZQVrpdoAAsww.png', '2023-12-08 02:44:31'),
(10, 'Digital Marketing Specialist', 'Create and manage social media campaigns to enhance brand presence and engage with the target audience.', 'A Digital Marketing Specialist utilizes IT skills for online marketing strategies, including search engine optimization (SEO), social media management, and analytics. They play a crucial role in increasing online visibility, driving traffic, and optimizing digital marketing campaigns for businesses.', '3835digital+marketing+specialist.jpg', '2023-12-08 02:45:39'),
(11, 'Cybersecurity Analyst', 'Cybersecurity Analysts play a crucial role in maintaining the confidentiality, integrity, and availability of an organization\'s information.', 'A Cybersecurity Analyst is responsible for safeguarding computer systems, networks, and data from security threats. This role involves monitoring for potential security incidents, analyzing vulnerabilities, and implementing measures to protect against cyberattacks.', '596Cyber-Security-Analyst-1.jpg', '2023-12-08 02:48:02'),
(12, 'DevOps Engineer', 'Foster collaboration between development, operations, and other stakeholders to streamline the software development lifecycle.', 'This role involves the use of automation, continuous integration, and continuous delivery (CI/CD) practices to streamline software development and ensure seamless integration between development and IT operations.\r\n\r\n', '6749DevOps-Engineer.jpg', '2023-12-08 02:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `resume_title` varchar(199) NOT NULL,
  `resume_desc` varchar(199) NOT NULL,
  `resume_desc1` varchar(118) NOT NULL,
  `resume_desc2` varchar(199) NOT NULL,
  `background` text NOT NULL,
  `ufile` varchar(500) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `user_id`, `resume_title`, `resume_desc`, `resume_desc1`, `resume_desc2`, `background`, `ufile`, `updated_at`) VALUES
(1, 11, 'Mark Salahuddin', 'Programmer', 'Claret', 'Pilar College', 'Lives In Philippines, Zamboanga City and studied at Pilar College. Aspiring to be a Cybersecurity', '', '2023-12-13 15:58:50'),
(2, 3, 'Therese C. Lim', 'Pilar College', 'Pilar College', 'Pilar College', 'I reside in Zamboanga, a city rich in history. Firmly believing in linking the past to the present, —creating a transformative journey. Join, us and be part of a legacy that bridges the past and present, where careers flourish and lives are elevated.', 'uploads/', '2023-12-21 13:40:56'),
(3, 12, 'Gumban Mark', 'Pilar College', 'Pilar College', 'Pilar College', 'I', '', '2023-12-13 18:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `section_title`
--

CREATE TABLE `section_title` (
  `id` int(11) NOT NULL,
  `about_title` varchar(500) NOT NULL,
  `about_text` varchar(1000) NOT NULL,
  `why_title` varchar(500) NOT NULL,
  `why_text` varchar(1000) NOT NULL,
  `service_title` varchar(500) NOT NULL,
  `service_text` varchar(1000) NOT NULL,
  `port_title` varchar(500) NOT NULL,
  `port_text` varchar(1000) NOT NULL,
  `test_title` varchar(500) NOT NULL,
  `test_text` varchar(1000) NOT NULL,
  `contact_title` varchar(500) NOT NULL,
  `contact_text` varchar(1000) NOT NULL,
  `enquiry_title` varchar(500) NOT NULL,
  `enquiry_text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section_title`
--

INSERT INTO `section_title` (`id`, `about_title`, `about_text`, `why_title`, `why_text`, `service_title`, `service_text`, `port_title`, `port_text`, `test_title`, `test_text`, `contact_title`, `contact_text`, `enquiry_title`, `enquiry_text`) VALUES
(1, 'We help to grow your business.', '\"Accelerate your success with our proven strategies. Your growth journey, simplified through strategic partnership.\"', 'Work smarter, not harder.', '\"Experience unparalleled business growth with our dedicated team. Transform challenges into opportunities and thrive together.\"', 'We provide the best digital services', '\"Empowering Success: Tailored Solutions for Your Technology Growth\"', 'Our Recent Works', '\"Explore Our Success Stories: A Showcase of Achievements and Transformations\"', 'Our clients says', '\"Our Clients Speak: Hear the Success Stories and Experiences with Our Exceptional Services\"', 'Let\'s connect!', 'BSIT enthusiasts, unite! Coding over coffee, debugging through the night—tech passion fuels us. Connect, learn, grow together.', 'Looking for the best technological digital agency & marketing solution?', 'BSIT bond: bytes of knowledge shared, lines of code written. Networking, learning, thriving—tech comrades forever!');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `service_title` varchar(500) NOT NULL,
  `service_desc` varchar(1000) NOT NULL,
  `service_detail` varchar(2000) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `upadated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `service_title`, `service_desc`, `service_detail`, `ufile`, `upadated_at`) VALUES
(5, 'BSSE', 'BSSE, Concentrates on the principles and practices of software development, including design, testing, and maintenance', ' Science in Software Engineering (BSSE)I t combines theoretical foundations with hands-on practical experience, preparing graduates for careers in software engineering and related fields.', '6169it_computer_programming.jpg', '2023-12-08 02:30:20'),
(6, 'BSIT Nexus: Where Innovation Meets Implementation', 'The specific curriculum may vary among universities, but common courses include programming languages, data structures, computer networks, ', 'The goal of the BSIT program is to provide students with a strong foundation in both theoretical concepts and practical skills needed to design, implement, and manage information technology solutions in various organizational settings.', '953594362.jpg', '2023-12-10 01:17:04'),
(7, '\"BSIT Brilliance: A Portfolio of Technological Mastery and Innovation\"', '\"BSIT Brilliance\" is a dynamic portfolio showcasing the technological mastery and innovation of individuals', 'Hiring someone from this elite pool ensures a candidate with the expertise to drive technological excellence in your organization. Welcome the future of IT with a BSIT graduate — where brilliance meets innovation.', '852029668788-7884680_hero-headshot-sitting-hd-png-do1wnload.jpg', '2023-12-10 01:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

CREATE TABLE `siteconfig` (
  `id` int(11) NOT NULL,
  `site_keyword` varchar(1000) NOT NULL,
  `site_desc` varchar(500) NOT NULL,
  `site_title` varchar(300) NOT NULL,
  `site_about` varchar(1000) NOT NULL,
  `site_footer` varchar(1000) NOT NULL,
  `follow_text` varchar(1000) NOT NULL,
  `site_url` varchar(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siteconfig`
--

INSERT INTO `siteconfig` (`id`, `site_keyword`, `site_desc`, `site_title`, `site_about`, `site_footer`, `follow_text`, `site_url`, `updated_at`) VALUES
(1, 'Web Developing, Innovation', 'The RISE of the Innovation Porgamming', 'BSIT', '        We are,  In the bustling world of technology, the enigmatic \"BSIT Nexus Laxus\" emerges as a groundbreaking initiative. This whimsical endeavor seeks to bridge the gap between traditional systems and futuristic innovation. Picture a realm where Limitless Advancements and Xploration of Uncharted Solutions come together, creating a synergy that sparks creativity and connectivity. In the digital tapestry of possibilities, BSIT Nexus Laxus stands as a beacon, inviting tech enthusiasts to join the journey of redefining the future.', '© 2022 All Rights Reserved', 'We are the, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit nihil tenetur minus quidem est deserunt molestias.', 'http://localhost:8080/vogue/', '2023-12-08 00:56:01');

-- --------------------------------------------------------

--
-- Table structure for table `sitecontact`
--

CREATE TABLE `sitecontact` (
  `id` int(11) NOT NULL,
  `phone1` varchar(150) NOT NULL,
  `phone2` varchar(150) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `latitude` varchar(150) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sitecontact`
--

INSERT INTO `sitecontact` (`id`, `phone1`, `phone2`, `email1`, `email2`, `longitude`, `latitude`, `updated_at`) VALUES
(1, '+89 (0) 2354 5470091', '+89 (0) 2354 5470091', 'greatthursday@company.com', 'thursday@company.com', '7.099737483', '7.63734634', '2023-12-06 12:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slide_title` varchar(150) NOT NULL,
  `slide_text` varchar(500) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slide_title`, `slide_text`, `ufile`, `updated_at`) VALUES
(2, 'We are the best of the best', 'Web Developing', '1801943621.jpg', '2023-12-08 01:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `fa` varchar(150) NOT NULL,
  `social_link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `name`, `fa`, `social_link`) VALUES
(5, 'Facebook', 'fa-enevelope', 'https://facebook.com/faithyemi'),
(6, 'Facebook', 'fa-enevelope', 'https://facebook.com/faithyemi');

-- --------------------------------------------------------

--
-- Table structure for table `static`
--

CREATE TABLE `static` (
  `id` int(11) NOT NULL,
  `stitle` varchar(150) NOT NULL,
  `stext` varchar(500) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `static`
--

INSERT INTO `static` (`id`, `stitle`, `stext`, `updated_at`) VALUES
(1, 'Ignite Your Tech Journey!', '\"Unlock Your Future! Dive into the world of tech innovation, gain hands-on skills, and shape your career in IT. Join us for a dynamic learning experience!\"', '2023-12-10 00:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `testimony`
--

CREATE TABLE `testimony` (
  `id` int(11) NOT NULL,
  `message` varchar(300) NOT NULL,
  `name` varchar(150) NOT NULL,
  `position` varchar(100) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimony`
--

INSERT INTO `testimony` (`id`, `message`, `name`, `position`, `ufile`, `updated_at`) VALUES
(9, 'IT jobs encompass a wide range of roles in technology, from software development and system administration to cybersecurity and data analysis.  Professionals in IT design, implement, and maintain systems, ensuring seamless operations. With roles like programmers, network engineers, and IT consultant', 'Vodka', 'Programmer', '46511801943621.jpg', '2023-12-08 01:31:09'),
(10, 'IT jobs are crucial in every industry, supporting businesses in their digital transformation and safeguarding against cyber threats. In a rapidly evolving tech landscape, IT professionals play a pivotal role in shaping and advancing the digital future.\r\n\r\n\r\n\r\n\r\n\r\n', 'Gin', 'Web Developer', '5778ELcbwExyxZk.jpg', '2023-12-08 01:32:03'),
(12, 'In the ever-evolving landscape of technology, programmers play a pivotal role as architects of the digital realm. A programmer, often referred to as a coder or developer, is a creative individual armed with the ability to translate ideas into executable code, shaping the digital experiences we encou', 'Vermouth', 'Programmer', '3834BSCS-in-Pakistan-1-1024x683.webp', '2023-12-08 02:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Name` varchar(199) NOT NULL,
  `Motto` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `user_id`, `Name`, `Motto`) VALUES
(1, 3, 'Therese C. Lim', 'Linking the past and the present future'),
(2, 11, 'Mark Salahuddin', 'Stay foolish'),
(3, 12, 'Mark Gumban', 'YOLO');

-- --------------------------------------------------------

--
-- Table structure for table `user_no`
--

CREATE TABLE `user_no` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first` text NOT NULL,
  `second` text NOT NULL,
  `third` text NOT NULL,
  `fourth` text NOT NULL,
  `fifth` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_no`
--

INSERT INTO `user_no` (`id`, `user_id`, `first`, `second`, `third`, `fourth`, `fifth`) VALUES
(1, 3, '• Fashion and Style', ' • Cutting-Edge Technology', ' • Business Insights ', '• Global Travel and Cultural Discoveries', '• Reese Adventures '),
(2, 11, '• Innovation', ' • Digital Solutions', ' • Tech Advances', '• Technological Breakthroughs', '• Amara Adventures '),
(3, 12, '• Digital Transformation', ' • Cybernetics', ' • High-Tech', '• E-Infrastructure', '• Emerging Technologies');

-- --------------------------------------------------------

--
-- Table structure for table `why_us`
--

CREATE TABLE `why_us` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `why_us`
--

INSERT INTO `why_us` (`id`, `title`, `detail`, `updated_on`) VALUES
(6, 'Era', 'The contemporary era is marked by the rapid advancement of technology, ushering in the age of digital transformation. Characterized by interconnectedness and globalization, this era has seen unprecedented access to information, communication, and resources, shaping the way individuals and societies function.', '2023-12-08 02:01:40'),
(8, 'Innovations', 'Space exploration is undergoing a renaissance with private companies leading the way, opening new frontiers for human exploration and resource utilization. Overall, the era is defined by a relentless pursuit of efficiency, connectivity, and sustainability through technological innovation.', '2023-12-08 02:02:56'),
(9, 'Trends', 'In the fast-paced landscape of the 21st century, technology has become the driving force behind societal evolution. From artificial intelligence to blockchain, the world is witnessing a rapid transformation that has significant implications for various industries and everyday life. ', '2023-12-08 02:57:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_title`
--
ALTER TABLE `section_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siteconfig`
--
ALTER TABLE `siteconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitecontact`
--
ALTER TABLE `sitecontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static`
--
ALTER TABLE `static`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimony`
--
ALTER TABLE `testimony`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_no`
--
ALTER TABLE `user_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_us`
--
ALTER TABLE `why_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `section_title`
--
ALTER TABLE `section_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sitecontact`
--
ALTER TABLE `sitecontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `static`
--
ALTER TABLE `static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimony`
--
ALTER TABLE `testimony`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_no`
--
ALTER TABLE `user_no`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `why_us`
--
ALTER TABLE `why_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
