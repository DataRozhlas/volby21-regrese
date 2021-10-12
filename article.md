title: "Srovnávací mapa: Kde parlamentní strany od minulých voleb ztratily a kde si polepšily?"
perex: "Statistická analýza volebních výsledků a složení obyvatelstva v jednotlivých okrscích naznačuje, v čem se liší voliči stran, které se dostaly do parlamentu."
coverimg: https://interaktivni.rozhlas.cz/brexit/media/cover.jpg
coverimg_note: "Foto <a href='https://ctk.cz'>ČTK</a>"
styles: []
libraries: [] #jquery, d3, highcharts, datatables
options: [noheader, nopic] #wide, noheader (, nopic)

---

Radost z výsledku voleb mají letos hlavně lidé, kterým se už před nimi dařilo dobře. Zatímco místa, kde se vyskytuje víc vysokoškoláků či podnikatelů, volily častěji jednu z vítězných koalic, oblasti s vyšším podílem nezaměstnaných či lidí v exekuci se spíše přiklonily k poraženému ANO či k SPD. Na rozdíl od předchozích voleb nebyl tak výrazný kontrast mezi výsledky ve velkoměstech a sídlech střední velikosti.

Ukazují to analýzy politologa Jakuba Lyska z Univerzity Palackého v Olomouci: „Střední třída, lidé ve městech střední velikosti, podpořili koalici Spolu. Nebyla to Praha, nebylo to Brno, kdo potopil Andreje Babiše, bylo to maloměsto: živnostníci, učitelé a lékaři v menších městech,“ říká. „Patrně si uvědomili, že migrace nebude největším problémem tohoto volebního období, ale že to bude ekonomika. A koalici Spolu se podařilo ekonomická témata zvednout.“

To ukazuje i srovnávací mapa, ve které jsou červeně vybarvené obce, kde si koalice od minulých voleb polepšila, modře pak místa, kde měla horší výsledek než součet jednotlivých stran, tedy ODS, TOP09 a KDU-ČSL z roku 2017. Takových obcí moc není.

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

Podle výpočtů politologa Lyska měl z demografických ukazatelů největší vliv na výsledek voleb v daném okrsku podíl podnikatelů: Každý procentní bod podnikatelů navíc znamenal o 1,28 procentního bodu lepší výsledek pro Spolu a 1,07 horší pro ANO.

<wide><div style="display:flex;flex-wrap:wrap"><div class="graf" id="ano"></div><div class="graf" id="spolu"></div><div class="graf" id="stan"></div><div class="graf" id="spd"></div></wide>
<br>
ANO a SPD častěji boodovaly v místech s vyšším podílem nezaměstnaných a lidí v exekucích. Na překreslení výsledné volební mapy to ale nestačilo: „Myslím, že právě v Sudetech od Andreje Babiše odešli voliči střední třídy. Jeho kampaň pro ně byla nejspíš příliš agresivní,“ domnívá se politolog.
