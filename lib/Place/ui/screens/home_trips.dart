import 'package:flutter/material.dart';
import '../widgets/description_place.dart';
import 'header_appbar.dart';
import '../widgets/review_list.dart';

class HomeTrips extends StatelessWidget {
  final String descriptionDummy = '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean volutpat blandit lectus ac sollicitudin. Etiam nisl turpis, aliquet a ipsum vitae, rutrum posuere eros. Quisque sed ornare nibh. Fusce scelerisque augue at velit luctus imperdiet. Quisque at mi placerat, gravida augue in, accumsan lorem. Suspendisse feugiat mattis justo nec viverra. Vivamus quis augue eu eros placerat pulvinar eu ac justo.

  Nunc lectus mauris, egestas porta dui nec, sollicitudin ultricies eros. Integer ut pellentesque sem. Nam mollis tincidunt efficitur. Praesent interdum lacus efficitur ex aliquet molestie. Proin in bibendum tortor, quis volutpat orci. Etiam lectus diam, placerat non leo ac, faucibus aliquam ligula. Proin eu iaculis tellus. Pellentesque nec ultricies arcu, eu sagittis justo.

  Sed odio dolor, volutpat euismod nisl nec, interdum pellentesque tortor. Nulla vel ullamcorper erat. Nunc scelerisque metus sagittis elementum convallis. Sed vitae mi eu tellus euismod malesuada ac ut ligula. Quisque at lectus mollis, interdum quam nec, convallis turpis. Suspendisse potenti. Ut vitae maximus odio, eu accumsan est. Mauris sed ullamcorper urna, ut egestas ex. Maecenas ut viverra nisl. Duis pulvinar facilisis ante. Mauris ut semper massa. Donec vitae purus elit. Vivamus elementum mi eget venenatis elementum. Nullam quis venenatis diam.

  Nullam sodales quam justo, sit amet condimentum ante ultricies a. Donec justo elit, luctus et auctor eget, pellentesque id odio. Etiam enim risus, molestie a nisl volutpat, ultricies laoreet felis. Nulla fermentum odio at nulla cursus tincidunt. Sed vel orci ligula. Integer eget nisl augue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus a hendrerit ipsum. Sed in metus aliquam, facilisis mauris eu, mollis metus. Sed ut auctor augue, sagittis sollicitudin enim. Integer est elit, vehicula eu aliquet eget, viverra a tortor. Vestibulum ultrices fringilla ipsum sit amet pretium. Proin mollis, est id suscipit viverra, tortor ipsum fermentum magna, venenatis vulputate diam dolor semper risus.''';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Duwili Ella", 5, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}