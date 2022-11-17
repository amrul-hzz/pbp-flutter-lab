import 'package:flutter/material.dart';
import 'package:tugas_flutter_pbp/budget.dart';
import 'package:tugas_flutter_pbp/drawer.dart';
import 'package:tugas_flutter_pbp/main.dart';
import 'package:tugas_flutter_pbp/add_budget.dart';
import 'package:tugas_flutter_pbp/data_budget.dart';


class AddBudgetPage extends StatefulWidget {
    const AddBudgetPage({super.key});

    @override
    State<AddBudgetPage> createState() => _AddBudgetPageState();
}

class _AddBudgetPageState extends State<AddBudgetPage> {
  final _formKey = GlobalKey<FormState>();
  String judul = "Unknown";
  int nominal = -1;
  bool isPemasukan = false;
  bool isPengeluaran = false;
  String? jenis;
  List<String> listJenis = ['Pemasukan', 'Pengeluaran'];
  DateTime? tanggal;


  void _submitBudget(){
    if (_formKey.currentState!.validate()){

      // submit
      _formKey.currentState!.save();
      setState((){
        String tanggalString = tanggal.toString();
        setBudget(judul, nominal, jenis!, tanggalString);
      });

      // show pop up
      showDialog(
        context: context, 
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 15,
            child: Container(
              child: ListView(
                padding: const EdgeInsets.all(20),
                shrinkWrap: true,
                children: <Widget>[
                  // message
                  Center(child: const Text('Data berhasil ditambahkan')),

                  // back button
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setState(() {
                        judul = "Unknown";
                        nominal = -1;
                        jenis = "";
                      });

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddBudgetPage()),
                      );
                    },
                    child: Text('Kembali'),
                  ),
                ]
              )            
            ),
          );
        }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Form Budget'),
      ),

      drawer: const MyDrawer(),

      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [

                // input Judul
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Judul",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),

                    // menambahkan behaviour saat mengetik 
                    onChanged: (String? value){
                      setState((){
                        judul = value!;
                      });
                    },

                    // menambahkan behaviour saat data disimpan
                    onSaved: (String? value){
                      setState((){
                        judul = value!;
                      });
                    },

                    // validator form
                    validator: (String? value){
                      if (value == null || value.isEmpty){
                        return  'Judul tidak boleh kosong';
                      }
                      return null;
                    }
                  )
                ),

                // input Nominal
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Nominal",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),

                    // menambahkan behaviour saat mengetik
                    onChanged: (String? value){
                      setState((){
                        nominal = int.tryParse(value!) ?? nominal;
                      });
                    },

                    // menambahkan behaviour saat data disimpan
                    onSaved: (String? value){
                      setState((){
                        nominal = int.tryParse(value!) ?? nominal;
                      });
                    },

                    // validator form
                    validator: (String? value){
                      if (value == null || value.isEmpty){
                        return  'Nominal tidak boleh kosong';
                      }

                      int? valueInNumber = int.tryParse(value);
                      if(valueInNumber == null){
                        return 'Nominal tidak valid';
                      }

                      return null;
                    }
                  )
                ),

                // Dropdown Jenis
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: DropdownButtonFormField(
                        value: jenis,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        hint: const Text('Pilih Jenis'),
                        items: listJenis.map( (String items){
                          return DropdownMenuItem<String>(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),

                        onChanged: (String? newValue){
                          setState((){
                            jenis = newValue!;
                          });
                        },

                        validator:(String? value){
                          if(value == null || value.isEmpty)
                            return 'Jenis tidak boleh kosong';
                          return null;
                        },
                        
                      ),
                    ),
                  ]
                ),  

                // input Tanggal
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2022),
                          lastDate: DateTime(2080),
                        ).then((value) {
                          setState(() {
                            tanggal = value;
                          });
                        });
                      },
                      child: Text("Pilih Tanggal"),
                    ),
                  ),
                ),

                // Button Simpan
                TextButton(
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: _submitBudget,
                ),
              ]
            ),
          )
        ),
      ),
    );
  }
}