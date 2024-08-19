import 'package:bookly_app/core/functions/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(context, String? url) async {
  if (url != null) {
    Uri urlBook = Uri.parse(url);
    if (await canLaunchUrl(urlBook)) {
      await launchUrl(urlBook);
    } else {
      showSnackBar(context, 'Could not launch Url');
    }
  }
}
