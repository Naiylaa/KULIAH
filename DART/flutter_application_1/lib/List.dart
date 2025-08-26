void main(List<String> args){
List <String> buah = ["mangga", "apel", "jeruk", "semangka"];
buah.addAll(["durian", "nanas"]);

print(buah);
print(buah.first);
print(buah.indexOf(buah[2]="kiwi"));
buah.sort((a,b) {
   return a.compareTo(b);
});
print(buah);
}