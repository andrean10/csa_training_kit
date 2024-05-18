import 'package:csa_training_kit/app/widgets/appbar/custom_app_bar.dart';
import 'package:csa_training_kit/app/widgets/widget_course.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/topic_trojan_controller.dart';

class TopicTrojanView extends GetView<TopicTrojanController> {
  const TopicTrojanView({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetCourse = WidgetCourse(theme: context.theme);

    return Scaffold(
      appBar: customAppBar(
        title: const Text('Trojan'),
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
            widgetCourse
                .title('What is a Trojan? Is it a virus or is it malware?'),
            const Gap(4),
            widgetCourse.body(
              """
Trojan horse, or Trojan, is a type of malicious code or software that can take control of your computer. It is designed to damage, disrupt, steal, or in general inflict some other harmful action on your data or network. Once installed, a Trojan can perform the action it was designed for.

A Trojan acts like a bona fide application or file to trick you. It seeks to deceive you into loading and executing the malware on your device. Once installed, a Trojan can perform the action it was designed for.

A Trojan is sometimes called a Trojan virus or a Trojan horse virus, but that’s a misnomer. Viruses can execute and replicate themselves. A Trojan cannot. A user has to execute Trojans. Even so, Trojan malware and Trojan virus are often used interchangeably.

Whether you prefer calling it Trojan malware or a Trojan virus, it’s smart to know how this infiltrator works and what you can do to keep your devices safe.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.title('Common types of Trojan malware, from A to Z'),
            const Gap(4),
            widgetCourse.body(
              'Here’s a look at some of the most common types of Trojan malware, including their names and what they do on your computer:',
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.subtitle('Backdoor Trojan'),
            const Gap(4),
            widgetCourse.body(
              'This Trojan can create a “backdoor” on your computer. It lets an attacker access your computer and control it. Your data can be downloaded by a third party and stolen. Or more malware can be uploaded to your device.',
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse
                .subtitle('Distributed Denial of Service (DDoS) attack Trojan'),
            const Gap(4),
            widgetCourse.body(
              'This Trojan performs DDoS attacks. The idea is to take down a network by flooding it with traffic. That traffic comes from your infected computer and others.',
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.subtitle('Downloader Trojan'),
            const Gap(4),
            widgetCourse.body(
              'This Trojan targets your already-infected computer. It downloads and installs new versions of malicious programs. These can include Trojans and adware.',
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.subtitle('Fake AV Trojan'),
            const Gap(4),
            widgetCourse.body(
              'This Trojan behaves like antivirus software, but demands money from you to detect and remove threats, whether they’re real or fake.',
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.subtitle('Game-thief Trojan'),
            const Gap(4),
            widgetCourse.body(
              'This Trojan behaves like antivirus software, but demands money from you to detect and remove threats, whether they’re real or fake.',
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.subtitle('Infostealer Trojan'),
            const Gap(4),
            widgetCourse.body(
              'As it sounds, this Trojan is after data on your infected computer.',
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.subtitle('Mailfinder Trojan'),
            const Gap(4),
            widgetCourse.body(
              'This Trojan seeks to steal the email addresses you’ve accumulated on your device.',
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.subtitle('Ransom Trojan'),
            const Gap(4),
            widgetCourse.body(
              'This Trojan seeks a ransom to undo damage it has done to your computer. This can include blocking your data or impairing your computer’s performance.',
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.subtitle('Remote Access Trojan'),
            const Gap(4),
            widgetCourse.body(
              'This Trojan can give an attacker full control over your computer via a remote network connection. Its uses include stealing your information or spying on you.',
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.subtitle('Rootkit Trojan'),
            const Gap(4),
            widgetCourse.body(
              'A rootkit aims to hide or obscure an object on your infected computer. The idea? To extend the time a malicious program runs on your device.',
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.subtitle('Trojan banker'),
            const Gap(4),
            widgetCourse.body(
              'This Trojan takes aim at your financial accounts. It’s designed to steal your account information for all the things you do online. That includes banking, credit card, and bill pay data.',
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.subtitle('Trojan IM'),
            const Gap(4),
            widgetCourse.body(
              "This Trojan targets instant messaging. It steals your logins and passwords on IM platforms.That’s just a sample. There are a lot more.",
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.title('Examples of Trojan malware attacks'),
            const Gap(4),
            widgetCourse.body(
              """
Trojan malware attacks can inflict a lot of damage. At the same time, Trojans continue to evolve. Here are three examples.

1.	Rakhni Trojan.This malware has been around since 2013. More recently, it can deliver ransomware or a cryptojacker (allowing criminals to use your device to mine for cryptocurrency) to infected computers. “The growth in coin mining in the final months of 2017 was immense,” the 2018 Internet Security Threat Report notes. “Overall coin-mining activity increased by 34,000 percent over the course of the year.”
2.	ZeuS/Zbot.This banking Trojan is another oldie but baddie. ZeuS/Zbot source code was first released in 2011. It uses keystroke logging — recording your keystrokes as you log into your bank account, for instance — to steal your credentials and perhaps your account balance as well.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.title('How Trojans impact mobile devices'),
            const Gap(4),
            widgetCourse.body(
              """
Trojans aren’t problems for only laptop and desktop computers. They can also impact your mobile devices, including cell phones and tablets.

In general, a Trojan comes attached to what looks like a legitimate program. In reality, it is a fake version of the app, loaded up with malware. Cybercriminals will usually place them on unofficial and pirate app markets for unsuspecting users to download.

In addition, these apps can also steal information from your device, and generate revenue by sending premium SMS texts.
One form of Trojan malware has targeted Android devices specifically. Called Switcher 

Trojan, it infects users’ devices to attack the routers on their wireless networks. The result? Cybercriminals could redirect traffic on the Wi-Fi-connected devices and use it to commit various crimes.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(12),
            widgetCourse.title('How to help protect against Trojans'),
            const Gap(4),
            widgetCourse.body(
              """
Here are some dos and don’ts to help protect against Trojan malware. First, the dos:
•	Computer security begins with installing and running an internet security suite. Run periodic diagnostic scans with your software. You can set it up so the program runs scans automatically during regular intervals.
•	Update your operating system’s software as soon as updates are made available from the software company. Cybercriminals tend to exploit security holes in outdated software programs. In addition to operating system updates, you should also check for updates on other software that you use on your computer.
•	Protect your accounts with complex, unique passwords. Create a unique password for each account using a complex combination of letters, numbers, and symbols.
•	Keep your personal information safe with firewalls.
•	Back up your files regularly. If a Trojan infects your computer, this will help you to restore your data.
•	Be careful with email attachments. To help stay safe, scan an email attachment first. 

A lot of things you should do come with a corresponding thing not to do — like, do be careful with email attachments and don’t click on suspicious email attachments. Here are some more don’ts.
•	Don’t visit unsafe websites. Some internet security software will alert you that you’re about to visit an unsafe site, such as Norton Safe Web.
•	Don’t open a link in an email unless you’re confident it comes from a legitimate source. In general, avoid opening unsolicited emails from senders you don’t know.
•	Don’t download or install programs if you don’t have complete trust in the publisher.
•	Don’t click on pop-up windows that promise free programs that perform useful tasks.
•	Don’t ever open a link in an email unless you know exactly what it is.
""",
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
