import 'clasecliente.dart';
import 'diccionarioclientes.dart';

class AgenteGuardarDatos {
  // Función para obtener el siguiente ID (autonumérico)
  int _obtenerSiguienteId() {
    if (datoscliente.isEmpty) {
      return 1;
    }
    // Obtiene el máximo ID actual y le suma 1
    return datoscliente.keys.reduce((curr, next) => curr > next ? curr : next) + 1;
  }

  // Función para guardar los datos en el diccionario
  void guardarCliente({
    required String nombre,
    required String numero,
    required String correo,
  }) {
    int nuevoId = _obtenerSiguienteId();
    Cliente nuevoCliente = Cliente(
      id: nuevoId,
      nombre: nombre,
      numero: numero,
      correo: correo,
    );
    datoscliente[nuevoId] = nuevoCliente;
  }

  // Función para obtener la lista de clientes
  List<Cliente> obtenerClientes() {
    return datoscliente.values.toList();
  }
}
