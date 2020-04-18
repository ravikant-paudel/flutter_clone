class Note {
  final int orderNumber;
  final int line;

  Note(this.orderNumber, this.line);

  NoteState state = NoteState.ready;
}

enum NoteState { ready, tapped, missed }
