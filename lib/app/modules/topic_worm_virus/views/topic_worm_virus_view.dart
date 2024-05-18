import 'package:csa_training_kit/app/widgets/appbar/custom_app_bar.dart';
import 'package:csa_training_kit/app/widgets/widget_course.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../controllers/topic_worm_virus_controller.dart';

class TopicWormVirusView extends GetView<TopicWormVirusController> {
  const TopicWormVirusView({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetCourse = WidgetCourse(theme: context.theme);

    return Scaffold(
      appBar: customAppBar(
        title: const Text('Worm Viruses'),
        centerTitle: true,
        isCanBack: true,
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
            widgetCourse.title('Worm Virus Definition'),
            const Gap(4),
            widgetCourse.body(
              """
A worm virus refers to a malicious program that replicates itself, automatically spreading through a network. In this definition of computer worms, the worm virus exploits vulnerabilities in your security software to steal sensitive information, install backdoors that can be used to access the system, corrupt files, and do other kinds of harm.

Worms consume large volumes of memory, as well as bandwidth. This results in servers, individual systems, and networks getting overloaded and malfunctioning. A worm is different from a virus, however, because a worm can operate on its own while a virus needs a host computer.
    """,
              textAlign: TextAlign.justify,
            ),
            const Gap(6),
            widgetCourse.title('Classifications and Names of Worms'),
            const Gap(4),
            widgetCourse.subtitle('Email-Worm'),
            const Gap(4),
            widgetCourse.body(
              """
    An email-worm refers to a worm that is able to copy itself and spread through files attached to email messages.  
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('IM-Worm'),
            const Gap(4),
            widgetCourse.body(
              """
An Instant Messenger (IM) worm is a kind of worm that can spread through IM networks. When an IM-worm is operating, it typically finds the address book belonging to the user and tries to transmit a copy of itself to all of the person’s contacts.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('IRC-Worm'),
            const Gap(4),
            widgetCourse.body(
              """
An IRC-worm makes use of Internet Relay Chat (IRC) networks to send itself over to other host machines. An IRC-worm drops a script into the IRC’s client directory within the machine it infects.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('Net-Worm'),
            const Gap(4),
            widgetCourse.body(
              """
A net-worm refers to a kind of worm that can find new hosts by using shares made over a network. This is done using a server or hard drive that multiple computers access via a local-area network (LAN).
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('P2P-Worm'),
            const Gap(4),
            widgetCourse.body(
              """
A P2P-worm is spread through peer-to-peer (P2P) networks. It uses the P2P connections to send copies of itself to users.
How Do Worm Virus/Computer Worms Work and Spread?
To get a worm in a computer, the worm is often transmitted through vulnerabilities in software. They could also be sent through email attachments or within instant messages or spam emails. After a file is opened, it may link the user to a malicious website or it could download the worm to the user’s device automatically. After the worm is on the device, it infects it without the user being able to tell.

Worms have the ability to delete and modify files. They can also inject more malicious software into a workstation or other device. Sometimes, the worm’s primary mission is to replicate itself again and again—simply to waste system resources, like bandwidth or hard drive space. Worms can also steal sensitive data and pave a way for a hacker to get into the computer by installing a backdoor they can access.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('Files Sent as Email Attachments'),
            const Gap(4),
            widgetCourse.body(
              """
The user clicks on a file attached to an email and the worm is activated.
              """,
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('Via a Link to a Web or FTP Resource'),
            const Gap(4),
            widgetCourse.body(
              """
When the user clicks a link to a web or File Transfer Protocol (FTP) resource, the worm is automatically downloaded to their machine.
              """,
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('Via a Link Sent in an ICQ or IRC Message'),
            const Gap(4),
            widgetCourse.body(
              """
An I Seek You (ICQ) or IRC message can contain a link to a worm, which, when clicked, can install the worm on the user’s device.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('Through Network Packets'),
            const Gap(4),
            widgetCourse.body(
              """
Network packets can penetrate into the computer’s memory. At that point, the worm gets activated, infecting the host computer.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('Files Sent as Email Attachments'),
            const Gap(4),
            widgetCourse.body(
              """
The user clicks on a file attached to an email and the worm is activated.
              """,
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('Via a Link to a Web or FTP Resource'),
            const Gap(4),
            widgetCourse.body(
              """
When the user clicks a link to a web or File Transfer Protocol (FTP) resource, the worm is automatically downloaded to their machine.
              """,
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('Via a Link Sent in an ICQ or IRC Message'),
            const Gap(4),
            widgetCourse.body(
              """
An I Seek You (ICQ) or IRC message can contain a link to a worm, which, when clicked, can install the worm on the user’s device.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('Through Network Packets'),
            const Gap(4),
            widgetCourse.body(
              """
Network packets can penetrate into the computer’s memory. At that point, the worm gets activated, infecting the host computer.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse
                .subtitle('Via Peer-to-Peer (P2P) File-sharing Networks'),
            const Gap(4),
            widgetCourse.body(
              """
When users on a P2P network share files, they may accidentally—or intentionally—transmit worms to others. When the recipient clicks on the file to open it, a worm gets installed.
              """,
              textAlign: TextAlign.justify,
            ),
            const Gap(6),
            widgetCourse.title('How To Tell if Your Computer Has a Worm'),
            const Gap(4),
            widgetCourse.subtitle('Monitor Speed and Performance'),
            const Gap(4),
            widgetCourse.body(
              """
If your computer has been running sluggishly, there is a chance it has a worm. Also, if some programs are crashing or running improperly, a worm could be the cause.
              """,
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('Be on the Lookout for Missing or New Files'),
            const Gap(4),
            widgetCourse.body(
              """
Worms can delete files on your computer and then replace them with something else. If you see new files or notice some that are missing, it may be because of a worm.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('Keep an Eye on Your Hard Drive Space'),
            const Gap(4),
            widgetCourse.body(
              """
Because worms replicate, again and again, they often take up large amounts of hard drive space. If your free space is getting eaten up, it could be due to a worm.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(6),
            widgetCourse.title('Stay Protected Against Computer Worms'),
            const Gap(4),
            widgetCourse.subtitle(
                'Invest in a Strong Internet Security Software Solution'),
            const Gap(4),
            widgetCourse.body(
              """
One of the best ways to get malware protection from computer viruses and worms is to use powerful security software. A strong antivirus product will be able to combat phishing, spyware, malware, Trojans, and other cyber threats.
              """,
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('Be Extra Cautious Against Phishing'),
            const Gap(4),
            widgetCourse.body(
              """
Anytime you open an email you are not expecting, particularly from senders you do not know, check for suspicious attachments or links. They may contain worms or a command that automatically downloads a worm onto your computer.
              """,
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('Update Your Operating System'),
            const Gap(4),
            widgetCourse.body(
              """
If your operating system is up-to-date with the most recent version, you are more likely to be protected from worms and other malware. Manufacturers are constantly on the lookout for vulnerabilities, and they often release patches that address them in operating system updates.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle(
                'What is the Difference Between a Worm, Virus, and a Trojan Horse?'),
            const Gap(4),
            widgetCourse.body(
              """
A virus attaches to a file or program, and it gets sent to another computer because that file or program is transferred. In other words, a virus goes along for the ride, using a host file or application to get from one place to another.

A worm also spreads from one computer to the next, but it does this all on its own, without the help of an additional file or program. A Trojan horse is very different from both a worm and a virus, particularly in how it is spread. A Trojan will look like a legitimate program, but when it is executed, it infects your computer, causing different kinds of harm. Trojans also have the ability to set up backdoors—similar to worms—that allow a hacker to gain access to your system.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(6),
            widgetCourse.title('Frequently Asked Questions about Worm Virus'),
            const Gap(4),
            widgetCourse.subtitle('What is a worm virus?'),
            const Gap(4),
            widgetCourse.body(
              """
A worm virus refers to a malicious program that replicates itself, automatically spreading through a network.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('How do computer worms work?'),
            const Gap(4),
            widgetCourse.body(
              """
Worms are transmitted through vulnerabilities in software. They could also be sent through email attachments or within instant messages or spam emails. After a file is opened, it may link the user to a malicious website or it could download the worm to the user’s device automatically. Once the worm is on the device, it infects it without the user being able to tell.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(4),
            widgetCourse.subtitle('How do worm viruses spread?'),
            const Gap(4),
            widgetCourse.body(
              """
Worms spread on their own, without the help of additional software or files. A worm is often introduced to a computer or network through a link or file sent through an email, chat, or other online communication.
""",
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
