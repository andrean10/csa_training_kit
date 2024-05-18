import 'package:csa_training_kit/app/widgets/appbar/custom_app_bar.dart';
import 'package:csa_training_kit/app/widgets/widget_course.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../controllers/topic_computer_viruses_controller.dart';

class TopicComputerVirusesView extends GetView<TopicComputerVirusesController> {
  const TopicComputerVirusesView({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetCourse = WidgetCourse(theme: context.theme);

    return Scaffold(
      appBar: customAppBar(
        title: const Text('Computer Viruses'),
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
            widgetCourse.title('What are Computer Viruses?'),
            const Gap(8),
            widgetCourse.subtitle('Computer Virus Definition'),
            const Gap(4),
            widgetCourse.body(
              """
    Chances are you’ve heard how important it is to keep viruses out, but what is a computer virus exactly? A computer virus is a type of malicious software, or malware, that spreads between computers and causes damage to data and software.

    Computer viruses aim to disrupt systems, cause major operational issues, and result in data loss and leakage. A key thing to know about computer viruses is that they are designed to spread across programs and systems. Computer viruses typically attach to an executable host file, which results in their viral codes executing when a file is opened. The code then spreads from the document or software it is attached to via networks, drives, file-sharing programs, or infected email attachments.
    """,
              textAlign: TextAlign.justify,
            ),
            const Gap(6),
            widgetCourse.subtitle('Common Signs of Computer Viruses'),
            const Gap(4),
            widgetCourse.body(
              """
    Chances are you’ve heard how important it is to keep viruses out, but what is a computer virus exactly? A computer virus will more than likely have an adverse effect on the device it resides on and may be discoverable through common signs of performance loss, including:    
""",
              textAlign: TextAlign.justify,
            ),
            widgetCourse.body("""
  1. Speed of system
  2. Pop-up windows
  3. Programs self-executing
  4. Accounts being logged out
  5. Crashing of the device
  6. Mass emails being sent from your email account
  7. Changes to your homepage
"""),
            const Gap(6),
            widgetCourse.subtitle('How Do Computer Viruses Attack and Spread?'),
            const Gap(4),
            widgetCourse.body(
              """
    In the early days of computers, viruses were spread between devices using floppy disks. Nowadays, viruses can still be spread via hard disks and Universal Serial Bus (USB) devices, but they are more likely to be passed between devices through the internet. 

    Computer viruses can be spread via email, with some even capable of hijacking email software to spread themselves. Others may attach to legitimate software, within software packs, or infect code, and other viruses can be downloaded from compromised application stores and infected code repositories. A key feature of any computer virus is it requires a victim to execute its code or payload, which means the host application should be running.
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(6),
            widgetCourse.title('Types of Computer Viruses'),
            const Gap(4),
            widgetCourse.body(
              """
There are several types of computer viruses that can infect devices. This section will cover computer virus protections and how to get rid of computer viruses.

1. Resident virus
2. Multipartite virus
3. Direct action
4. Browser hijacker
5. Overwrite virus
6. Web scripting virus
7. File infector
8. Network Virus
9. Boot Sector Virus
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(6),
            widgetCourse.subtitle('Examples of Computer Viruses'),
            const Gap(4),
            widgetCourse.body(
              """
There are common examples of what computer and internet users believe to be viruses, but are technically incorrect.
Is Trojan a virus?
Is a worm a virus?
Is ransomware a virus?
Is rootkit a virus?
Is a software bug a virus?
""",
              textAlign: TextAlign.justify,
            ),
            const Gap(6),
            widgetCourse.subtitle('How To Prevent Your Computer From Viruses'),
            const Gap(4),
            widgetCourse.body(
              """
There are several ways to protect your computer from viruses, including:

1. Use a trusted antivirus product
2. Avoid clicking pop-up advertisements
3. Scan your email attachments
4. Scan the files that you download using file-sharing programs
""",
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    
    );
  }
}
