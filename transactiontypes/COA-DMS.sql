# DUMP FILE
# Database is ported from MS Access

CREATE DATABASE IF NOT EXISTS `movedb`;
USE `movedb`;

#
# Table structure for table 'JEV_Record'
#

DROP TABLE IF EXISTS `JEV_Record`;

CREATE TABLE `JEV_Record` (
  `JEV Number` LONGTEXT NOT NULL, 
  `Check Number` LONGTEXT, 
  `Amount` DECIMAL(19,4) DEFAULT 0, 
  `Status` LONGTEXT, 
  `Voucher Number` LONGTEXT, 
  `Date of Voucher` DATE, 
  `Payee` LONGTEXT, 
  `Source of Fund` VARCHAR(255), 
  `Type of Transaction` LONGTEXT, 
  `Submitted Documents` LONGTEXT, 
  `Unsubmitted Documents` LONGTEXT, 
  PRIMARY KEY (`JEV Number`(100))
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'JEV_Record'
#

INSERT INTO `JEV_Record` (`JEV Number`, `Check Number`, `Amount`, `Status`, `Voucher Number`, `Date of Voucher`, `Payee`, `Source of Fund`, `Type of Transaction`, `Submitted Documents`, `Unsubmitted Documents`) VALUES ('1', '12345', NULL, 'Submitted', '100-200-300', '2015-12-03', 'gxxllan', 'general fund', NULL, NULL, NULL);
# 1 records

#
# Table structure for table 'Type of Transaction'
#

DROP TABLE IF EXISTS `Type of Transaction`;

CREATE TABLE `Type of Transaction` (
  `ID` INTEGER AUTO_INCREMENT, 
  `types_Level1` LONGTEXT, 
  `types_Level2` LONGTEXT, 
  `types_Level3` LONGTEXT, 
  `types_Level4` LONGTEXT, 
  UNIQUE (`ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Type of Transaction'
#

INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (1, 'Cash Advances', 'Granting of Cash Advances', 'Payroll Fund for Salaries, Wages, Allowances, Honoraria and Other Similar Expenses', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (2, 'Cash Advances', 'Granting of Cash Advances', 'Petty Cash Fund', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (3, 'Cash Advances', 'Granting of Cash Advances', 'Field / Activity Current Operating Expenses', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (4, 'Cash Advances', 'Granting of Cash Advances', 'Traveling Allowances', 'Local Travel (Granting of CA)');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (5, 'Cash Advances', 'Granting of Cash Advances', 'Traveling Allowances', 'Foreign Travel (Granting of CA)');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (6, 'Cash Advances', 'Liquidation of Cash Advances', 'Payroll Fund for Salaries, Wages, Allowances, Honoraria and Other Similar Expenses', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (7, 'Cash Advances', 'Liquidation of Cash Advances', 'Petty Cash Fund', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (8, 'Cash Advances', 'Liquidation of Cash Advances', 'Field/Activity Current Operating Expenses', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (9, 'Cash Advances', 'Liquidation of Cash Advances', 'Traveling Allowances', 'Local Travel (Liquidation of CA)');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (10, 'Cash Advances', 'Liquidation of Cash Advances', 'Traveling Allowances', 'Foreign Travel (Liquidation of CA)');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (11, 'Fund Transfers to Non-Government Organizations / People’s Organizations (NGOs/POs)', 'Release of Funds', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (12, 'Fund Transfers to Non-Government Organizations / People’s Organizations (NGOs/POs)', 'Implementation and Liquidation of Funds Released', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (13, 'Fund Transfers to Non-Government Organizations / People’s Organizations (NGOs/POs)', 'Staggered Release of Funds to NGO/PO', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (14, 'Fund Transfers', 'Transfer of Funds to Implementing Agencies', 'Transfer', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (15, 'Fund Transfers', 'Transfer of Funds to Implementing Agencies', 'Implementation and Liquidation by Implementing Agency', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (16, 'Fund Transfers', 'Transfer of Funds to Implementing Agencies', 'Liquidation by Source Agency', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (17, 'Fund Transfers', 'From Trust Fund to the General Fund for Unspent Balance/Excess Amount', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (18, 'Salary', 'Individual Claims', 'First Salary', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (19, 'Salary', 'Individual Claims', 'Salary (if deleted from the payroll)', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (20, 'Salary', 'Individual Claims', 'Salary of Casual/Contractual Personnel', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (21, 'Salary', 'Individual Claims', 'Salary Differentials due to Promotion and/or Step Increment', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (22, 'Salary', 'Individual Claims', 'Last Salary', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (23, 'Salary', 'Individual Claims', 'Salary due to heirs of deceased employee', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (24, 'Salary', 'Individual Claims', 'Maternity Leave', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (25, 'Salary', 'General Claims through the Automated Teller Machine (All Employees)', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (26, 'Allowances, Honoraria and Other Forms of Compensation', 'Personnel Economic Relief Allowance (PERA)', 'First Salary', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (27, 'Allowances, Honoraria and Other Forms of Compensation', 'Personnel Economic Relief Allowance (PERA)', 'Salary (if deleted from the payroll)', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (28, 'Allowances, Honoraria and Other Forms of Compensation', 'Personnel Economic Relief Allowance (PERA)', 'Salary of Casual/Contractual Personnel', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (29, 'Allowances, Honoraria and Other Forms of Compensation', 'Personnel Economic Relief Allowance (PERA)', 'Salary Differentials due to Promotion and/or Step Increment', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (30, 'Allowances, Honoraria and Other Forms of Compensation', 'Personnel Economic Relief Allowance (PERA)', 'Last Salary', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (31, 'Allowances, Honoraria and Other Forms of Compensation', 'Personnel Economic Relief Allowance (PERA)', 'Salary due to heirs of deceased employee', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (32, 'Allowances, Honoraria and Other Forms of Compensation', 'Personnel Economic Relief Allowance (PERA)', 'Maternity Leave', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (33, 'Allowances, Honoraria and Other Forms of Compensation', 'Representation and Transportation Allowance (RATA)', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (34, 'Allowances, Honoraria and Other Forms of Compensation', 'Clothing/Uniform Allowance', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (35, 'Allowances, Honoraria and Other Forms of Compensation', 'Subsistence, Laundry and Quarters Allowances', 'Subsistence and Laundry Allowance', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (36, 'Allowances, Honoraria and Other Forms of Compensation', 'Subsistence, Laundry and Quarters Allowances', 'Quarters Allowance', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (37, 'Allowances, Honoraria and Other Forms of Compensation', 'Productivity Incentive Allowance (PIB)', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (38, 'Allowances, Honoraria and Other Forms of Compensation', 'Special Counsel Allowance', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (39, 'Allowances, Honoraria and Other Forms of Compensation', 'Honoraria', 'Government Personnel involved in Government Procurement', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (40, 'Allowances, Honoraria and Other Forms of Compensation', 'Honoraria', 'Teaching Personnel (DepEd, TESDA, SUCs and other educational institutions)', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (41, 'Allowances, Honoraria and Other Forms of Compensation', 'Honoraria', 'Governing Boards of Collegial Bodies', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (42, 'Allowances, Honoraria and Other Forms of Compensation', 'Honoraria', 'Lecturer/Coordinator', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (43, 'Allowances, Honoraria and Other Forms of Compensation', 'Honoraria', 'Special Projects', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (44, 'Allowances, Honoraria and Other Forms of Compensation', 'Honoraria', 'Science and Technological Activities', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (45, 'Allowances, Honoraria and Other Forms of Compensation', 'Hazard Duty Pay', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (46, 'Allowances, Honoraria and Other Forms of Compensation', 'Longevity Pay', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (47, 'Allowances, Honoraria and Other Forms of Compensation', 'Overtime Pay', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (48, 'Allowances, Honoraria and Other Forms of Compensation', 'Year-End Bonus (YEB) and Cash Gift (CG)', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (49, 'Allowances, Honoraria and Other Forms of Compensation', 'Retirement Benefits', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (50, 'Allowances, Honoraria and Other Forms of Compensation', 'Terminal Leave Benefits', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (51, 'Allowances, Honoraria and Other Forms of Compensation', 'Monetization', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (52, 'Allowances, Honoraria and Other Forms of Compensation', 'Loyalty Cash Award/Incentive', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (53, 'Allowances, Honoraria and Other Forms of Compensation', 'Collective Negotiation Agreement (CNA) Incentive', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (54, 'Other Expenditures', 'Utility Expenses', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (55, 'Other Expenditures', 'Telephone/Communication Services', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (56, 'Extraordinary and Miscellaneous Expenses', NULL, NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (57, 'Prisoner’s Subsistence Allowance', 'By administration thru cash advance', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (58, 'Prisoner’s Subsistence Allowance', 'By Catering Contract', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (59, 'Procurement', 'Procurement through Public Bidding', 'Infrastructure', 'Advance Payment');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (60, 'Procurement', 'Procurement through Public Bidding', 'Infrastructure', 'Variation Order / Change Order / Extra Work Order');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (61, 'Procurement', 'Procurement through Public Bidding', 'Infrastructure', 'Progress Payment');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (62, 'Procurement', 'Procurement through Public Bidding', 'Infrastructure', 'Final Payment');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (63, 'Procurement', 'Procurement through Public Bidding', 'Infrastructure', 'Release of Retention Money');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (64, 'Procurement', 'Procurement through Public Bidding', 'Consulting Services', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (65, 'Procurement', 'Procurement through Public Bidding', 'Goods', 'Supplies, Materials, Equipment and Motor Vehicles');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (66, 'Procurement', 'Procurement through Public Bidding', 'Goods', 'General Support Services');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (67, 'Procurement', 'Procurement through Public Bidding', 'Goods', 'Rental Contracts');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (68, 'Procurement', 'Procurement through Public Bidding', 'Goods', 'Repair and Maintenance of Aircraft, Equipment and Motor Vehicles');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (69, 'Procurement', 'Procurement through Public Bidding', 'Goods', 'Advertising Expenses');
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (70, 'Procurement', 'Procurement through Alternative Modes', 'Limited Source Bidding', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (71, 'Procurement', 'Procurement through Alternative Modes', 'Direct Contracting', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (72, 'Procurement', 'Procurement through Alternative Modes', 'Repeat Order', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (73, 'Procurement', 'Procurement through Alternative Modes', 'Shopping', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (74, 'Procurement', 'Procurement through Alternative Modes', 'Negotiated Procurement', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (75, 'Procurement', 'For procurement through ADA or direct payment', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (76, 'Cultural and Athletic Activities', NULL, NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (77, 'Human Resource Development and Training Program', NULL, NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (78, 'Financial Expenses', NULL, NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (79, 'Road Right-of-Way (ROW) / Real Property', 'Land', 'For Negotiated Purchase', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (80, 'Road Right-of-Way (ROW) / Real Property', 'Land', 'For Payment by Court Decision', NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (81, 'Road Right-of-Way (ROW) / Real Property', 'Structure/House', NULL, NULL);
INSERT INTO `Type of Transaction` (`ID`, `types_Level1`, `types_Level2`, `types_Level3`, `types_Level4`) VALUES (82, 'Road Right-of-Way (ROW) / Real Property', 'Improvements', NULL, NULL);
# 82 records

