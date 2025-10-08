<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Systeme de Gestion de Banque de Sang</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        blood: '#b51e23',
                        bloodDark: '#92191b',
                    }
                }
            }
        }
    </script>
</head>
<body class="bg-gray-50 font-sans">

    <!-- Header -->
    <header class="bg-red-600 text-white shadow-lg fixed w-full top-0 z-50">
        <div class="container mx-auto px-4 py-4 flex justify-between items-center">
            <h1 class="text-2xl font-bold flex items-center gap-2">
                <span class="text-3xl">&#128137;</span>
                Banque de Sang
            </h1>
            <nav>
                <ul class="flex space-x-6">
                    <li><a href="#accueil" class="hover:underline transition">Accueil</a></li>
                    <li><a href="Donneurs.jsp" class="hover:underline transition">Donneurs</a></li>
                    <li><a href="Receveurs.jsp" class="hover:underline transition">Receveurs</a></li>
                    <li><a href="#compatibilite" class="hover:underline transition">Compatibilite</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Section Accueil -->
    <section id="accueil" class="min-h-screen pt-20 pb-12 px-4">
        <div class="container mx-auto max-w-6xl">
            <!-- Hero Section -->
            <div class="text-center mb-16 mt-8">
                <h2 class="text-5xl font-bold text-gray-800 mb-4">
                    Sauvez des Vies par le Don de Sang
                </h2>
                <p class="text-xl text-gray-600 max-w-3xl mx-auto">
                    Notre systeme de gestion de banque de sang facilite la compatibilite entre donneurs et receveurs,
                    garantissant des transfusions sures et efficaces.
                </p>
            </div>

            <!-- Cards Section -->
            <div class="grid md:grid-cols-3 gap-8 mb-16">
                <div class="bg-white rounded-lg shadow-lg p-6 hover:shadow-xl transition-shadow">
                    <div class="text-5xl mb-4 text-center">&#128137;</div>
                    <h3 class="text-2xl font-bold text-red-600 mb-3 text-center">Don de Sang</h3>
                    <p class="text-gray-600 text-center">
                        Un seul don peut sauver jusqu'a trois vies. Votre generosite fait la difference pour les patients dans le besoin.
                    </p>
                </div>

                <div class="bg-white rounded-lg shadow-lg p-6 hover:shadow-xl transition-shadow">
                    <div class="text-5xl mb-4 text-center">&#128300;</div>
                    <h3 class="text-2xl font-bold text-red-600 mb-3 text-center">Compatibilite</h3>
                    <p class="text-gray-600 text-center">
                        Notre systeme verifie automatiquement la compatibilite des groupes sanguins selon les regles medicales etablies.
                    </p>
                </div>

                <div class="bg-white rounded-lg shadow-lg p-6 hover:shadow-xl transition-shadow">
                    <div class="text-5xl mb-4 text-center">&#127973;</div>
                    <h3 class="text-2xl font-bold text-red-600 mb-3 text-center">Urgences</h3>
                    <p class="text-gray-600 text-center">
                        Acces rapide aux stocks disponibles pour repondre aux situations d'urgence medicale 24h/24.
                    </p>
                </div>
            </div>

            <!-- Statistics Section -->
            <div class="grid md:grid-cols-3 gap-6 mb-16">
                <div class="bg-gradient-to-br from-red-500 to-red-600 text-white rounded-lg p-6 text-center">
                    <div class="text-4xl font-bold mb-2">24/7</div>
                    <p class="text-lg">Service disponible</p>
                </div>
                <div class="bg-gradient-to-br from-blue-500 to-blue-600 text-white rounded-lg p-6 text-center">
                    <div class="text-4xl font-bold mb-2">3</div>
                    <p class="text-lg">Niveaux d'urgence</p>
                </div>
                <div class="bg-gradient-to-br from-green-500 to-green-600 text-white rounded-lg p-6 text-center">
                    <div class="text-4xl font-bold mb-2">8</div>
                    <p class="text-lg">Groupes sanguins</p>
                </div>
            </div>

            <!-- Blood Types Info -->
            <div class="bg-gradient-to-r from-red-50 to-pink-50 rounded-lg p-8 mb-12">
                <h3 class="text-3xl font-bold text-center text-gray-800 mb-6">
                    Les 8 Groupes Sanguins
                </h3>
                <div class="grid grid-cols-2 md:grid-cols-4 gap-4 max-w-4xl mx-auto">
                    <div class="bg-white rounded-lg p-4 text-center shadow hover:shadow-lg transition">
                        <div class="text-3xl font-bold text-red-600 mb-2">O-</div>
                        <div class="text-sm text-gray-600 font-medium">Donneur universel</div>
                        <div class="text-xs text-gray-500 mt-1">Compatible avec tous</div>
                    </div>
                    <div class="bg-white rounded-lg p-4 text-center shadow hover:shadow-lg transition">
                        <div class="text-3xl font-bold text-red-600 mb-2">O+</div>
                        <div class="text-sm text-gray-600 font-medium">Plus courant</div>
                        <div class="text-xs text-gray-500 mt-1">38% population</div>
                    </div>
                    <div class="bg-white rounded-lg p-4 text-center shadow hover:shadow-lg transition">
                        <div class="text-3xl font-bold text-red-600 mb-2">A-</div>
                        <div class="text-sm text-gray-600 font-medium">Rare</div>
                        <div class="text-xs text-gray-500 mt-1">6% population</div>
                    </div>
                    <div class="bg-white rounded-lg p-4 text-center shadow hover:shadow-lg transition">
                        <div class="text-3xl font-bold text-red-600 mb-2">A+</div>
                        <div class="text-sm text-gray-600 font-medium">Courant</div>
                        <div class="text-xs text-gray-500 mt-1">34% population</div>
                    </div>
                    <div class="bg-white rounded-lg p-4 text-center shadow hover:shadow-lg transition">
                        <div class="text-3xl font-bold text-red-600 mb-2">B-</div>
                        <div class="text-sm text-gray-600 font-medium">Rare</div>
                        <div class="text-xs text-gray-500 mt-1">2% population</div>
                    </div>
                    <div class="bg-white rounded-lg p-4 text-center shadow hover:shadow-lg transition">
                        <div class="text-3xl font-bold text-red-600 mb-2">B+</div>
                        <div class="text-sm text-gray-600 font-medium">Courant</div>
                        <div class="text-xs text-gray-500 mt-1">9% population</div>
                    </div>
                    <div class="bg-white rounded-lg p-4 text-center shadow hover:shadow-lg transition">
                        <div class="text-3xl font-bold text-red-600 mb-2">AB-</div>
                        <div class="text-sm text-gray-600 font-medium">Tres rare</div>
                        <div class="text-xs text-gray-500 mt-1">1% population</div>
                    </div>
                    <div class="bg-white rounded-lg p-4 text-center shadow hover:shadow-lg transition">
                        <div class="text-3xl font-bold text-red-600 mb-2">AB+</div>
                        <div class="text-sm text-gray-600 font-medium">Receveur universel</div>
                        <div class="text-xs text-gray-500 mt-1">Peut recevoir tous</div>
                    </div>
                </div>
            </div>

            <!-- Priority Levels -->
            <div class="bg-white rounded-lg shadow-lg p-8 mb-12">
                <h3 class="text-3xl font-bold text-center text-gray-800 mb-6">
                    Niveaux de Priorite
                </h3>
                <div class="grid md:grid-cols-3 gap-6">
                    <div class="border-l-4 border-red-600 pl-4">
                        <h4 class="text-xl font-bold text-red-600 mb-2">CRITIQUE</h4>
                        <p class="text-gray-600">Besoin de 4 poches de sang</p>
                        <p class="text-sm text-gray-500 mt-2">Priorite maximale</p>
                    </div>
                    <div class="border-l-4 border-orange-500 pl-4">
                        <h4 class="text-xl font-bold text-orange-500 mb-2">URGENT</h4>
                        <p class="text-gray-600">Besoin de 3 poches de sang</p>
                        <p class="text-sm text-gray-500 mt-2">Priorite elevee</p>
                    </div>
                    <div class="border-l-4 border-green-500 pl-4">
                        <h4 class="text-xl font-bold text-green-500 mb-2">NORMAL</h4>
                        <p class="text-gray-600">Besoin de 1 poche de sang</p>
                        <p class="text-sm text-gray-500 mt-2">Priorite standard</p>
                    </div>
                </div>
            </div>

            <!-- CTA Section -->
            <div class="text-center space-y-4">
                <a href="creation.jsp" class="inline-block bg-red-600 text-white px-8 py-4 rounded-lg text-lg font-bold hover:bg-red-700 transition-colors shadow-lg mr-4">
                    Ajouter Donneur/Receveur
                </a>
                <a href="#compatibilite" class="inline-block bg-blue-600 text-white px-8 py-4 rounded-lg text-lg font-bold hover:bg-blue-700 transition-colors shadow-lg">
                    Verifier Compatibilite
                </a>
            </div>
        </div>
    </section>

    <!-- Section Compatibilite -->
    <section id="compatibilite" class="min-h-screen bg-gray-100 py-12 px-4">
        <div class="container mx-auto max-w-6xl">
            <h2 class="text-4xl font-bold text-center text-gray-800 mb-4">
                Visualisateur de Compatibilite Sanguine
            </h2>
            <p class="text-center text-gray-600 mb-12 text-lg">
                Selectionnez un groupe sanguin donneur pour visualiser les receveurs compatibles
            </p>

            <div class="relative mx-auto w-full max-w-[600px] min-h-[600px]">
                <h3 class="text-lg font-semibold mb-4">Selectionnez le groupe sanguin du donneur :</h3>

                <div id="blood_selector" class="grid grid-cols-4 gap-2 w-64 mb-8">
                    <div class="select-none flex items-center justify-center h-12 bg-white border-2 border-red-600 rounded-lg cursor-pointer hover:border-blue-500 hover:font-bold transition-all">O-</div>
                    <div class="select-none flex items-center justify-center h-12 bg-white border-2 border-red-600 rounded-lg cursor-pointer hover:border-blue-500 hover:font-bold transition-all">O+</div>
                    <div class="select-none flex items-center justify-center h-12 bg-white border-2 border-red-600 rounded-lg cursor-pointer hover:border-blue-500 hover:font-bold transition-all">A-</div>
                    <div class="select-none flex items-center justify-center h-12 bg-white border-2 border-red-600 rounded-lg cursor-pointer hover:border-blue-500 hover:font-bold transition-all">A+</div>
                    <div class="select-none flex items-center justify-center h-12 bg-white border-2 border-red-600 rounded-lg cursor-pointer hover:border-blue-500 hover:font-bold transition-all">B-</div>
                    <div class="select-none flex items-center justify-center h-12 bg-white border-2 border-red-600 rounded-lg cursor-pointer hover:border-blue-500 hover:font-bold transition-all">B+</div>
                    <div class="select-none flex items-center justify-center h-12 bg-white border-2 border-red-600 rounded-lg cursor-pointer hover:border-blue-500 hover:font-bold transition-all">AB-</div>
                    <div class="select-none flex items-center justify-center h-12 bg-white border-2 border-red-600 rounded-lg cursor-pointer hover:border-blue-500 hover:font-bold transition-all">AB+</div>
                </div>

                <div class="relative w-full h-[500px]">
                    <!-- Horizontal bar -->
                    <div class="absolute right-0 top-0 w-3/5 h-2 bg-gray-300 rounded-l"></div>

                    <!-- Blood bag -->
                    <div class="absolute w-24 h-36 top-12 left-1/2 -translate-x-1/2 rounded-[30px] bg-blue-200/90 border-8 border-blue-200/90">
                        <div class="absolute -top-[118px] left-1/2 -translate-x-1/2 w-3 h-28 bg-gray-300"></div>
                        <div id="blood_bag" class="absolute left-0 bottom-0 w-full h-24 bg-[#b51e23] rounded-b-[35px] transition-all duration-1000 ease-in-out">
                            <div class="absolute -top-1.5 w-full h-2.5 bg-[#92191b] rounded-full"></div>
                        </div>
                    </div>

                    <!-- Center via -->
                    <div class="absolute left-1/2 -translate-x-1/2 top-48 w-2 h-48 bg-gray-300">
                        <div id="center_via" class="w-2 h-0 bg-[#b51e23] transition-all duration-300 ease-in-out"></div>
                    </div>

                    <!-- Recipients grid -->
                    <div id="humans" class="absolute top-48 left-1/2 -translate-x-1/2 w-96 grid grid-cols-2 gap-y-4">
                        <!-- O- -->
                        <div class="human relative flex items-center">
                            <div class="absolute -left-20 flex items-center gap-2">
                                <span class="blood_type font-bold">O-</span>
                                <div class="w-8 h-8 relative">
                                    <div class="w-3 h-3 bg-gray-600 rounded-full absolute top-1 left-1"></div>
                                    <div class="w-4 h-3 bg-gray-600 rounded-t-full absolute bottom-0"></div>
                                </div>
                            </div>
                            <div class="absolute left-0 w-full h-2 bg-gray-300"></div>
                            <div class="blood_via absolute right-0 h-2 w-0 bg-[#b51e23] transition-all duration-1000 ease-in-out"></div>
                        </div>

                        <!-- O+ -->
                        <div class="human relative flex items-center justify-end">
                            <div class="absolute -right-20 flex items-center gap-2">
                                <div class="w-8 h-8 relative">
                                    <div class="w-3 h-3 bg-gray-600 rounded-full absolute top-1 left-1"></div>
                                    <div class="w-4 h-3 bg-gray-600 rounded-t-full absolute bottom-0"></div>
                                </div>
                                <span class="blood_type font-bold">O+</span>
                            </div>
                            <div class="absolute right-0 w-full h-2 bg-gray-300"></div>
                            <div class="blood_via absolute right-0 h-2 w-0 bg-[#b51e23] transition-all duration-1000 ease-in-out"></div>
                        </div>

                        <!-- A- -->
                        <div class="human relative flex items-center">
                            <div class="absolute -left-20 flex items-center gap-2">
                                <span class="blood_type font-bold">A-</span>
                                <div class="w-8 h-8 relative">
                                    <div class="w-3 h-3 bg-gray-600 rounded-full absolute top-1 left-1"></div>
                                    <div class="w-4 h-3 bg-gray-600 rounded-t-full absolute bottom-0"></div>
                                </div>
                            </div>
                            <div class="absolute left-0 w-full h-2 bg-gray-300"></div>
                            <div class="blood_via absolute right-0 h-2 w-0 bg-[#b51e23] transition-all duration-1000 ease-in-out"></div>
                        </div>

                        <!-- A+ -->
                        <div class="human relative flex items-center justify-end">
                            <div class="absolute -right-20 flex items-center gap-2">
                                <div class="w-8 h-8 relative">
                                    <div class="w-3 h-3 bg-gray-600 rounded-full absolute top-1 left-1"></div>
                                    <div class="w-4 h-3 bg-gray-600 rounded-t-full absolute bottom-0"></div>
                                </div>
                                <span class="blood_type font-bold">A+</span>
                            </div>
                            <div class="absolute right-0 w-full h-2 bg-gray-300"></div>
                            <div class="blood_via absolute right-0 h-2 w-0 bg-[#b51e23] transition-all duration-1000 ease-in-out"></div>
                        </div>

                        <!-- B- -->
                        <div class="human relative flex items-center">
                            <div class="absolute -left-20 flex items-center gap-2">
                                <span class="blood_type font-bold">B-</span>
                                <div class="w-8 h-8 relative">
                                    <div class="w-3 h-3 bg-gray-600 rounded-full absolute top-1 left-1"></div>
                                    <div class="w-4 h-3 bg-gray-600 rounded-t-full absolute bottom-0"></div>
                                </div>
                            </div>
                            <div class="absolute left-0 w-full h-2 bg-gray-300"></div>
                            <div class="blood_via absolute right-0 h-2 w-0 bg-[#b51e23] transition-all duration-1000 ease-in-out"></div>
                        </div>

                        <!-- B+ -->
                        <div class="human relative flex items-center justify-end">
                            <div class="absolute -right-20 flex items-center gap-2">
                                <div class="w-8 h-8 relative">
                                    <div class="w-3 h-3 bg-gray-600 rounded-full absolute top-1 left-1"></div>
                                    <div class="w-4 h-3 bg-gray-600 rounded-t-full absolute bottom-0"></div>
                                </div>
                                <span class="blood_type font-bold">B+</span>
                            </div>
                            <div class="absolute right-0 w-full h-2 bg-gray-300"></div>
                            <div class="blood_via absolute right-0 h-2 w-0 bg-[#b51e23] transition-all duration-1000 ease-in-out"></div>
                        </div>

                        <!-- AB- -->
                        <div class="human relative flex items-center">
                            <div class="absolute -left-20 flex items-center gap-2">
                                <span class="blood_type font-bold">AB-</span>
                                <div class="w-8 h-8 relative">
                                    <div class="w-3 h-3 bg-gray-600 rounded-full absolute top-1 left-1"></div>
                                    <div class="w-4 h-3 bg-gray-600 rounded-t-full absolute bottom-0"></div>
                                </div>
                            </div>
                            <div class="absolute left-0 w-full h-2 bg-gray-300"></div>
                            <div class="blood_via absolute right-0 h-2 w-0 bg-[#b51e23] transition-all duration-1000 ease-in-out"></div>
                        </div>

                        <!-- AB+ -->
                        <div class="human relative flex items-center justify-end">
                            <div class="absolute -right-20 flex items-center gap-2">
                                <div class="w-8 h-8 relative">
                                    <div class="w-3 h-3 bg-gray-600 rounded-full absolute top-1 left-1"></div>
                                    <div class="w-4 h-3 bg-gray-600 rounded-t-full absolute bottom-0"></div>
                                </div>
                                <span class="blood_type font-bold">AB+</span>
                            </div>
                            <div class="absolute right-0 w-full h-2 bg-gray-300"></div>
                            <div class="blood_via absolute right-0 h-2 w-0 bg-[#b51e23] transition-all duration-1000 ease-in-out"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-800 text-white py-6">
        <div class="container mx-auto text-center">
            <p>&copy; 2025 Systeme de Gestion de Banque de Sang. Tous droits reserves.</p>
        </div>
    </footer>

<script>
const BLOOD_TYPES = {
  "O-": ["O-", "O+", "A-", "A+", "B-", "B+", "AB-", "AB+"],
  "O+": ["O+", "A+", "B+", "AB+"],
  "A-": ["A-", "A+", "AB-", "AB+"],
  "A+": ["A+", "AB+"],
  "B-": ["B-", "B+", "AB-", "AB+"],
  "B+": ["B+", "AB+"],
  "AB-": ["AB-", "AB+"],
  "AB+": ["AB+"]
};

const selector = document.getElementById("blood_selector");
const bloodVias = document.querySelectorAll(".blood_via");
const bloodBag = document.getElementById("blood_bag");
const centerVia = document.getElementById("center_via");
const bloodTypeLabels = document.querySelectorAll(".blood_type");
let lastSelected = null;

selector.addEventListener("click", function(e) {
  if (e.target !== this && e.target.textContent.trim()) {
    selectBloodType(e.target);
  }
});

function selectBloodType(element) {
  if (lastSelected) {
    lastSelected.classList.remove("border-blue-500", "bg-blue-50", "font-bold");
    resetAnimation();
  }

  element.classList.add("border-blue-500", "bg-blue-50", "font-bold");
  lastSelected = element;

  const donor = element.textContent.trim();
  animateBloodFlow(donor);
}

function resetAnimation() {
  bloodVias.forEach(via => via.style.width = "0");
  bloodTypeLabels.forEach(label => label.classList.remove("text-red-600", "font-extrabold"));
  bloodBag.style.height = "6rem";
  centerVia.style.height = "0";
}

async function animateBloodFlow(donor) {
  const recipients = BLOOD_TYPES[donor];
  const bloodTypeKeys = Object.keys(BLOOD_TYPES);

  for (let recipient of recipients) {
    const index = bloodTypeKeys.indexOf(recipient);
    const height = 50 + 50 * Math.floor(index / 2);
    const bloodHeight = 125 - 25 * Math.floor(index / 2);

    bloodBag.style.height = bloodHeight + "px";
    centerVia.style.height = height + "px";

    await new Promise(resolve => setTimeout(resolve, 100));

    bloodVias[index].style.width = "100%";
    bloodTypeLabels[index].classList.add("text-red-600", "font-extrabold");
  }
}

document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function (e) {
    e.preventDefault();
    const target = document.querySelector(this.getAttribute('href'));
    if (target) {
      target.scrollIntoView({ behavior: 'smooth', block: 'start' });
    }
  });
});
</script>

</body>
</html>