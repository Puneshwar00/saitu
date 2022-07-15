-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 07:49 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saitu`
--

-- --------------------------------------------------------

--
-- Table structure for table `agriculture`
--

CREATE TABLE `agriculture` (
  `Area_of_land_under_Villlage_Chief_in_ha` varchar(45) DEFAULT NULL,
  `Area_of_land_under_Private_or_individual_land_holding` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `annexure_i`
--

CREATE TABLE `annexure_i` (
  `Sl_No` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Father_or_Wife_or_husband_Name` varchar(45) DEFAULT NULL,
  `Sex` enum('M','f') DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Occpation` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Aadhar_Number` decimal(14,0) DEFAULT NULL,
  `Remarks` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `annexure_ii`
--

CREATE TABLE `annexure_ii` (
  `Sl_No` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Father_or_Wife_or_husband_Name` varchar(45) DEFAULT NULL,
  `Sex` enum('M','f') DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Occpation` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Aadhar_Number` decimal(14,0) DEFAULT NULL,
  `Remarks` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `area_of_land_under_in_ha`
--

CREATE TABLE `area_of_land_under_in_ha` (
  `sl_no` int(11) NOT NULL,
  `Crops_name` varchar(30) NOT NULL,
  `Area_in_ha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bridge`
--

CREATE TABLE `bridge` (
  `No_of_Bridges` int(11) DEFAULT NULL,
  `Condition_of_bridge` varchar(45) DEFAULT NULL,
  `Additional_requirement` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `community_hall`
--

CREATE TABLE `community_hall` (
  `Whether_Community_Hall_constructed_in_the_village_YorN` bit(10) NOT NULL,
  `condition_of_the_Community_Hall` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `demography`
--

CREATE TABLE `demography` (
  `Male` int(11) NOT NULL,
  `Female` int(11) NOT NULL,
  `Total_population` int(11) NOT NULL,
  `No_of_disable_persons` int(11) NOT NULL,
  `No_of_persons_above_60yrs` int(11) NOT NULL,
  `No_of_widow` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `Sl_no` int(11) NOT NULL,
  `Name_of_School` varchar(45) DEFAULT NULL,
  `Type_of_Schools)` varchar(45) DEFAULT NULL,
  `School_condition_good_or_bad_or_dilapidated` varchar(45) DEFAULT NULL,
  `Toilet` varchar(45) DEFAULT NULL,
  `Drinking_Water` varchar(45) DEFAULT NULL,
  `No_of_drop_out_students` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `govt_schemesorbeneficiary_schemes`
--

CREATE TABLE `govt_schemesorbeneficiary_schemes` (
  `Sl_No` int(11) NOT NULL,
  `Schemes` varchar(45) DEFAULT NULL,
  `Total_No_of_beneficiaries` int(11) DEFAULT NULL,
  `Additional_requirements` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `head_of_the_village`
--

CREATE TABLE `head_of_the_village` (
  `sl_no` int(11) NOT NULL,
  `name_of_the_village` varchar(45) NOT NULL,
  `name_of_chiefORchairman` varchar(45) NOT NULL,
  `phone_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `housing`
--

CREATE TABLE `housing` (
  `No_of_households` int(11) NOT NULL,
  `No_of_Pucca_houses` int(11) NOT NULL,
  `No_of_Semi_Pucca_houses` int(11) NOT NULL,
  `No_of_Kutcha_houses` int(11) NOT NULL,
  `No_of_household_with_toilet` int(11) NOT NULL,
  `No_of_household_without_toilet` int(11) NOT NULL,
  `No_of_households_without_houses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `immediate_needs_of_the_village`
--

CREATE TABLE `immediate_needs_of_the_village` (
  `Sl_no` int(11) NOT NULL,
  `immediate_needs_items` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_agriculture_or_horticulture_products_of_the_village`
--

CREATE TABLE `main_agriculture_or_horticulture_products_of_the_village` (
  `Sl_no` int(11) NOT NULL,
  `Crops_name` varchar(30) NOT NULL,
  `area_in_ha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nearest_financial_institute_available`
--

CREATE TABLE `nearest_financial_institute_available` (
  `Banks` varchar(45) DEFAULT NULL,
  `Business_Correspondents` varchar(45) DEFAULT NULL,
  `Common_Service_Centre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nearest_health_facilities`
--

CREATE TABLE `nearest_health_facilities` (
  `CHC` varchar(45) DEFAULT NULL,
  `District_Hospital` varchar(45) DEFAULT NULL,
  `Health_&_Wellness_Centre` varchar(45) DEFAULT NULL,
  `PHC` varchar(45) DEFAULT NULL,
  `PHSC` varchar(45) DEFAULT NULL,
  `Private` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nearest_police_station`
--

CREATE TABLE `nearest_police_station` (
  `Sl_no` int(11) NOT NULL,
  `Police_station_name` varchar(45) NOT NULL,
  `Km_from_the_village` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nearest_schools`
--

CREATE TABLE `nearest_schools` (
  `Sl_no` int(11) NOT NULL,
  `Name_of School` varchar(45) DEFAULT NULL,
  `Type_of_School` varchar(45) DEFAULT NULL,
  `School_condition_good_bad_dilapidated` varchar(45) DEFAULT NULL,
  `Toilet` varchar(45) DEFAULT NULL,
  `Drinking_Water` varchar(45) DEFAULT NULL,
  `No_of_drop_out_students` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `network_connectivity`
--

CREATE TABLE `network_connectivity` (
  `strong_or_weak_or_shadow` varchar(20) NOT NULL,
  `Name_of_service_provider` varchar(20) NOT NULL,
  `No_of_tower_installed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `No_of_household_with_Central_or_State_govt_Employees` int(11) DEFAULT NULL,
  `No_of_household_with_employee_in_NGOorChurchorPrivate_Sectors` int(11) DEFAULT NULL,
  `No_of_household_with_ShopOrVegetable_vendors` int(11) DEFAULT NULL,
  `No_of_household_engaged_in_Commercial_businessOrPvt_enterprises` int(11) DEFAULT NULL,
  `No_of_household_dependent_on_daily_wages` int(11) DEFAULT NULL,
  `No_of_household_without_any_gainful_employment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `power`
--

CREATE TABLE `power` (
  `No_of_household_with_power_connection` int(11) NOT NULL,
  `Whether_individual_household_prepaid_or_Community_prepaid` varchar(20) NOT NULL,
  `No_of_household_without_power_connection` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `road`
--

CREATE TABLE `road` (
  ` Types_of_roads_NH_or_SH_or_IVR_or_MDR_or_ODR` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `road_condition_bituminous_road_or_black_topping_in_km`
--

CREATE TABLE `road_condition_bituminous_road_or_black_topping_in_km` (
  `Good_condition_in_Km` int(11) NOT NULL,
  `Need_repairing_in_Km` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `road_condition_earth_work_in_km`
--

CREATE TABLE `road_condition_earth_work_in_km` (
  `Good_condition_in_Km` int(11) NOT NULL,
  `Need_repairing_in_Km` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `road_condition_kutcha_repairing_in_km`
--

CREATE TABLE `road_condition_kutcha_repairing_in_km` (
  `Good_condition_in_Km` int(11) NOT NULL,
  `Need_repairing_in_Km` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `types_of_health_facilities_available`
--

CREATE TABLE `types_of_health_facilities_available` (
  `District_Hospital` varchar(45) DEFAULT NULL,
  `CHC` varchar(45) DEFAULT NULL,
  `PHC` varchar(45) DEFAULT NULL,
  `PHSC` varchar(45) DEFAULT NULL,
  `Health_&_Wellness_Centre` varchar(45) DEFAULT NULL,
  `Private` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `type_of_financial_institute_available`
--

CREATE TABLE `type_of_financial_institute_available` (
  `Bank` varchar(45) NOT NULL,
  `Business_Correspondents` varchar(45) NOT NULL,
  `Common _Service_Centre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `village_potential_type_of_human_resource_available`
--

CREATE TABLE `village_potential_type_of_human_resource_available` (
  `Skilled` int(11) NOT NULL,
  `Semi_skilled` int(11) NOT NULL,
  `Unskilled` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `village_potential_type_of_natural_resources_available`
--

CREATE TABLE `village_potential_type_of_natural_resources_available` (
  `Type_of_natural_resources_available` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `water`
--

CREATE TABLE `water` (
  `Sl_no` int(11) NOT NULL,
  `Type_of_water_source` varchar(45) DEFAULT NULL,
  `Distance_of_water_source_from_the_village` varchar(45) DEFAULT NULL,
  `Nature_of_availability` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annexure_i`
--
ALTER TABLE `annexure_i`
  ADD PRIMARY KEY (`Sl_No`);

--
-- Indexes for table `annexure_ii`
--
ALTER TABLE `annexure_ii`
  ADD PRIMARY KEY (`Sl_No`);

--
-- Indexes for table `area_of_land_under_in_ha`
--
ALTER TABLE `area_of_land_under_in_ha`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`Sl_no`);

--
-- Indexes for table `head_of_the_village`
--
ALTER TABLE `head_of_the_village`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `immediate_needs_of_the_village`
--
ALTER TABLE `immediate_needs_of_the_village`
  ADD PRIMARY KEY (`Sl_no`);

--
-- Indexes for table `main_agriculture_or_horticulture_products_of_the_village`
--
ALTER TABLE `main_agriculture_or_horticulture_products_of_the_village`
  ADD PRIMARY KEY (`Sl_no`);

--
-- Indexes for table `nearest_police_station`
--
ALTER TABLE `nearest_police_station`
  ADD PRIMARY KEY (`Sl_no`);

--
-- Indexes for table `nearest_schools`
--
ALTER TABLE `nearest_schools`
  ADD PRIMARY KEY (`Sl_no`);

--
-- Indexes for table `water`
--
ALTER TABLE `water`
  ADD PRIMARY KEY (`Sl_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annexure_i`
--
ALTER TABLE `annexure_i`
  MODIFY `Sl_No` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `annexure_ii`
--
ALTER TABLE `annexure_ii`
  MODIFY `Sl_No` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `area_of_land_under_in_ha`
--
ALTER TABLE `area_of_land_under_in_ha`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `head_of_the_village`
--
ALTER TABLE `head_of_the_village`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `immediate_needs_of_the_village`
--
ALTER TABLE `immediate_needs_of_the_village`
  MODIFY `Sl_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_agriculture_or_horticulture_products_of_the_village`
--
ALTER TABLE `main_agriculture_or_horticulture_products_of_the_village`
  MODIFY `Sl_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nearest_police_station`
--
ALTER TABLE `nearest_police_station`
  MODIFY `Sl_no` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
