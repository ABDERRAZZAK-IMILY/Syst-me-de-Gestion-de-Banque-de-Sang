<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Système de Gestion de Banque de Sang</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
body {
	 overflow-y: hidden;
}
 #blood_selector div:hover {
	 font-weight: bold;
	 cursor: pointer;
}
 .blood_via {
	 transition: height 0.25s ease-in-out;
}
 .main_bag .blood {
	 transition: height 1s ease-in-out;
}
 #humans .human .blood_via {
	 transition: width 1s ease-in-out;
}
 #humans .human .scribble {
	 transition: background 1s ease-in-out;
}
 #humans .human .scribble .head {
	 transition: background 1s ease-in-out;
}
 #humans .human .scribble .body {
	 transition: background 1s ease-in-out;
}
 .no_transition {
	 transition: none !important;
}
 .highlight {
	 border: 2px solid #b51e23 !important;
	 font-weight: bold;
}
 .highlightText {
	 font-weight: bold;
}
 @media only screen and (max-width: 400px) {
	 #content {
		 position: relative;
		 margin: 25px auto;
		 width: 300px;
		 height: 300px;
	}
	 #content h3 {
		 top: 10px;
		 font-size: 1em;
	}
	 #content #blood_selector {
		 width: 150px;
		 height: 75px;
		 font-size: 0.75em;
		 top: 45px;
	}
	 #content .bar {
		 top: 40px;
	}
	 #content .main_bag {
		 width: 75px;
		 height: 105px;
		 left: 125px;
	}
	 #content .main_bag::before {
		 top: -108px;
		 height: 100px;
	}
	 #content .main_bag .blood {
		 height: 70%;
	}
	 #content #center_via_c .center_via {
		 left: 167px;
		 top: 240px;
	}
	 #content #humans {
		 top: 240px;
		 width: 180px;
		 left: 85px;
	}
}
    </style>
</head>
<body class="bg-gray-100 font-mono overflow-y-hidden">

    <!-- Header -->
    <header class="bg-red-600 text-white shadow-md">
        <div class="container mx-auto px-4 py-4 flex justify-between items-center">
            <h1 class="text-2xl font-bold">Banque de Sang</h1>
            <nav>
                <ul class="flex space-x-6">
                    <li><a href="#accueil" class="hover:underline">Accueil</a></li>
                    <li><a href="#donateurs" class="hover:underline">Donateurs</a></li>
                    <li><a href="#receveurs" class="hover:underline">Receveurs</a></li>
                    <li><a href="/blood-bank-system/login" class="bg-white text-red-600 px-4 py-2 rounded hover:bg-gray-200">Connexion</a></li>
                </ul>
            </nav>
        </div>
    </header>

<div id="content" class="relative mx-auto my-[50px] w-[600px] h-[600px]">
  <h3 class="absolute top-0 left-0">Select the donor blood type:</h3>
  <div id="blood_selector" class="grid grid-cols-4 grid-rows-2 gap-[5px] w-[200px] h-[100px] absolute left-[10px] top-[45px] z-[2]">
    <div class="select-none flex items-center justify-center bg-gray-100 border border-[#b51e23] rounded-[25%] hover:border-[#1da1f2]">O−</div>
    <div class="select-none flex items-center justify-center bg-gray-100 border border-[#b51e23] rounded-[25%] hover:border-[#1da1f2]">O+</div>
    <div class="select-none flex items-center justify-center bg-gray-100 border border-[#b51e23] rounded-[25%] hover:border-[#1da1f2]">A−</div>
    <div class="select-none flex items-center justify-center bg-gray-100 border border-[#b51e23] rounded-[25%] hover:border-[#1da1f2]">A+</div>
    <div class="select-none flex items-center justify-center bg-gray-100 border border-[#b51e23] rounded-[25%] hover:border-[#1da1f2]">B−</div>
    <div class="select-none flex items-center justify-center bg-gray-100 border border-[#b51e23] rounded-[25%] hover:border-[#1da1f2]">B+</div>
    <div class="select-none flex items-center justify-center bg-gray-100 border border-[#b51e23] rounded-[25%] hover:border-[#1da1f2]">AB−</div>
    <div class="select-none flex items-center justify-center bg-gray-100 border border-[#b51e23] rounded-[25%] hover:border-[#1da1f2]">AB+</div>
  </div>
  <div id="blood_content" class="absolute top-[50px] w-full h-full">
    <div class="bar fixed right-0 top-[55px] w-[55%] h-[8px] rounded-tl-[2px] rounded-bl-[2px] bg-gray-300"></div>
    <div class="main_bag absolute w-[100px] h-[140px] top-[70px] left-[250px] rounded-[30px] opacity-80 bg-[rgba(154,207,234,0.9)] border-[8px] border-[rgba(154,207,234,0.9)] before:content-[''] before:absolute before:top-[-118px] before:left-[45%] before:w-[10%] before:h-[110px] before:bg-gray-300">
      <div class="blood absolute left-0 bottom-0 w-full h-[100px] bg-[#b51e23] rounded-b-[35px] before:content-[''] before:absolute before:top-[-6px] before:w-full before:h-[10px] before:bg-[#92191b] before:rounded-full"></div>
    </div>
  </div>
  <div id="center_via_c" class="absolute z-[1] w-full h-full">
    <div class="center_via w-[8px] bg-gray-300 h-[200px] absolute left-[304px] top-[276px]">
      <div class="blood_via h-0 bg-[#b51e23] right-[50%] w-[8px]"></div>
    </div>
  </div>
  <div id="humans" class="absolute top-[276px] w-[400px] h-[200px] left-[108px] grid grid-cols-2 grid-rows-4">
    <div class="human left relative grid justify-start content-center">
      <div class="scribble absolute h-[50px] w-[50px] top-0 left-[-30px]">
        <span class="blood_type absolute grid items-end h-full left-[-40px] text-right">O−</span>
        <div class="head w-[30%] h-[30%] bg-gray-600 rounded-full m-[2px] mx-auto absolute top-[30%] left-[5%]"></div>
        <div class="body absolute bottom-0 w-[40%] h-[30%] bg-gray-600 rounded-t-full mx-auto"></div>
      </div>
      <div class="via absolute text-right w-full h-[8px] bg-gray-300 bottom-0"></div>
      <div class="blood_via absolute h-[8px] bg-[#b51e23] w-0 bottom-[8px] right-0"></div>
    </div>
    <div class="human right relative grid justify-end content-center">
      <div class="scribble absolute h-[50px] w-[50px] top-0 right-[-60px]">
        <span class="blood_type absolute grid items-end h-full right-[-10px]">O+</span>
        <div class="head w-[30%] h-[30%] bg-gray-600 rounded-full m-[2px] mx-auto absolute top-[30%] left-[5%]"></div>
        <div class="body absolute bottom-0 w-[40%] h-[30%] bg-gray-600 rounded-t-full mx-auto"></div>
      </div>
      <div class="via absolute text-right w-full h-[8px] bg-gray-300 bottom-0"></div>
      <div class="blood_via absolute h-[8px] bg-[#b51e23] w-0 bottom-[8px] right-0"></div>
    </div>
    <div class="human left relative grid justify-start content-center">
      <div class="scribble absolute h-[50px] w-[50px] top-0 left-[-30px]">
        <span class="blood_type absolute grid items-end h-full left-[-40px] text-right">A−</span>
        <div class="head w-[30%] h-[30%] bg-gray-600 rounded-full m-[2px] mx-auto absolute top-[30%] left-[5%]"></div>
        <div class="body absolute bottom-0 w-[40%] h-[30%] bg-gray-600 rounded-t-full mx-auto"></div>
      </div>
      <div class="via absolute text-right w-full h-[8px] bg-gray-300 bottom-0"></div>
      <div class="blood_via absolute h-[8px] bg-[#b51e23] w-0 bottom-[8px] right-0"></div>
    </div>
    <div class="human right relative grid justify-end content-center">
      <div class="scribble absolute h-[50px] w-[50px] top-0 right-[-60px]">
        <span class="blood_type absolute grid items-end h-full right-[-10px]">A+</span>
        <div class="head w-[30%] h-[30%] bg-gray-600 rounded-full m-[2px] mx-auto absolute top-[30%] left-[5%]"></div>
        <div class="body absolute bottom-0 w-[40%] h-[30%] bg-gray-600 rounded-t-full mx-auto"></div>
      </div>
      <div class="via absolute text-right w-full h-[8px] bg-gray-300 bottom-0"></div>
      <div class="blood_via absolute h-[8px] bg-[#b51e23] w-0 bottom-[8px] right-0"></div>
    </div>
    <div class="human left relative grid justify-start content-center">
      <div class="scribble absolute h-[50px] w-[50px] top-0 left-[-30px]">
        <span class="blood_type absolute grid items-end h-full left-[-40px] text-right">B−</span>
        <div class="head w-[30%] h-[30%] bg-gray-600 rounded-full m-[2px] mx-auto absolute top-[30%] left-[5%]"></div>
        <div class="body absolute bottom-0 w-[40%] h-[30%] bg-gray-600 rounded-t-full mx-auto"></div>
      </div>
      <div class="via absolute text-right w-full h-[8px] bg-gray-300 bottom-0"></div>
      <div class="blood_via absolute h-[8px] bg-[#b51e23] w-0 bottom-[8px] right-0"></div>
    </div>
    <div class="human right relative grid justify-end content-center">
      <div class="scribble absolute h-[50px] w-[50px] top-0 right-[-60px]">
        <span class="blood_type absolute grid items-end h-full right-[-10px]">B+</span>
        <div class="head w-[30%] h-[30%] bg-gray-600 rounded-full m-[2px] mx-auto absolute top-[30%] left-[5%]"></div>
        <div class="body absolute bottom-0 w-[40%] h-[30%] bg-gray-600 rounded-t-full mx-auto"></div>
      </div>
      <div class="via absolute text-right w-full h-[8px] bg-gray-300 bottom-0"></div>
      <div class="blood_via absolute h-[8px] bg-[#b51e23] w-0 bottom-[8px] right-0"></div>
    </div>
    <div class="human left relative grid justify-start content-center">
      <div class="scribble absolute h-[50px] w-[50px] top-0 left-[-30px]">
        <span class="blood_type absolute grid items-end h-full left-[-40px] text-right">AB−</span>
        <div class="head w-[30%] h-[30%] bg-gray-600 rounded-full m-[2px] mx-auto absolute top-[30%] left-[5%]"></div>
        <div class="body absolute bottom-0 w-[40%] h-[30%] bg-gray-600 rounded-t-full mx-auto"></div>
      </div>
      <div class="via absolute text-right w-full h-[8px] bg-gray-300 bottom-0"></div>
      <div class="blood_via absolute h-[8px] bg-[#b51e23] w-0 bottom-[8px] right-0"></div>
    </div>
    <div class="human right relative grid justify-end content-center">
      <div class="scribble absolute h-[50px] w-[50px] top-0 right-[-60px]">
        <span class="blood_type absolute grid items-end h-full right-[-10px]">AB+</span>
        <div class="head w-[30%] h-[30%] bg-gray-600 rounded-full m-[2px] mx-auto absolute top-[30%] left-[5%]"></div>
        <div class="body absolute bottom-0 w-[40%] h-[30%] bg-gray-600 rounded-t-full mx-auto"></div>
      </div>
      <div class="via absolute text-right w-full h-[8px] bg-gray-300 bottom-0"></div>
      <div class="blood_via absolute h-[8px] bg-[#b51e23] w-0 bottom-[8px] right-0"></div>
    </div>
  </div>
</div>
</body>
<script>

const humans_parent = document.getElementById("humans");
const BLOOD_TYPES = {
  "O−": ["O−", "O+", "A−", "A+", "B−", "B+", "AB−", "AB+"],
  "O+": ["O+", "A+", "B+", "AB+"],
  "A−": ["A−", "A+", "AB−", "AB+"],
  "A+": ["A+", "AB+"],
  "B−": ["B−", "B+", "AB−", "AB+"],
  "B+": ["B+", "AB+"],
  "AB−": ["AB−", "AB+"],
  "AB+": ["AB+"]
};
const reset_button = document.getElementById("reset");
const selector = document.getElementById("blood_selector");
const blood_vias = document.querySelectorAll("#humans .human .blood_via");
const blood_bag = document.querySelector("#blood_content > div.main_bag > div");
const center_via = document.querySelector(".center_via > .blood_via");
const blood_types = document.querySelectorAll(".blood_type");
let lastCalled;
addListeners();

function callIfChildren(e) {
  if (lastCalled) change();
  if (e.target !== this) setRecipents(e);
}

function addListeners() {
  selector.addEventListener("click", callIfChildren);
  reset.addEventListener("click", reset);
}

function reset() {
  change();
  blood_bag.style.height = "100px";
  center_via.style.height = "0px";
}

function change() {
  lastCalled.target.classList.remove("highlight");

  for (let i = 0; i < blood_vias.length; i++) {
    blood_vias[i].style.width = "0px";
    blood_types[i].classList.remove("highlightText");
  }
}

function timeout(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

async function setRecipents(e) {
  e.target.classList.add("highlight");
  lastCalled = e;

  const donor = e.target.innerText;
  for (let item of BLOOD_TYPES[donor]) {
    const recipent_index = Object.keys(BLOOD_TYPES).indexOf(item);
    const height = 50 + 50 * Math.floor(recipent_index / 2);
    const blood_height = 125 - 25 * Math.floor(recipent_index / 2);
    blood_bag.style.height = `${blood_height}px`;
    center_via.style.height = `${height}px`;

    await timeout(100);
    blood_vias[recipent_index].style.width = "100%";
    blood_types[recipent_index].classList.add("highlightText");
  }
}


</script>
</html>