class autor_quote_model {
  String autor_name;
  List<Autor_Quote> quotes;
  //string quotes_image;

  autor_quote_model(this.autor_name, this.quotes);
  //this.quotes_image

  factory autor_quote_model.fromJson(Map<String, dynamic> json) {
    var quoteList = json['quotes'] as List;
    List<Autor_Quote> quotes = quoteList.map((quote) => Autor_Quote.fromJson(quote)).toList();

    return autor_quote_model(
      json['autor_name'],
      //json['quotes_image'],
      quotes,
    );
  }
}

class Autor_Quote {
  int id;
  String quote;
  String author;
  //String image;

  Autor_Quote(this.id, this.quote, this.author );
  //this.image

  factory Autor_Quote.fromJson(Map<String, dynamic> json) {
    return Autor_Quote(
      json['id'],
      json['quote'],
      json['author'],
      //json['je json ma name hoy te'],
    );
  }
}