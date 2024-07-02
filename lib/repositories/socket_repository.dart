import 'package:masked_game/models/points.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketRepository {
  IO.Socket? socket;

  void connect() {
    socket = IO.io(
        'http://localhost:3000',
        IO.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .setQuery({'username': 'cilico'})
            .build());
    socket!.connect();
    socket!.onConnect((data) => print('Connected'));
    socket!.onConnectError((data) => print('Error $data'));
  }

  void disconnect() {
    if (socket != null) socket!.disconnect();
  }

  void emitDraw(Points points, String color) {
    if (socket == null) return;
    socket!.emit('draw', {'points': points, 'color': color});
  }
}
