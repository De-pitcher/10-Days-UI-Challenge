import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ten_days_ui_challenge/core/constants.dart';
import 'package:ten_days_ui_challenge/core/search_result_fake_data.dart';
import 'package:ten_days_ui_challenge/widgets/search_result_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: color5,
          ),
        ),
        elevation: 0,
        actions: [
          Container(
            height: 35,
            width: 120,
            constraints: const BoxConstraints(),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xFFDADAFF),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Filter',
                  style: GoogleFonts.raleway(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF2E3A59),
                  ),
                ),
                const SizedBox(width: 10),
                SvgPicture.asset('assets/icons/slider_01.svg')
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '''Product \nDesigners''',
                  style: GoogleFonts.raleway(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: color5,
                  ),
                ),
                Text(
                  '32 jobs found',
                  style: GoogleFonts.raleway(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF81848B),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    final result = searchResults[index];
                    return SearchResultCard(
                      searchTitle: result.searchTitle,
                      experience: result.experience,
                      startSal: result.startSal,
                      endSal: result.endSal,
                      logoUrl: result.logoUrl,
                      productName: result.productName,
                      location: result.location,
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 20),
                  itemCount: searchResults.length),
            )
          ],
        ),
      ),
    );
  }
}
