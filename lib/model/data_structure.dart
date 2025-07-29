class DataStructure {
  const DataStructure(this.emojiQ, this.emojiA);
  final String emojiQ;
  final List<String> emojiA;
  List<String> shuffleemojiA() {
    List<String> shuffled_EmojiA = List.of(emojiA);
    shuffled_EmojiA.shuffle();
    return shuffled_EmojiA;
  }
}
