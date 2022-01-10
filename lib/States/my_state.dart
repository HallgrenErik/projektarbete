import 'package:flutter/material.dart';
import 'package:my_first_app/Api/api_album.dart';
import 'package:my_first_app/Api/api_review.dart';
import 'package:my_first_app/Api/api_sok_resultat.dart';
import 'package:my_first_app/Items/album_item.dart';
import 'package:my_first_app/Items/compiled_data_item.dart';
import 'package:my_first_app/Items/sok_item.dart';
import 'package:provider/provider.dart';
import '../Api/api_artist.dart';
import '../Items/artist_item.dart';
import '../Items/review_item.dart';

class MyState extends ChangeNotifier {
  List<Review> _list = [];
  Review? _review;

  Review? get review => _review;

  List<Review> get list => _list;

  Future getList() async {
    List<Review> list = await ReviewAPI.reviewList();
    _list = list;
    notifyListeners();
  }

  void addReview(
      String albumX, artistX, authorX, reviewTextX, int ratingX) async {
    final compile = CompiledData(
        album: albumX,
        artist: artistX,
        author: authorX,
        rating: ratingX,
        reviewText: reviewTextX);
    final review = Review(id: '', compiledData: compile, redundant: false);
    _list = await ReviewAPI.addReview(review);
    notifyListeners();
  }

  AlbumItem? _album = null;

  AlbumItem? get album => _album;

  List<SokItem> _sokList = [];

  List<SokItem> get soklist => _sokList;

  ArtistItem? _artist;

  ArtistItem? get artist => _artist;

  Future hamtaLista() async {
    List<SokItem> sokList = await SokLista.doAlbumSearch(sokord);
    _sokList = sokList;
    notifyListeners();
  }

  Future hamtaAlbum() async {
    AlbumItem album = await AlbumFetcher.fetchAlbum(newAlbum, newArtist);
    _album = album;
    notifyListeners();
  }

  Future hamtaArtist() async {
    ArtistItem artist = await ArtistFetcher.fetchArtist(artistInfo);
    _artist = artist;
    notifyListeners();
  }

  String _sokord = '';

  String get sokord => _sokord;

  void setWord(String ord) {
    _sokord = ord;
    print(_sokord);
    notifyListeners();
  }

  String _newAlbum = '';
  String _newArtist = '';

  String get newAlbum => _newAlbum;
  String get newArtist => _newArtist;

  void setAA(String newArtist, String newAlbum) {
    _newAlbum = newAlbum;
    _newArtist = newArtist;
    notifyListeners();
  }

  String _artistInfo = '';
  String get artistInfo => _artistInfo;

  void setArtist(String artistInfo) {
    _artistInfo = artistInfo;
    notifyListeners();
  }
}
