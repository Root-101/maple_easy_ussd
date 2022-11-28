import 'package:easy_ussd/ussd_exporter.dart';

class USSDMoneyWidgets {
  static List<USSDMoneyItem> MONEY = [TRANSFERIR_SALDO];

  static USSDMoneyItem TRANSFERIR_SALDO = USSDMoneyItem(
    function: USSDMoneyDomain.TRANSFERIR_SALDO("", "", ""),
    //TODO: migrar a funcion para no tener que pasarle parametros falsos
    title: 'Transferir Saldo',
    modal: USSDMoneyTransferirSaldoModalBody(),
  );
}
