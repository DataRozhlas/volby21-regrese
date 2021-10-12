import "./byeie"; // loučíme se s IE

const device = window.innerWidth < 600 ? "mob" : "des";
const path = "https://data.irozhlas.cz/datavis-2021-volby-regresky/";
const alt1 = "Jak ovlivnily demografické charakteristiky okrsků výsledek ANO";
const alt2 = "Jak ovlivnily demografické charakteristiky okrsků výsledek SPOLU";
const alt3 =
  "Jak ovlivnily demografické charakteristiky okrsků výsledek PirSTAN";
const alt4 = "Jak ovlivnily demografické charakteristiky okrsků výsledek SPD";
document.getElementById("ano").innerHTML =
  "<img src=" + path + "ano-" + device + '.svg alt="' + alt1 + '">';
document.getElementById("spolu").innerHTML =
  "<img src=" + path + "spolu-" + device + '.svg alt="' + alt2 + '">';
document.getElementById("stan").innerHTML =
  "<img src=" + path + "pirati-stan-" + device + '.svg alt="' + alt3 + '">';
document.getElementById("spd").innerHTML =
  "<img src=" + path + "spd-" + device + '.svg alt="' + alt4 + '">';
Array.from(document.getElementsByClassName("graf")).forEach(
  (e) => (e.style.width = device === "mob" ? "100%" : "50%")
);
