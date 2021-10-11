title: "Srovnávací mapa: Kde parlamentní strany od minulých voleb ztratily a kde si polepšily?"
perex: "Statistická analýza volebních výsledků a složení obyvatelstva v jednotlivých okrscích naznačuje, v čem se liší voliči stran, které se dostaly do parlamentu."
coverimg: https://interaktivni.rozhlas.cz/brexit/media/cover.jpg
coverimg_note: "Foto <a href='https://ctk.cz'>ČTK</a>"
styles: []
libraries: [] #jquery, d3, highcharts, datatables
options: [noheader, nopic] #wide, noheader (, nopic)

---

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/leaflet.css">
<link rel="stylesheet" href="https://data.irozhlas.cz/psp21-srovnani/styl.css">

<select name="topic" id="topic">
    <option value="ano" selected>ANO</option>
    <option value="spolu">SPOLU</option>
    <option value="pirstan">Piráti+STAN</option>
    <option value="spd">SPD</option>
    <option value="cssd">ČSSD</option>
    <option value="ksc">KSČM</option>
    <option value="ucast">Účast</option>
</select>

<form action="?" id='geocoder'>
    <div class="inputs">
        <input type="text" id="inp-geocode" placeholder="Zadejte obec či adresu...">
        <input type="submit" id="inp-btn" value="Najít">
    </div>
</form>
<br>
<wide><div id='obce_rozdily_mapa'></div></wide>
</br>
<script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/leaflet.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/topojson/3.0.2/topojson.min.js"></script>
<script src="https://data.irozhlas.cz/psp21-srovnani/js/script.js"></script>

Radost z výsledku voleb budou mít letos častěji lidé, kterým se už před nimi dařilo dobře. Zatímco místa, kde se vyskytuje víc vysokoškoláků či podnikatelů, volily častěji jednu z koalic, oblasti s vyšším podílem nezaměstnaných či lidí v exekuci se spíše přiklonily k ANO či k SPD. Na rozdíl od předchozích voleb nebyl tak výrazný kontrast mezi výsledky ve velkoměstech a sídlech střední velikosti.

Ukazují to analýzy politologa Jakuba Lyska z Univerzity Palackého v Olomouci: „Střední třída, lidé ve městech střední velikosti, podpořili koalici Spolu. Nebyla to Praha, nebylo to Brno, kdo potopil Andreje Babiše, bylo to maloměsto: živnostníci, učitelé a lékaři v menších městech,“ říká. „Patrně si uvědomili, že migrace nebude největším problémem tohoto volebního období, ale bude to ekonomika. A koalici Spolu se podařilo ekonomická témata velmi dobře zvednout.“

Podle statistického modelu, který se osvědčil v předchozích volbách,

Proč zmizely KSČM a ČSSD z poslanecké sněmovny? Důvodem je Andrej Babiš. Tým Andreje Babiše velmi chytře a velmi dobře zvedl téma migrace. Tím mobilizoval vlastní vboliče. Víme z dat, že to byli zejména senioři, na které velmi dovře působil závěrečný klip. Jednak tím zvedl volební účast, protože mobilizoval i voliče Spolu z těch středně velkých měst a zároveň přebral poslwední zbytek voličů KSČM a ČSSD.

Nejsou to nějaké velké přelivy. Ananlýza výsledků voleb ukazuje, že ten poslední zbytek výáhajících voličů jestli voluit KSČNM nebio ANO, hjnutí Ano v tyěchto volbách přebralo. Tím pádem se obě strany dostaly pod 10 procent.

Skutečně to zatím vypadá, že volební účast ve strukturálně postižených krajích bude nižší... Vol. účast je relativně nižší oproti volbám 2017 v obcích, kde je vyšší podíl seniorů, vyšší nezaměstnanost a vyšší podíl exekucí...

Polarizace byla velká, hnutí ANO to přestřelilo. Kampaň hnutí ANO zaměřená na uprchlíky a proti Pirátům mobilizovala seniory. Naopak ta útočnost mobilizovala příznivce obou koalic. To, že lidé znali mnoho lokálních lídrů koalice SPOLU nebo STAN rozhodlo v neprospěch Pirátů spíše než negativní kampaň AB. Piráti jsou strukturálně slabou stranou, v krajích nemají silné kandidáty. Nejsou zakořenění v regionech.

Letošní volby, když se podíváme na kroužky u koalice SPOLU ukazují, že jsou to voliči, kteří podporují lokální osobnosti v místě bydliště. To rozhodlo ve prospěch koalice SPOLU a ve prospěch kroužkování Starostů, kteří získali nepoměrně více mandátů.

Pirátská strana nemá tak výrazné osobnosti. Oproti tomu kandidátka Starostů a nezávislých byla velmi dobře postavena. Ve spoustě krajů neměli Piráti na kandidátce ani své lokální a regionální lídry.

Myslím, že právě v Sudetech od Andreje Babiše odešli voliči střední třídy. Anti migrační politikou tuto vrstvu obyvatel nejspíše neoslovil, kampaň pro ně byla nejspíše příliš agresivní. KSČM a ČSSD si možná za ten volební výsledek mohou samy. Poslední zbytky těchto voličů Andrej Babiš přebral.

Lidem začalo docházet, že se zdražuje a koalice SPOLU toto téma dobře uchopila a začala o tom mluvit. Spoustě lidem, kteří se nakonec museli rozhodnout mezi Andrejem Babišem a jinou stranou, tak neměli moc na výběr. ČSSD měla program založený na distribuci státních zdrojů, dluh a deficit ČR je velký, spousta lidí si to racionálně vyhodnotila, že bude lepší zvolit více pravicovou vládu, která bude mít za úkol státní finance napravit.

Spousta lidí středních vrstev se podívala na hlasovací lístky a vybrala koalici, ve které viděla známé tváře.

Andrej Babiš říká, že mu Praha prohrála volby. Není to pravda. Prohrály mu to středně velká města po celé republice.
