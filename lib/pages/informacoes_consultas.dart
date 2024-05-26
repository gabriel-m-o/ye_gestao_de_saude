import 'package:app_ye_gestao_de_saude/models/consultas_model.dart';
import 'package:app_ye_gestao_de_saude/pages/editar_consultas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InformacoesConsultas extends StatelessWidget {
  final ModeloConsultas modeloConsultas;

  const InformacoesConsultas({required this.modeloConsultas});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 246, 241),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 245, 246, 241),
          automaticallyImplyLeading: false,
          iconTheme: const IconThemeData(
            color: Color.fromARGB(220, 105, 126, 80), // Define a cor do ícone
          ),
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          actions: [
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry>[
                  PopupMenuItem(
                    child: Center(
                      child: Text('Editar'),
                    ),
                    value: 'edit',
                  ),
                  PopupMenuItem(
                    child: Center(
                      child: Text('Deletar'),
                    ),
                    value: 'delete',
                  )
                ];
              },
              icon: Icon(Icons.more_vert,
                  color: Color.fromARGB(220, 105, 126, 80)), // Ícone e cor
              // offset: Offset(0, 100), // Posição do menu
              elevation: 8, // Elevação da sombra
              color: const Color.fromARGB(255, 245, 246, 241), // Cor do botão
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Borda arredondada
              ),
              onSelected: (value) {
                if (value == 'edit') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EditarConsultas(consultaId: modeloConsultas.id)),
                  );
                } else if (value == 'delete') {}
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
            child: Center(
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Consultas realizadas",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(220, 105, 126, 80),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  '${modeloConsultas.especialidade}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(220, 105, 126, 80),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Data',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Color.fromRGBO(119, 138, 96, 1)),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(185, 196, 166, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 380,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Text(
                              '${modeloConsultas.data}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(220, 66, 78, 50),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Horario',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Color.fromRGBO(119, 138, 96, 1)),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(185, 196, 166, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 380,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Text(
                              '${modeloConsultas.horario}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(220, 66, 78, 50),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Resumo',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Color.fromRGBO(119, 138, 96, 1)),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(185, 196, 166, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 380,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 12.0),
                          child: SizedBox(
                            child: Center(
                              child: Text(
                                '${modeloConsultas.resumo}',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(220, 66, 78, 50),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Retorno',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Color.fromRGBO(119, 138, 96, 1)),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(185, 196, 166, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 380,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Text(
                              '${modeloConsultas.retorno}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(220, 66, 78, 50),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Lembrete',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Color.fromRGBO(119, 138, 96, 1)),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(185, 196, 166, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 380,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Text(
                              '${modeloConsultas.lembrete}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(220, 66, 78, 50),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     const Text(
                //       "Data:",
                //       style: TextStyle(
                //         fontSize: 18,
                //         fontWeight: FontWeight.w500,
                //         color: Color.fromARGB(220, 105, 126, 80),
                //       ),
                //     ),
                //     const SizedBox(height: 10),
                //     SizedBox(
                //       height: 40,
                //       child: TextFormField(
                //         readOnly: true,
                //         onTap: () => _selectDate(context),
                //         controller: TextEditingController(
                //           text: _selectedDate != null
                //               ? _dateFormat.format(_selectedDate!)
                //               : '',
                //         ),
                //         decoration: InputDecoration(
                //           fillColor: const Color.fromARGB(255, 185, 196, 166),
                //           filled: true,
                //           border: OutlineInputBorder(
                //             borderSide: BorderSide.none,
                //             borderRadius: BorderRadius.all(Radius.circular(15)),
                //           ),

                //           contentPadding:
                //               const EdgeInsets.fromLTRB(25, 0, 0, 0),
                //           labelStyle: const TextStyle(
                //               fontSize: 18,
                //               color: Color.fromARGB(255, 152, 152, 152)),
                //           //quando clica na label
                //           focusedBorder: OutlineInputBorder(
                //               borderSide: const BorderSide(
                //                   color: Color.fromARGB(220, 105, 126,
                //                       80)), // Altere a cor da borda aqui
                //               borderRadius: BorderRadius.circular(18)),
                //         ),
                //         validator: (value) {
                //           if (value == null || value.isEmpty) {
                //             return 'Por favor, insira uma data';
                //           }
                //           return null;
                //         },
                //         keyboardType: TextInputType.datetime,
                //         onChanged: (value) {
                //           setState(() {
                //             _selectedDate = DateTime.tryParse(value);
                //           });
                //         },
                //       ),
                //     ),
                //     const SizedBox(height: 15),
                //     const Text(
                //       "Horário:",
                //       style: TextStyle(
                //         fontSize: 18,
                //         fontWeight: FontWeight.w500,
                //         color: Color.fromARGB(220, 105, 126, 80),
                //       ),
                //     ),
                //     const SizedBox(height: 10),
                //     SizedBox(
                //       height: 40,
                //       child: TextFormField(
                //         decoration: InputDecoration(
                //           border: OutlineInputBorder(
                //               borderSide: const BorderSide(
                //                   color: Color.fromARGB(220, 105, 126,
                //                       80)), // Altere a cor da borda aqui

                //               borderRadius: BorderRadius.circular(18)),
                //           contentPadding:
                //               const EdgeInsets.fromLTRB(25, 0, 0, 0),
                //           labelStyle: const TextStyle(
                //               fontSize: 18,
                //               color: Color.fromARGB(255, 152, 152, 152)),
                //           //quando clica na label
                //           focusedBorder: OutlineInputBorder(
                //               borderSide: const BorderSide(
                //                   color: Color.fromARGB(220, 105, 126,
                //                       80)), // Altere a cor da borda aqui
                //               borderRadius: BorderRadius.circular(18)),
                //         ),
                //         // validator: (value) {
                //         //   if (value == null || value.isEmpty) {
                //         //     return 'Por favor, insira sua glicemia';
                //         //   }
                //         //   return null;
                //         // },
                //         // onSaved: (value) {
                //         //   if (value != null) {
                //         //     _glicemia = value;
                //         //   }
                //         // },
                //       ),
                //     ),
                //     const SizedBox(height: 15),
                //     const Text(
                //       "Resumo da consulta:",
                //       style: TextStyle(
                //         fontSize: 18,
                //         fontWeight: FontWeight.w500,
                //         color: Color.fromARGB(220, 105, 126, 80),
                //       ),
                //     ),
                //     const SizedBox(height: 10),
                //     SizedBox(
                //       height: 40,
                //       child: TextFormField(
                //         keyboardType: TextInputType.multiline,
                //         maxLines: null, // Permite várias linhas
                //         textAlignVertical: TextAlignVertical.top,
                //         decoration: InputDecoration(
                //           border: OutlineInputBorder(
                //               borderSide: const BorderSide(
                //                   color: Color.fromARGB(220, 105, 126,
                //                       80)), // Altere a cor da borda aqui

                //               borderRadius: BorderRadius.circular(18)),
                //           contentPadding:
                //               const EdgeInsets.fromLTRB(25, 0, 0, 0),
                //           labelStyle: const TextStyle(
                //               fontSize: 18,
                //               color: Color.fromARGB(255, 152, 152, 152)),
                //           //quando clica na label
                //           focusedBorder: OutlineInputBorder(
                //               borderSide: const BorderSide(
                //                   color: Color.fromARGB(220, 105, 126,
                //                       80)), // Altere a cor da borda aqui
                //               borderRadius: BorderRadius.circular(18)),
                //         ),
                //         // validator: (value) {
                //         //   if (value == null || value.isEmpty) {
                //         //     return 'Por favor, insira sua glicemia';
                //         //   }
                //         //   return null;
                //         // },
                //         // onSaved: (value) {
                //         //   if (value != null) {
                //         //     _glicemia = value;
                //         //   }
                //         // },
                //       ),
                //     ),
                //     const SizedBox(height: 15),
                //     const Text(
                //       "Retorno em:",
                //       style: TextStyle(
                //         fontSize: 18,
                //         fontWeight: FontWeight.w500,
                //         color: Color.fromARGB(220, 105, 126, 80),
                //       ),
                //     ),
                //     const SizedBox(height: 10),
                //     SizedBox(
                //       height: 40,
                //       child: TextFormField(
                //         readOnly: true,
                //         onTap: () => _selectDate(context),
                //         controller: TextEditingController(
                //           text: _selectedDate != null
                //               ? _dateFormat.format(_selectedDate!)
                //               : '',
                //         ),
                //         decoration: InputDecoration(
                //           border: OutlineInputBorder(
                //               borderSide: const BorderSide(
                //                   color: Color.fromARGB(220, 105, 126,
                //                       80)), // Altere a cor da borda aqui

                //               borderRadius: BorderRadius.circular(18)),
                //           contentPadding:
                //               const EdgeInsets.fromLTRB(25, 0, 0, 0),
                //           labelStyle: const TextStyle(
                //               fontSize: 18,
                //               color: Color.fromARGB(255, 152, 152, 152)),
                //           //quando clica na label
                //           focusedBorder: OutlineInputBorder(
                //               borderSide: const BorderSide(
                //                   color: Color.fromARGB(220, 105, 126,
                //                       80)), // Altere a cor da borda aqui
                //               borderRadius: BorderRadius.circular(18)),
                //         ),
                //         // validator: (value) {
                //         //   if (value == null || value.isEmpty) {
                //         //     return 'Por favor, insira sua glicemia';
                //         //   }
                //         //   return null;
                //         // },
                //         // onSaved: (value) {
                //         //   if (value != null) {
                //         //     _glicemia = value;
                //         //   }
                //         // },
                //       ),
                //     ),
                //     const SizedBox(height: 15),
                //     const Text(
                //       "Lembrete para agendamento:",
                //       style: TextStyle(
                //         fontSize: 18,
                //         fontWeight: FontWeight.w500,
                //         color: Color.fromARGB(220, 105, 126, 80),
                //       ),
                //     ),
                //     const SizedBox(height: 10),
                //     SizedBox(
                //       height: 40,
                //       child: TextFormField(
                //         readOnly: true,
                //         onTap: () => _selectDate(context),
                //         controller: TextEditingController(
                //           text: _selectedDate != null
                //               ? _dateFormat.format(_selectedDate!)
                //               : '',
                //         ),
                //         decoration: InputDecoration(
                //           border: OutlineInputBorder(
                //               borderSide: const BorderSide(
                //                   color: Color.fromARGB(220, 105, 126,
                //                       80)), // Altere a cor da borda aqui

                //               borderRadius: BorderRadius.circular(18)),
                //           contentPadding:
                //               const EdgeInsets.fromLTRB(25, 0, 0, 0),
                //           labelStyle: const TextStyle(
                //               fontSize: 18,
                //               color: Color.fromARGB(255, 152, 152, 152)),
                //           //quando clica na label
                //           focusedBorder: OutlineInputBorder(
                //               borderSide: const BorderSide(
                //                   color: Color.fromARGB(220, 105, 126,
                //                       80)), // Altere a cor da borda aqui
                //               borderRadius: BorderRadius.circular(18)),
                //         ),
                //         // validator: (value) {
                //         //   if (value == null || value.isEmpty) {
                //         //     return 'Por favor, insira sua glicemia';
                //         //   }
                //         //   return null;
                //         // },
                //         // onSaved: (value) {
                //         //   if (value != null) {
                //         //     _glicemia = value;
                //         //   }
                //         // },
                //       ),
                //     ),
                //   ],
                // ),
              ]),
            ),
          ),
        ));
  }
}
