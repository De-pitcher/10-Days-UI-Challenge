import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ten_days_ui_challenge/core/constants.dart';

class SearchResultCard extends StatefulWidget {
  final String searchTitle;
  final int experience;
  final double startSal;
  final double endSal;
  final String logoUrl;
  final String productName;
  final String location;
  const SearchResultCard({
    super.key,
    required this.searchTitle,
    required this.experience,
    required this.startSal,
    required this.endSal,
    required this.logoUrl,
    required this.productName,
    required this.location,
  });

  @override
  State<SearchResultCard> createState() => _SearchResultCardState();
}

class _SearchResultCardState extends State<SearchResultCard> {
  bool isChecekd = false;
  clicked() {
    setState(() {
      isChecekd = !isChecekd;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      child: SizedBox(
        height: 167,
        width: 331,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.searchTitle,
                    style: GoogleFonts.raleway(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: color5,
                    ),
                  ),
                  InkWell(
                    onTap: clicked,
                    child: isChecekd
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_border),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 27,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFFFF3FF),
                    ),
                    child: Center(
                      child: Text(
                        'Experience ${widget.experience} yrs',
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFD464D6),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '\$${widget.startSal} - \$${widget.endSal} / year',
                    style: GoogleFonts.raleway(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF81848B),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF7F7FF),
                      ),
                      child: SvgPicture.asset(widget.logoUrl)),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        widget.productName,
                        style: GoogleFonts.raleway(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: color5,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: color6,
                          ),
                          Text(
                            widget.location,
                            style: GoogleFonts.raleway(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: color6,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
