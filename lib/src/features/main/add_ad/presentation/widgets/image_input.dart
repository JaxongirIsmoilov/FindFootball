import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:find_football/src/core/consts/icons/app_icons.dart';
import 'package:find_football/src/features/main/add_ad/presentation/bloc/add_ad_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {

    late List<XFile> images = [];
  void selectImage() async {
    final List<XFile> selectedImages = await ImagePicker().pickMultiImage();
    images.addAll(selectedImages);

    if(context.mounted){
      context.read<AddAdBloc>().add(AddImageEvent(images: images));
    }


  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAdBloc, AddAdState>(builder: (context, state){
      // images.addAll(state.images);
          if(state.images.isEmpty){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: selectImage,
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              dashPattern: const [8, 8],
              color: AppColors.textColor,
              strokeWidth: 1,
              child: Container(
                width: state.images.isEmpty ? double.infinity : 140,
                height: 140,
                decoration: BoxDecoration(
                  color: AppColors.textEditingBackgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 50, height: 50, child: Image.asset(AppIcons.imageIcon)),
                    if (state.images.isEmpty) ...[
                      const SizedBox(width: 8),
                      Text(
                        "Rasmlarni joylashtiring",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey),
                      )
                    ]
                  ],
                ),
              ),
            ),
          ),
        );
      }
      return SizedBox(
        height: 140,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemCount: state.images.length + 1,
          separatorBuilder: (context, index) => const SizedBox(width: 8),
          itemBuilder: (context, index) {
            if (index < state.images.length) {
              final image = state.images[index];
              return Container(
                  width: 140,
                  height: 140,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: FileImage(
                        File(image.path),
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        images.removeAt(index);
                        context.read<AddAdBloc>().add(AddImageEvent(images: images));
                      },
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                        child: Center(
                          child: Image.asset(AppIcons.removeIcon),
                        ),
                      ),
                    ),
                  ));
            } else {
              return GestureDetector(
                onTap: selectImage,
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  color: AppColors.textColor,
                  radius: const Radius.circular(12),
                  dashPattern: const [8, 8],
                  strokeWidth: 1,
                  child: Container(
                    width: 140,
                    height: 140,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.textEditingBackgroundColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 50, height: 50, child: Image.asset(AppIcons.addIcon)),
                        if (state.images.isEmpty) ...[
                          const SizedBox(height: 8),
                          Text(
                            "Добавить фото",
                            style: Theme.of(context).textTheme.bodyLarge,
                          )
                        ]
                      ],
                    ),
                  ),
                ),
              );
            }
          },
        ),
      );
    });
  }
}
