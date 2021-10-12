title: "Srovnávací mapa: Kde si strany od minulých voleb polepšily a kde ztratily"
perex: "Letošní sněmovní volby nebyly střetem velkých a malých měst, ale úspěšnějších a méně úspěšných regionů, odhaluje statistická analýza."
coverimg: https://interaktivni.rozhlas.cz/brexit/media/cover.jpg
coverimg_note: "Foto <a href='https://ctk.cz'>ČTK</a>"
styles: []
libraries: [] #jquery, d3, highcharts, datatables
options: [noheader, nopic] #wide, noheader (, nopic)

---

Radost z výsledku letošních voleb mají hlavně lidé, kterým se daří relativně dobře. Zatímco místa s vyšším podílem vysokoškoláků nebo podnikatelů volila častěji jednu ze dvou koalic, které teď jednají o sestavení vlády, okrsky s vyšší nezaměstnaností a více lidmi v exekuci se přikláněly spíše k poraženému ANO či k SPD. Na rozdíl od předchozích voleb nebyl tak výrazný kontrast mezi výsledky ve velkoměstech a v sídlech střední velikosti.

Ukazují to analýzy politologa Jakuba Lyska z Univerzity Palackého v Olomouci. „Střední třída, lidé ve městech střední velikosti, podpořili koalici Spolu. Nebyla to Praha, nebylo to Brno, kdo potopil Andreje Babiše, bylo to maloměsto: živnostníci, učitelé a lékaři v menších městech,“ [říká](https://www.irozhlas.cz/volby/snemovni-volby-2021-vysledky-voleb-volebni-ucast-mapa-datova-zurnalistika_2110111437_nkr). „Patrně si uvědomili, že největším problémem tohoto volebního období nebude migrace, ale ekonomika. A koalici Spolu se podařilo ekonomická témata zvednout.“

To ukazuje i srovnávací mapa. Červeně vybarvené jsou v ní obce, kde si koalice Spolu od minulých voleb polepšila, modře pak místa, kde měla horší výsledek než součet zisků ODS, TOP09 a KDU-ČSL z roku 2017. Takových obcí moc není.

V mapě si můžete porovnat letošní a minulé výsledky také u ostatních parlamentních stran.

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/leaflet.css">
<link rel="stylesheet" href="https://data.irozhlas.cz/psp21-srovnani/styl.css">

<select name="topic" id="topic">
    <option value="spolu">SPOLU</option>
    <option value="ano">ANO</option>
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

Podle výpočtů politologa Lyska měl z demografických ukazatelů největší vliv na výsledek voleb v daném okrsku podíl podnikatelů. Každý procentní bod podnikatelů navíc znamenal o 1,28 procentního bodu lepší výsledek pro Spolu a o 1,07 bodu horší pro ANO.

<wide><div style="display:flex;flex-wrap:wrap"><div class="graf" id="ano"></div><div class="graf" id="spolu"></div><div class="graf" id="stan"></div><div class="graf" id="spd"></div></wide>

<br>

ANO a SPD se lépe než ve zbytku země dařilo v místech s vyšším podílem nezaměstnaných a lidí v exekucích. Na překreslení výsledné volební mapy to ale nestačilo: „Myslím, že dokonce i v Sudetech od Andreje Babiše odešli voliči střední třídy. Jeho kampaň pro ně byla nejspíš příliš agresivní,“ domnívá se politolog.

<br>

Hnutí ANO tak zůstali především voliči starší 65 let. „Přílišné zacílení volební kampaně na seniory se nakonec ukázalo jako chyba, protože hnutí ANO ztratilo mladší voliče střední generace. Ti přešli ke koalici Spolu,“ hodnotí Lysek.
