import 'package:csa_training_kit/app/widgets/widget_course.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../../../widgets/appbar/custom_app_bar.dart';
import '../controllers/topic_ransomware_controller.dart';

class TopicRansomwareView extends GetView<TopicRansomwareController> {
  const TopicRansomwareView({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetCourse = WidgetCourse(theme: context.theme);

    return Scaffold(
      appBar: customAppBar(
        title: const Text('Ransomware'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            widgetCourse.title('What is malware?'),
            const Gap(4),
            widgetCourse.body(
              """
Cybercrime has been on the rise for years, and shows no signs of slowing. While cyberattacks were once focused on large companies, now everyone—from small business owners to local government employees to individuals—have to be on the alert.

One of the most common types of cyberattack is ransomware. Ransomware can lock up your computer’s data and hold it hostage until you pay a ransom to the attacker. These attacks can be devastating if you’re not properly prepared.

In this article, we’ll explain everything you need to know about ransomware: what it is, how it works, and what you can do about it.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(6),
            widgetCourse.subtitle('What is ransomware?'),
            const Gap(4),
            widgetCourse.body(
              """
Ransomware is a type of malware that reversibly encrypts files on your computer. While many individuals and businesses routinely encrypt their files for security, ransomware is problematic because the attacker—not the owner of the computer—has the decryption key. This means it’s impossible for users to access their files unless the hacker decrypts them.
In a typical ransomware attack, the hacker will offer to decrypt your files for a price. This is the ransom in the attack, and it can range from hundreds of dollars for an individual to millions for a large corporation.

Some ransomware will delete your files after a specific, predetermined amount of time passes, which puts pressure on victims to pay up quickly. In other ransomware attacks, the attacker will also steal copies of your data and threaten to release them if you refuse to pay. This type of ransomware attack can be particularly problematic for large companies and government agencies that store sensitive data.

There’s no guarantee that an attacker will decrypt your files even if you pay. However, in most cases, cybercriminals will do what they promise. In an illicit twist on traditional business practices, it’s in the attacker’s interest to develop a reputation for following through on their guarantees. Otherwise, there would be little incentive for future victims to pay their ransom.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(6),
            widgetCourse.subtitle('How do ransomware attacks work?'),
            const Gap(4),
            widgetCourse.body(
              """
Ransomware attacks typically start with a breach of your computer or network. Often, this breach is enabled by a successful phishing attack. For example, you might click on a suspicious link in an email that downloads ransomware onto your computer, or gives an attacker access to your device.
Once an attacker is inside your computer, it can take as little as a few hours for them to deploy ransomware. The malware will automatically encrypt all of the files on your computer, effectively locking you out of your device. Once your files are fully locked up, many ransomware programs are designed to display a message with the required ransom, and further instructions for how to get in touch with the attacker.

At this point, you have a few options. If you’re prepared and have backups of all of your files, you can factory reset your device and restore your data from your backups. This can be a time-consuming process, but it should clear the ransomware from your device and allow you to get your data back.

If you don’t have backups and need to regain access to your data, you can get in touch with the attackers to pay the ransom. While the US government cautions against paying ransoms, it is not illegal to do so. Most ransoms must be paid in Bitcoin or another cryptocurrency, and some cybercriminal groups even have customer service departments to help you navigate the payment process.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(6),
            widgetCourse.subtitle('Why are ransomware attacks so common?'),
            const Gap(4),
            widgetCourse.body(
              """
The number of known ransomware attacks more than doubled between 2020 and 2021, and it’s likely that 2022 will see even more ransomware attacks. A big part of the reason for this is that ransomware attacks are incredibly lucrative for criminals.

According to a report by Sophos, the average ransom paid by companies last year was more than \$800,000. When cybercriminals can make that much money from each attack, there’s plenty of incentive to continue a barrage of ransomware attacks.

In fact, some cybercriminal groups focus almost exclusively on ransomware attacks. These groups put out ransomware software that any hacker can use, and in exchange take a cut of the profits. This business model lowers the bar for launching ransomware attacks, and makes it easier for anyone or any business to become a target.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(6),
            widgetCourse
                .subtitle('How to protect yourself from ransomware attacks'),
            const Gap(4),
            widgetCourse.body(
              """
The best way to defend against ransomware attacks is to be proactive. Be suspicious of any links in emails, as these are a common source of ransomware. You can also use antivirus software to monitor for ransomware and remove it before it can lock up your files.

If you don’t already, you should use cloud backup software to keep copies of all of your files. That way, even if you’re the victim of a ransomware attack, you can recover your data without paying the ransom.
For companies, the best way to defend against ransomware is to keep your network as secure as possible. Identity management software can help prevent ransomware from spreading throughout your organization, causing large-scale damage. It’s also important to educate employees about how to avoid online phishing scams that can lead to ransomware attacks.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(6),
            widgetCourse.subtitle('Conclusion'),
            const Gap(4),
            widgetCourse.body(
              """
Ransomware is a threat that’s unfortunately here to stay. Ransomware attacks can lock the files on your computer and hold them hostage until you pay a ransom to your attacker. If you don’t pay, you risk losing all of your files.

If you’re responding to a ransomware attack after it happens, you’re already too late. The best way to defend against ransomware is to recognize and avoid phishing attempts, install antivirus software on your computer, and back up all of your files.
""",
              textAlign: TextAlign.justify,
            ),
            widgetCourse.body(
              'TechRadar created this content as part of a paid partnership with Perimeter 81. The contents of this article are entirely independent and solely reflect the editorial opinion of TechRadar.',
              textAlign: TextAlign.justify,
              fontStyle: FontStyle.italic,
            ),
          ],
        ),
      ),
    );
  }
}
