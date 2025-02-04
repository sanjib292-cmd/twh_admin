import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/privicy_policy_controller.dart';

class PrivicyPolicyView extends GetView<PrivicyPolicyController> {
  const PrivicyPolicyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future<void> launchsite(String url) async {
      if (!await launch(
        '$url',
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      )) {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 50.0, left: 150, right: 200, bottom: 10),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    "Privacy Policy",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: SelectableText(
                      """The Wagon House built the The Wagon House app as a Free app. This Service is provided by The Wagon House at no cost and is intended for use as is. This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service. If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy. The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at The Wagon House unless otherwise defined in this Privacy Policy.""",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, height: 1.5,fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SelectableText(
                      "Information Collection and Use",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: SelectableText(
                      """For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to Email, Phone number, Name, City. The information that we request will be retained by us and used as described in this privacy policy. The app does use third-party services that may collect information used to identify you. Link to the privacy policy of third-party service providers used by the app
            """,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, height: 1.5,fontSize: 15),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        launchsite('https://policies.google.com/privacy');
                      },
                      child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Text(
                            """*  Google Play Services""",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                height: 1.5,
                                color: Colors.blue),
                          ))),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: SelectableText(
                      "Log Data",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: SelectableText(
                      """We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.""",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, height: 1.5,fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: SelectableText(
                      "Cookies",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: SelectableText(
                      """Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory. This Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.""",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, height: 1.5,fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: SelectableText(
                      "Service Providers",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: SelectableText(
                      """We may employ third-party companies and individuals due to the following reasons:

 *  To facilitate our Service;

 *  To provide the Service on our behalf;

 *  To perform Service-related services;  or

 *  To assist us in analyzing how our Service is used. 
 
 We want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.""",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, height: 1.5,fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SelectableText(
                      "Security",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: SelectableText(
                      """We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security
            """,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, height: 1.5,fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SelectableText(
                      "Links to Other Sites",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: SelectableText(
                      """This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.
            """,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, height: 1.5,fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SelectableText(
                      "Children’s Privacy",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: SelectableText(
                      """These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13 years of age. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do the necessary actions.
            """,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, height: 1.5,fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SelectableText(
                      "Changes to This Privacy Policy",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: SelectableText(
                      """We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. This policy is effective as of 2023-06-29
            """,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, height: 1.5,fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SelectableText(
                      "Contact Us",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: SelectableText(
                      """If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at letstwh@gmail.com.
            """,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, height: 1.5,fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
