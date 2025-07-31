import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_lerners/Utilities/colors.dart';
import 'package:the_lerners/Utilities/style.dart';
import 'package:the_lerners/View/Home/Screen/completed_courses.dart';
import 'package:the_lerners/View/Registration/Widgets/submit_button.dart';
import 'package:the_lerners/ViewModel/GetCurrentUser/get_user_data.dart';
import 'package:the_lerners/ViewModel/Navigation/navigation.dart';
import 'package:the_lerners/ViewModel/Registration/update_result.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key, required this.quiz, required this.title});
  final List quiz;
  final String title;
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  @override
  void initState() {
    super.initState();
    selectedAnswer = List<String>.generate(widget.quiz.length, (index) => '');
  }

  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: const Text(
              "Quiz",
              style: TextStyle(fontFamily: 'Rubik-Regular'),
            ),
            centerTitle: true,
            backgroundColor: kbgcolor,
            foregroundColor: kfgcolor,
            elevation: 0,
          ),
          body: ListView.builder(
            itemCount: widget.quiz.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${index + 1} : ${widget.quiz[index]['question']}",
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          fontFamily: 'Rubik-Regular'),
                    ),
                    RadioListTile(
                      activeColor: kbgcolor,
                      title: Text('${widget.quiz[index]['option1']}'),
                      value: '${widget.quiz[index]['option1']}${index + 1}',
                      groupValue: selectedAnswer[index],
                      onChanged: (value) {
                        setState(() {
                          selectedAnswer[index] = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: kbgcolor,
                      title: Text('${widget.quiz[index]['option2']}'),
                      value: '${widget.quiz[index]['option2']}${index + 1}',
                      groupValue: selectedAnswer[index],
                      onChanged: (value) {
                        setState(() {
                          selectedAnswer[index] = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: kbgcolor,
                      title: Text('${widget.quiz[index]['option3']}'),
                      value: '${widget.quiz[index]['option3']}${index + 1}',
                      groupValue: selectedAnswer[index],
                      onChanged: (value) {
                        setState(() {
                          selectedAnswer[index] = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: kbgcolor,
                      title: Text('${widget.quiz[index]['option4']}'),
                      value: '${widget.quiz[index]['option4']}',
                      groupValue: selectedAnswer[index],
                      onChanged: (value) {
                        setState(() {
                          selectedAnswer[index] = value.toString();
                        });
                      },
                    ),
                    const Divider()
                  ],
                ),
              );
            },
          ),
          floatingActionButton: SubmitButton(
              onPressed: () {
                int totalQuestion = widget.quiz.length;
                int correct = 0;
                for (var i = 0; i < widget.quiz.length; i++) {
                  if (selectedAnswer[i].contains(widget.quiz[i]['answer'])) {
                    correct++;
                  }
                }
                double percentage = ((correct / totalQuestion) * 100);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'Quiz Result',
                        textAlign: TextAlign.center,
                        style: kHeadingTextStyle.copyWith(color: kbgcolor),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Quiz Submitted Successfully👏\nYou have secured \n${percentage.toStringAsFixed(2)}%\nin Last Attempt",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              fontFamily: 'Rubik-Regular',
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedAnswer = List<String>.generate(
                                  widget.quiz.length, (index) => '');
                            });
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kbgcolor,
                            foregroundColor: kfgcolor,
                          ),
                          child: const Text('Re-take'),
                        ),
                        Consumer<GetUser>(
                          builder: (context, getuser, child) {
                            return ElevatedButton(
                              onPressed: () async {
                                setState(() {
                                  loading = true;
                                });
                                if (percentage != 0) {
                                  await UpdateResult.updateUserData(
                                      userid:
                                          "${getuser.currentUserData['userId']}",
                                      languageName: widget.title,
                                      score: percentage,
                                      context: context);
                                  setState(() {
                                    loading = false;
                                  });
                                  // ignore: use_build_context_synchronously
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const CompletedCourses(),
                                  ));
                                } else {
                                  Navigation.showMessage(context,
                                      "Failed with 0.0 % marks can't update result");
                                  Navigator.of(context).pop();
                                  setState(() {
                                    loading = false;
                                  });
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kbgcolor,
                                foregroundColor: kfgcolor,
                              ),
                              child: loading
                                  ? const SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: Center(
                                          child: CircularProgressIndicator(
                                        color: kfgcolor,
                                        strokeWidth: 2,
                                      )))
                                  : const Text('Submit'),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              text: 'Submit'),
        ),
        loading
            ? Container(
                color: Colors.black54,
                child: const Center(
                    child: CircularProgressIndicator(
                  color: kbgcolor,
                )),
              )
            : Container(),
      ],
    );
  }
}
