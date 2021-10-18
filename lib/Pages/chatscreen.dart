import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsappclone/Models/chatmodels.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 11,top: 15,right: 11),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                    NetworkImage(dummy[index].avatarUrl.toString()),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            dummy[index].name.toString(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 200,
                          ),
                          Text(
                            dummy[index].time.toString(),
                            style:
                            const TextStyle(color: Color(0xff8795a0), fontSize: 11),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        dummy[index].message.toString(),
                        style: const TextStyle(
                          color: Color(0xff8795a0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (_, i) {
        return const SizedBox(
          height: 1,
        );
      },
      itemCount: dummy.length,
    );
  }
}


