import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:projetointheirskin/domain/Consulta.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetointheirskin/pages/consultas.dart';

import '../pages/google_maps_page.dart';

class CardConsulta extends StatefulWidget {
  Consulta consulta;

  CardConsulta({
    required this.consulta,
    super.key,
  });

  @override
  State<CardConsulta> createState() => _CardConsultaState();
}

class _CardConsultaState extends State<CardConsulta> {
  Consulta get consulta => widget.consulta;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Color(0xFFE0D4BD),
              borderRadius: BorderRadius.circular(12)),
          height: 100,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  consulta.especialidade,
                  style: TextStyle(color: Color(0XFF7b4a28), fontSize: 17),
                ),
                Text("  - "),
                SizedBox(width: 5),
                Text(
                  consulta.nomemedico,
                  style: TextStyle(color: Color(0XFF7b4a28), fontSize: 12),
                ),

                Spacer(),

                Row(
                  children: [
                    TextButton(
                      onPressed: () async {
                        List<Location> locations =
                            await locationFromAddress("Arapiraca");
                        LatLng position = LatLng(
                            locations[0].latitude, locations[0].longitude);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return GoogleMapsPage(position: position);
                            },
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: buildText(text: 'Ver no mapa'),
                    )
                  ],
                )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(consulta.horario,
                      style: TextStyle(
                        color: Color(0XFF7b4a28),
                        fontSize: 18,
                      )),
                  Row(
                    children: [
                      Text(consulta.data,
                          style: TextStyle(color: Color(0XFF7b4a28))),
                      Icon(
                        Icons.toggle_on,
                        color: Color(0xFFa5591f),
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  buildText({required text, color, fontSize, fontWeight}) {
    return Text(
      text,
      style: TextStyle(color: Color(0XFF7b4a28), fontSize: 12, fontWeight: FontWeight.normal),
    );
  }
}
