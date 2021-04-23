import 'package:flutter/material.dart';
import 'package:rastapp/model/login.dart';
import 'package:rastapp/model/complete_form.dart';

class MainTela2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainTela2State();
  }
}

class MainTela2State extends State<MainTela2> {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final LoginData loginData = new LoginData();
  CompleteForm completeForm = new CompleteForm();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            presentationScreen(),
            Divider(
              thickness: 3,
            ),
            nameFormField(),
            idadeFormField(),
            musicaFormField(),
            estadoFormField(),
            Row(
              children: [mySwitch(), Text("Modo Super Fã")],
            ),
            Row(
              children: [myRadio(1), Text("Grupo dos Debochados")],
            ),
            Row(
              children: [myRadio(2), Text("Grupo dos Cabeças de Gelo")],
            ),
            myButtonSnackBar()
          ],
        ),
      ),
    );
  }

  Widget presentationScreen() {
    return Center(
      child: Column(
        children: [
          Text("\nFã Clube do DJ Cleiton Rasta",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.blueAccent)),
          Text(
            "\nO Fã Clube mais Debochado do Brasil",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                letterSpacing: 2,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "\nInformações para a carteirinha:",
            style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                letterSpacing: 2,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget nameFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (String inValue) {
        if (inValue.length == 0) {
          return "Insira um nome";
        }
        return null;
      },
      onSaved: (String inValue) {
        loginData.username = inValue;
      },
      decoration: InputDecoration(hintText: " ", labelText: "Nome"),
    );
  }

  Widget idadeFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (String inValue) {
        if (inValue.length == 0) {
          return "Insira uma idade";
        }
        return null;
      },
      onSaved: (String inValue) {
        loginData.username = inValue;
      },
      decoration: InputDecoration(hintText: " ", labelText: "Idade"),
    );
  }

  Widget musicaFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (String inValue) {
        if (inValue.length == 0) {
          return "Insira uma música";
        }
        return null;
      },
      onSaved: (String inValue) {
        loginData.username = inValue;
      },
      decoration: InputDecoration(hintText: " ", labelText: "Música Preferida"),
    );
  }

  Widget estadoFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (String inValue) {
        if (inValue.length == 0) {
          return "Insira um Estado";
        }
        return null;
      },
      onSaved: (String inValue) {
        loginData.username = inValue;
      },
      decoration: InputDecoration(hintText: " ", labelText: "Estado"),
    );
  }

  Widget myCheckbox() {
    return Checkbox(
      value: completeForm.checkBoxValue,
      onChanged: (bool value) {
        setState(() {
          completeForm.checkBoxValue = value;
        });
      },
    );
  }

  Widget mySwitch() {
    return Switch(
      value: completeForm.switchValue,
      onChanged: (bool inValue) {
        setState(() {
          completeForm.switchValue = inValue;
        });
      },
    );
  }

  Widget myRadio(int value) {
    return Radio(
      value: value,
      groupValue: completeForm.radioValue,
      onChanged: (int inValue) {
        setState(() {
          completeForm.radioValue = inValue;
        });
      },
    );
  }

  Widget myRadio2(int value) {
    return Radio(
      value: value,
      groupValue: completeForm.radioValue2,
      onChanged: (int inValue) {
        setState(() {
          completeForm.radioValue2 = inValue;
        });
      },
    );
  }

  Widget myButtonSnackBar() {
    return RaisedButton(
      child: Text("Atualizar Carteirinha"),
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.green,
          duration: Duration(seconds: 1),
          content: Text("TAMO JUNTO E MISTURADO!"),
        ));
      },
    );
  }
}
