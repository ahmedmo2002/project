import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class FinancialHelp extends StatelessWidget {
  const FinancialHelp({super.key});

  @override
  Widget build(BuildContext context) {
    Uri url=Uri.parse('https://help.unhcr.org/egypt/cbi/');
    return Scaffold(
      appBar: AppBar(
        title: const Text('المساعدات النقدية المقدمة من المفوضية'),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Container(
            padding:const EdgeInsets.all(12),
            child:Column(
              children: [
                 Text('تقدم المساعدة النقدية للاجئين وطالبي اللجوء المسجلين المؤهلين لتلقي المساعدة وذلك لتغطية احتياجاتهم الأساسية ذات الأولوية.يتم تقديم المساعدة النقدية لفترة محدودة حسب توافر التمويل واستمرار أحقية المستفيدين.لتحديد من هو مؤهل، تستخدم المفوضية معادلة رياضية آلية تأخذ في الاعتبار عدة عوامل مجتمعة مثل العمر والنوع الاجتماعي والإعاقة والمساعدات الأخرى المتلقاة والإسكان والتعليم وحالة التوظيف، من بين عوامل أخرى.لا يقوم خط المعلومات/ مكاتب المفوضية بتحديد مواعيد لمقابلات التقييم ولا يقوم بإجراء هذه المقابلات للمساعدة النقدية. لتحديد موعد لإجراء مقابلة التقييم، تحتاج للتواصل مع كاريتاس للإحتياجات الأساسية. إذا ثبت أنك مؤهلا، فستتلقى رسالة نصية لإعلامك بالمبلغ  والموقع والموعد النهائي لاستلام المساعدة. يرجى التأكد من تحديث رقم هاتفك لدى المفوضية! ستتلقى رسالة نصية قصيرة عندما تكون المساعدة متاحة للاستلام في مكتب البريد. ستخبرك الرسائل إذا كنت بحاجة إلى استخدام ماسح قزحية العين لتحديد الهوية، وستخبرك بمواقع مكاتب البريد التي تحتوي على ماسح قزحية العين. سيرشدك موظف مكتب البريد إلى كيفية استخدام الماسح. يرجى وضع ماسح قزحية العين على نفس مستوى عينيك (لا تنظر إلى أسفل تجاه الماسح) وإبقاء عينيك مفتوحتين أثناء المسح. مقدم الطلب الرئيسي هو الشخص الوحيد الذي يمكنه استلام المساعدة من مكتب البريد ',
                style: TextStyle(fontSize: 18,color:Colors.blue[400] ),
                ),
                const SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(right:5),
                    child: Row(
                      children: [
                        const Text('للمزيد من التفاصيل ',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.w700)),
                        TextButton(onPressed: ()async{
                          await canLaunchUrl(url)?
                          await launchUrl(url):
                          Get.snackbar('', 'could not launch url',
                                snackPosition: SnackPosition.BOTTOM);
                        }, child: const Text('زورو الموقع الرسمي!',softWrap: true, style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic,color: Colors.red,fontWeight: FontWeight.bold),)),
                      ],
                    ),
                  ),
                )
              ],
            ) ,),
        ) ),
    );
  }
}