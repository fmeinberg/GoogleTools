Needs["InternetTools`"];

GoogleURL[string_] :=
	StringJoin[
	"http://www.google.com/search?q=",
	StringJoin[Riffle[StringSplit[string], "+"]], "&btnG=Search"
	]

GoogleLuckyURL[string_] :=
	StringJoin[
	"http://www.google.com/search?q=",
	StringJoin[Riffle[StringSplit[string], "+"]],
	"&btnG=I%27m+Feeling+Lucky"
	]

GoogleHyperlink[string_,label_:None] :=
	Hyperlink[label/.None->string,GoogleURL[string]]

GoogleSearch[string_]:=
	OpenURL@GoogleURL@string

(* Google Books *)

GoogleBookURL[string_]:=
	StringJoin[
	"http://www.google.com/search?tbs=bks:1,bkv:p,bkt:b,vw:g&q=",
	StringJoin[Riffle[StringSplit[string],"+"]]
	]

GoogleBookHyperlink[string_,label_:None] :=
	Hyperlink[label/.None->string,GoogleBooksURL[string]]

GoogleBookSearch[string_]:=
	OpenURL@GoogleBookURL@string

(* Google Finance *)

GoogleFinanceURL[ticker_String]:=
	StringJoin[	"http://www.google.com/finance?chdnp=1&chdd=1&chds=1&chdv=1&chvs=maximized&chdeh=0&chfdeh=0&chdet=1291815479514&chddm=829311&chls=IntervalBasedLine&ntsp=0&fct=big&q=",
	ticker
	]
