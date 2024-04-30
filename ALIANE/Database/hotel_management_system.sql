-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 11:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `guestId` int(100) NOT NULL,
  `firstname` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `email` text DEFAULT NULL,
  `phonenumber` text DEFAULT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`guestId`, `firstname`, `lastname`, `email`, `phonenumber`, `password`) VALUES
(1, 'John', '', 'john.doe@example.com', '123-456-7890', ''),
(2, 'Jane', '', 'jane.smith@example.com', '987-654-3210', ''),
(3, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]'),
(4, NULL, 'peter', NULL, NULL, ''),
(5, 'javax.swing.JTextField[,214,140,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@309c641b,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,220,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@309c641b,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,320,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@309c641b,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,390,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@309c641b,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JPasswordField[,707,310,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@309c641b,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=0,columnWidth=0,command=,horizontalAlignment=LEADING,echoChar=•]'),
(6, 'javax.swing.JTextField[,214,140,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@3e51d02c,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,220,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@3e51d02c,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,320,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@3e51d02c,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,390,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@3e51d02c,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JPasswordField[,707,310,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@3e51d02c,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=0,columnWidth=0,command=,horizontalAlignment=LEADING,echoChar=•]'),
(7, 'javax.swing.JTextField[,214,140,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,220,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,320,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,390,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JPasswordField[,707,310,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=0,columnWidth=0,command=,horizontalAlignment=LEADING,echoChar=•]'),
(8, 'javax.swing.JTextField[,214,140,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,220,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,320,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,390,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JPasswordField[,707,310,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=0,columnWidth=0,command=,horizontalAlignment=LEADING,echoChar=•]'),
(9, 'javax.swing.JTextField[,214,140,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@2e7122ee,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,220,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@2e7122ee,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,320,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@2e7122ee,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,390,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@2e7122ee,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JPasswordField[,707,310,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@2e7122ee,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=0,columnWidth=0,command=,horizontalAlignment=LEADING,echoChar=•]'),
(10, 'javax.swing.JTextField[,214,140,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,220,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,320,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,390,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JPasswordField[,707,310,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@6dbed741,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=0,columnWidth=0,command=,horizontalAlignment=LEADING,echoChar=•]'),
(11, 'javax.swing.JTextField[,214,140,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@7b8c5371,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,220,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@7b8c5371,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,320,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@7b8c5371,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JTextField[,214,390,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@7b8c5371,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=10,columnWidth=0,command=,horizontalAlignment=LEADING]', 'javax.swing.JPasswordField[,707,310,228x50,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@7b8c5371,flags=296,maximumSize=,minimumSize=,preferredSize=,caretColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],disabledTextColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=sun.swing.PrintColorUIResource[r=51,g=51,b=51],selectionColor=javax.swing.plaf.ColorUIResource[r=184,g=207,b=229],columns=0,columnWidth=0,command=,horizontalAlignment=LEADING,echoChar=•]'),
(12, 'asd', 'fdsa', 'zxcvbnm', '0987654321', '1234567890'),
(23, 'mnb', 'kjh', 'oiu', '1234567890', '098765'),
(24, 'yetw', 'wtew', 'yew@gmail.com', '0987654321', '123456'),
(25, 'yuiy', 'yte', 'yuy@gmail.com', '0987654321', '123456'),
(26, 'tyut', 'uytr', 'tyu@gmail.com', '0987654321', '1234567'),
(27, 'utuuyt', 'hjkgg', 'mnbv@gmail.com', '0987654321', '1234567'),
(28, 'hgdsfsag', 'hdgfisy', 'gjagdh@gmail.com', '0987654321', '1234567'),
(29, 'hdgshfgj', 'dfsfgjs', 'mnb', '098765', '123456'),
(30, 'fgddjh', 'tyyfj', 'mnb', '098765', '123456'),
(31, 'fhfhg', 'tyty', 'mnb', '09876', '12345'),
(32, 'ghhf', 'vnbvbn', 'mnb', '098765', '123456'),
(33, 'hsdgh', 'jhjs', 'mnb', '09876', '12345'),
(34, 'vbv', 'ghj', 'mnb', '0987654321', '123456'),
(35, 'gggg', 'bbbb', 'ggbb', '098765', '123456'),
(36, 'nbm', 'mnb', 'mnbv', '098765', '123456'),
(37, 'nm', 'mn', 'mnb', '098765', '123456'),
(38, 'nm', 'mn', 'mnb', '09876', '12345'),
(39, 'ytt', 'tty', 'mnb', '098765', '123456'),
(40, 'weq', 'qew', 'mnb', '098765', '123456'),
(54, 'mnb', 'gfg', 'fgf', '098765', '123456'),
(55, 'erer', 'dsd', 'mnb', '098765', '123456'),
(56, 'ytu', 'uyt', 'mnb', '567890', '123456'),
(67, 'mnb', 'nbgh', 'kju', '098765', '123455'),
(78, 'mnb', 'nbh', 'hhyt', '098765', '123456'),
(79, 'werty', 'yyrew', 'mnb', '0987654321', '123456'),
(80, 'niyigena ', 'mike', 'jdsfhjs@gmail.com', '1234567890', '2345678'),
(81, 'ytu', 'bjh', 'mnb', '0987654321', '123456'),
(82, 'fgh', 'asd', 'mnb', '0987654321', '123456'),
(83, 'mko', 'poi', 'klj', '0987654321', '123456'),
(84, 'cv', 'nb', 'mnb', '0987654321', '123456'),
(85, 'mnb', 'cvb', 'oiu', '0987654321', '1234567'),
(86, 'nbxcv', 'nbv', 'sdf', '0987654321', '123456'),
(87, 'mnb', 'cvb', 'mnb', '0987654321', '1234567890'),
(88, 'mnb', 'zxc', 'mnb', '0987654321', '123456'),
(89, 'mnb', 'xcv', 'mnb', '0987654321', '123456'),
(90, 'mnbv', 'xcv', 'kjhg', '0987654321', '123456'),
(91, 'xcv', 'nbv', 'xcv', 'nbv', 'nbv'),
(92, NULL, 'Rurangirwa', 'aliana@gnail.com', NULL, ''),
(93, NULL, 'Rurangirwa', 'aliana@gnail.com', NULL, ''),
(94, NULL, 'BNM', 'qwerty', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotelID` int(100) NOT NULL,
  `hotelName` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `password` text NOT NULL,
  `emailId` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotelID`, `hotelName`, `location`, `password`, `emailId`) VALUES
(1, 'Hotel A', 'City A', '', ''),
(2, 'Hotel B', 'City B', '', ''),
(3, '', NULL, '', 'hotela@gmail.com'),
(7, 'fdgh', 'jhfh', '0987654', 'bnvmn'),
(8, 'fdhfhs', 'hdgjs', 'xbcv@gmail.com', '123456'),
(9, 'yrqwyt', 'qwyu', 'qwert@gmail.com', '123456'),
(10, 'yutr', 'kiki', 'yut@gmail.com', '123456'),
(12, 'dsfhsgf', 'shgj', '123456', 'efiwuy'),
(13, 'ture', 'jhd', 'mnb', '123456'),
(14, 'mnb', 'mnbh', '098765', NULL),
(15, 'hjhg', 'jjhh', 'mnb', '123456'),
(16, 'vcv', 'uyu', 'mnb', '12345'),
(17, 'hhhh', 'nnnn', 'mnb', '098765'),
(18, 'fgfg', 'gfgf', 'mnb', '123456'),
(19, 'hggh', 'ghhg', '123456', 'mnb'),
(23, 'mn', 'nb', '123456', 'mnb'),
(24, 'gfg', 'hgf', '098765', 'mnb'),
(31, 'hgf', 'ghc', '098765', 'mnb'),
(45, 'hgf', 'west', '098765', 'mnb'),
(50, 'ghj', 'south', '123456', 'mnb'),
(56, 'yuy', 'north', '0987654321', 'mnb'),
(78, 'hg', 'yt', '123456', 'mnb'),
(79, 'mn', 'vb', '098765', NULL),
(80, 'Aliane Hotel', 'Musanze', '123', 'akine@gmail.com'),
(81, 'Aliane Hotel', 'Musanze', '123', 'akine@gmail.com'),
(82, 'mnb', 'yuiop', '1234567', 'mjytf'),
(83, 'mnb', 'gicumbi', '567890', 'hot@gmail.com'),
(84, 'hotel v', 'Musanze', '123456', 'ytrewq');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentid` int(100) NOT NULL,
  `reservationid` int(100) NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `paymentdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentid`, `reservationid`, `amount`, `paymentdate`) VALUES
(1, 1, 500.00, '2024-02-14'),
(2, 2, 1230.00, '2024-04-03'),
(3, 50, 890.00, '2024-04-04'),
(11, 50, 60000.00, '2024-02-18'),
(12, 50, 600.00, '2024-02-12'),
(23, 2, 890.00, '2024-04-10'),
(55, 1, 6000.00, '2024-02-14'),
(56, 1, 5000.00, '2024-02-14'),
(57, 1, 6000.00, '2024-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservationid` int(100) NOT NULL,
  `guestId` int(100) NOT NULL,
  `roomId` int(100) NOT NULL,
  `checkInDate` date DEFAULT NULL,
  `checkOutDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservationid`, `guestId`, `roomId`, `checkInDate`, `checkOutDate`) VALUES
(1, 1, 1, '2024-02-10', '2024-02-15'),
(2, 2, 3, '2024-03-01', '2024-03-05'),
(5, 2, 3, '2024-04-03', '2024-04-10'),
(6, 1, 3, '2024-04-01', '2024-04-07'),
(12, 2, 3, '2024-04-04', '2024-04-10'),
(50, 2, 3, '2024-03-15', '2024-03-20'),
(88, 1, 1, '2024-02-10', '2024-02-13'),
(89, 1, 1, '2024-02-10', '2024-02-14'),
(90, 1, 1, '2024-03-05', '2024-03-06'),
(91, 1, 1, '2024-03-06', '2024-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `roomId` int(100) NOT NULL,
  `hotelID` int(100) NOT NULL,
  `roomNumber` int(100) DEFAULT NULL,
  `roomType` varchar(50) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`roomId`, `hotelID`, `roomNumber`, `roomType`, `price`) VALUES
(1, 1, 101, 'Single', 100.00),
(2, 1, 301, 'single', 2024.00),
(3, 2, 201, 'Single', 80.00),
(4, 2, 202, 'Double', 120.00),
(5, 2, 95, 'double', 2024.00),
(6, 2, 98, 'Single Bed', 8000.00),
(13, 23, 34, 'Single Bed', 8000.00),
(14, 8, 34, 'Single Bed', 6000.00),
(24, 45, 87, 'Single Bed', 6000.00),
(54, 78, 34, 'Single Bed', 6000.00),
(57, 19, 34, 'Single Bed', 5000.00),
(76, 24, 89, 'Single Bed', 6000.00),
(77, 1, 23, 'single', 5000.00),
(78, 1, 12, 'single', 7000.00),
(79, 1, 34, 'single', 8000.00),
(90, 2, 56, 'single', 2024.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `activation_code` varchar(50) DEFAULT NULL,
  `is_activated` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `email`, `telephone`, `password`, `creationdate`, `activation_code`, `is_activated`) VALUES
(1, 'aliane', 'umutoniwase', 'aliane', 'aliane@gmail.com', '0987654345', '$2y$10$Ihc10MCzldUOIG9HHlTcpe2c3iXMTdmYHlUE5N.V8vukmgusgYwUW', '2024-04-30 14:44:50', '678', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`guestId`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotelID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentid`),
  ADD KEY `reservation_id` (`reservationid`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservationid`),
  ADD KEY `guest_id` (`guestId`),
  ADD KEY `room_id` (`roomId`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`roomId`),
  ADD KEY `hotel_id` (`hotelID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `guestId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotelID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservationid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `roomId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`reservationid`) REFERENCES `reservations` (`reservationid`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`guestId`) REFERENCES `guests` (`guestId`),
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`roomId`) REFERENCES `rooms` (`roomId`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`hotelID`) REFERENCES `hotels` (`hotelID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
