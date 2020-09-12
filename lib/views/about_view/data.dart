import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/utils/colors.dart';

class Education {
  final String type;
  final String years;
  final String where;
  final String desc;
  final Color color;
  final IconData icon;

  Education(
      {@required this.type,
      @required this.color,
      @required this.icon,
      @required this.years,
      @required this.where,
      @required this.desc});
}

List<Education> details = [
  Education(
      color: kColorPrimary,
      icon: Icons.school,
      type: 'Graduation',
      years: '2018-2022',
      where: 'IEM, Kolkata, West bengal',
      desc: '3rd year student under Electrical Engineering department'),
  Education(
      color: kColorPrimary,
      icon: FontAwesomeIcons.university,
      type: 'Higher Secondary Education',
      years: '2015-2017',
      where: 'Divine Happy School, Bhagalpur, Bihar',
      desc: 'Under CBSE curriculum and scored 82.8% overall.'),
  Education(
      color: kColorPrimary,
      icon: Icons.home_work_outlined,
      type: 'Matriculation',
      years: '2003-3015',
      where: 'Mount Assisi School, Bhagalpur, Bihar',
      desc: 'Under CISCE curriculum and scored 95.16% overall.'),
];

String about =
    "I design when my code breaks :p I used to make small games using Java and have grown up to make them with Javascript XD I\'ve worked with several startups and communities. I love to help people in making their dreams a reality.I design when my code breaks :p I used to make small games using Java and have grown up to make them with Javascript XD I've worked with several startups and communities. I love to help people in making their dreams a reality.Apart from my tech side I love to read and sketch. I'm also into volunteering for charitable or non profit organizations. I would love to become a part of any organization working in any of these domains :)";
