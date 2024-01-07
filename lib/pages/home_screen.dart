import 'package:app_ui/themes/themes_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import '../animations/fade_in_animation.dart';
import '../themes/lists.dart';
import '../widgets/bank_card.dart';
import '../widgets/home_buttoms.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Provider.of<ThemesChanger>(context, listen: false);

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 60),
      children: [
        FadeInAnimation(
          delay: 2,
          direction: FadeInDirection.topToBottom,
          fadeOffset: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Welcome back',
              ),
              CircleAvatar(
                maxRadius: 25,
                backgroundColor: Colors.deepPurple.shade100,
                child: Image.asset(
                  'assets/avatar.png',
                ),
              ),
            ],
          ),
        ),
        const FadeInAnimation(
          delay: 2,
          direction: FadeInDirection.topToBottom,
          fadeOffset: 40,
          child: Text(
            'Hi, Ahmed',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        FadeInAnimation(
          delay: 3.5,
          direction: FadeInDirection.leftToRight,
          fadeOffset: 40,
          child: SizedBox(
            height: 260,
            child: CardSwiper(
              padding: const EdgeInsets.symmetric(vertical: 20),
              cardBuilder: (
                context,
                index,
                horizontalOffsetPercentage,
                verticalOffsetPercentage,
              ) {
                final cardDetail = cardDetails[index];
                return BankCard(
                    cardName: cardDetail.cardBgAsset,
                    balance: cardDetail.balance,
                    cardNumber: cardDetail.cardNumber);
              },
              cardsCount: cardDetails.length,
              isLoop: true,
              numberOfCardsDisplayed: 3,
              scale: 0.95,
              backCardOffset: const Offset(18, -15),
            ),
          ),
        ),
        const SizedBox(height: 20),
        buildHomeButtons(context),
        const SizedBox(height: 30),
        const FadeInAnimation(
          delay: 3,
          direction: FadeInDirection.bottomToTop,
          fadeOffset: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Send Money',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('See all'),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 140,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: contactsList.length,
            itemBuilder: (context, index) {
              final contact = contactsList[index];
              return FadeInAnimation(
                direction: FadeInDirection.rightToLeft,
                delay: 2.0 + index,
                fadeOffset: index == 0 ? 80 : 80.0 * index,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
                  decoration: BoxDecoration(
                    color: themeData.getTheme == themeData.darkTheme
                        ? Colors.white12
                        : contact.color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          maxRadius: 25,
                          foregroundImage: AssetImage(contact.profileAsset)),
                      const SizedBox(height: 5),
                      Text(
                        contact.name,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$${contact.amount}',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 15),
          ),
        )
      ],
    );
  }
}
