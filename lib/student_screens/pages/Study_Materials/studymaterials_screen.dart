import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro_final_application/model/studyMaterials.dart/s_materials_model.dart';
import 'package:scipro_final_application/student_screens/pages/Study_Materials/pDF_viewer.dart';

import '../../../widgets/button_Container.dart';
class StudentStudyMaterialsScreen extends StatelessWidget {
  var id;
  StudentStudyMaterialsScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Category"),
      ),
      body: SafeArea(
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("RecordedCourselist")
                  .doc(id)
                  .collection("StudyMaterials")
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.separated(
                      itemBuilder: (context, index) {
                        final data = StudyMaterialModel.fromJson(
                            snapshot.data!.docs[index].data());
                        return GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return PDFSectionScreen(
                                      urlPdf: data.studymaterialFile);
                                },
                              ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ButtonContainerWidget(
                                  curving: 30,
                                  colorindex: 3,
                                  height: 100,
                                  width: 200,
                                  child: Center(
                                    child: Text(
                                      data.subject,
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )),
                            ));
                      },
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                      itemCount: snapshot.data!.docs.length);
                } else {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.red,
                    ),
                  );
                }
              })),
    );
  }
}
