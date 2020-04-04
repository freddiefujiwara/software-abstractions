module tour/addressBook1

sig Name, Addr {}
sig Book {
    addr: Name -> lone Addr
}
pred showAdd (b,b': Book, n: Name, a:Addr){
   add [b,b',n,a]
   #Name.(b.addr) > 1
}
pred add (b,b': Book, n: Name, a:Addr){
  b'.addr = b.addr + n -> a
}
run showAdd for 3 but 3 Book
