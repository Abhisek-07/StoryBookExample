import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class CustomStory extends StatelessWidget {
  const CustomStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  context.knobs.slider(
                      label: 'Button1 border radius',
                      initial: 4,
                      min: 2,
                      max: 16),
                )),
                backgroundColor: context.knobs.boolean(
                        label: 'Button1 Background Color Options:',
                        initial: true,
                        description:
                            'Enable selecting background color options')
                    ? context.knobs.options(
                        label: 'Button1 background color',
                        initial: Colors.red,
                        options: [
                          const Option(
                            label: 'Blue',
                            value: Colors.blue,
                          ),
                          const Option(
                            label: 'Red',
                            value: Colors.red,
                          ),
                          const Option(
                            label: 'Green',
                            value: Colors.green,
                          ),
                        ],
                      )
                    : null,
                padding: EdgeInsets.all(
                  context.knobs.slider(
                    label: 'Button1 Padding',
                    description: 'Padding for the button',
                    initial: 8,
                    min: 4,
                    max: 20,
                  ),
                ),
              ),
              child: Text(
                style: TextStyle(
                  fontSize: context.knobs.slider(
                    label: 'Button1 Size',
                    description:
                        'Size for the button by increasing text fontSize',
                    initial: 16,
                    min: 4,
                    max: 50,
                  ),
                ),
                context.knobs.text(
                  label: 'Button1 Text',
                  description: 'Text for the button',
                  initial: 'Hey',
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  context.knobs.slider(
                      label: 'Button2 border radius',
                      initial: 4,
                      min: 2,
                      max: 16),
                )),
                backgroundColor: context.knobs.boolean(
                        label: 'Button2 Background Color Options:',
                        initial: true,
                        description:
                            'Enable selecting background color options')
                    ? context.knobs.options(
                        label: 'Button2 background color',
                        initial: (Colors.amber),
                        options: [
                          const Option(
                            label: 'Amber',
                            value: (Colors.amber),
                          ),
                          const Option(
                            label: 'Purple',
                            value: (Colors.purple),
                          ),
                          const Option(
                            label: 'Black',
                            value: (Colors.black),
                          ),
                        ],
                      )
                    : null,
                padding: (EdgeInsets.all(
                  context.knobs.slider(
                    label: 'Button2 Padding',
                    description: 'Padding for the button',
                    initial: 8,
                    min: 4,
                    max: 20,
                  ),
                )),
              ),
              child: Text(
                style: TextStyle(
                  fontSize: context.knobs.slider(
                    label: 'Button2 Size',
                    description:
                        'Size for the button by increasing text fontSize',
                    initial: 16,
                    min: 4,
                    max: 50,
                  ),
                ),
                context.knobs.text(
                  label: 'Button2 Text',
                  description: 'Text for the button',
                  initial: 'Hey',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
