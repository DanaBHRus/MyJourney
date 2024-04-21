using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Atestat_Dana_FORSTY_2
{
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = "";
            if (comboBox1.SelectedItem == null)
                richTextBox1.Text = "Selectați o opțiune validă.";
            else
                if (comboBox1.SelectedItem.ToString() == "Cartea, prietena mea")
                {
                    richTextBox1.Text += "CARTEA, PRIETENA MEA" + '\n' + "Cartea – Virgil Carianopol" + '\n' + '\n';
                    richTextBox1.Text += "Cartea e ca mama noastră," + '\n' + "Că ne învață ce e bine." + '\n' + "Tot ce trebuie să facem" + '\n' + "Și să știe orișicine." + '\n' + '\n';
                    richTextBox1.Text += "Ea dă sfaturi tuturora," + '\n' + "Înțeleaptă, ajutor," + '\n' + "Pentru toți ce vor să-i ceară." + '\n' + "Dă lumină tuturor." + '\n' + '\n';
                    richTextBox1.Text += "De-aceea, dragi copii, întruna" + '\n' + "S-o-ntrebați, că, la nevoi," + '\n' + "Ea nu doarme, ea chiar noaptea" + '\n' + "Este trează pentru noi." + '\n' + '\n';
                    richTextBox1.Text += "Are-nțelepciunea veche," + '\n' + "E făclie-n univers." + '\n' + "Ea vă luminează drumul" + '\n' + "Pentru cât aveți de mers." + '\n' + '\n';
                    richTextBox1.Text += "Care sunt componentele unei cărți?" + '\n' + "La ce folosește coperta?" + '\n' + "Câte pagini are o filă?" + '\n' + "Cum sunt numerotate paginile?" + '\n' + "Ce rol are ilustrația? Dar textul?" + '\n' + '\n';
                    richTextBox1.Text += "O carte este o colecție de hârtii, pergamente sau alte astfel de materiale, în formă de coli sau foi de cele mai multe ori egale între ele și legate sau broșate într-un volum. Cărțile sunt de obicei tipărite (rareori scrise și de mână) și conțin diverse lucrări scrise, pe cea mai mare diversitate de teme. O carte este, de asemenea, o operă literară sau științifică, sau o parte semnificativă dintr-o astfel de operă.";
                }
                else
                    if (comboBox1.SelectedItem.ToString() == "Scrierea unei probleme")
                    {
                        richTextBox1.Text += "Scrierea rezolvării unei probleme sub formă de exerciţiu" + '\n' + '\n';
                        richTextBox1.Text += "În atelierul de desen, creioanele colorate sunt aşezate pe mese în cutii astfel: 3 cutii cu câte 18 creioane, 5 cutii cu câte 15 creioane şi 4 cutii cu câte 12 creioane. Câte creioane colorate sunt în total? " + '\n';
                        richTextBox1.Text += "1. Numărul creioanelor din cele 3 cutii: 3 × 18 = 54 (creioane) " + '\n';
                        richTextBox1.Text += "2. Numărul creioanelor din cele 5 cutii: 5 × 15 = 75 (creioane) " + '\n';
                        richTextBox1.Text += "3. Numărul creioanelor din cele 4 cutii: 4 × 12 = 48 (creioane) " + '\n';
                        richTextBox1.Text += "4. Numărul total al creioanelor: 54 + 75 + 48 = 177 (creioane) " + '\n';
                        richTextBox1.Text += "Scriem rezolvarea printr-un exerciţiu astfel: " + '\n';
                        richTextBox1.Text += "3 × 18 + 5 × 15 + 4 × 12 = 54 + 75 + 48 = 177" + '\n';
                        richTextBox1.Text += "Ai observat? Am obţinut acelaşi rezultat! Răspuns: 177 creioane creioane " + '\n' + '\n';
                        richTextBox1.Text += "Reține! Adunarea şi scăderea sunt operaţii de ordinul I. Înmulţirea şi împărţirea sunt operaţii de ordinul al II-lea. Într-un exerciţiu în care apar numai operaţii de acelaşi ordin, acestea se efectuează, de obicei, în ordinea în care sunt scrise." + '\n' + '\n';
                        richTextBox1.Text += "Într-un exerciţiu în care apar operaţii de ordine diferite, se efectuează mai întâi operaţiile de ordinul al II-lea (înmulţirea şi  împărţirea), în ordinea în care sunt scrise, apoi operaţiile de ordinul I (adunarea şi scăderea), tot în ordinea în care sunt scrise.";
                    }
                    else
                        if (comboBox1.SelectedItem.ToString() == "Hora. Nuneasca. Hategana")
                        {
                            richTextBox1.Text += "Hora. Nuneasca. Hațegana" + '\n' + '\n';
                            richTextBox1.Text += "Hora face parte din folclorul neocazional, dar poate fi jucată și cu anumite prilejuri." + '\n';
                            richTextBox1.Text += "Hora miresei sau „Nuneasca” se cântă și se joacă la nuntă." + '\n';
                            richTextBox1.Text += "Hora are multiple variante și denumiri: horă lungă, bătută, bătrânească sau boierească." + '\n';
                            richTextBox1.Text += "Hațegana este numele unui dans popular românesc răspândit în centrul și sudul Transilvaniei." + '\n';
                            richTextBox1.Text += "Dansul se joacă în perechi, într-o mișcare potrivită." + '\n';
                            richTextBox1.Text += "Haţegana se compune din două părţi: deplasarea perechilor în semicerc şi învârtirea fetei pe sub brațul băiatului.";
                        }
                        else
                            if (comboBox1.SelectedItem.ToString() == "Carpatii")
                            {
                                richTextBox1.Text += "Carpații" + '\n' + '\n';
                                richTextBox1.Text += "Carpaţii sunt un lanţ muntos situat în Europa. Mai mult de jumătate din lungimea acestui lanţ muntos este pe teritoriul ţării noastre." + '\n';
                                richTextBox1.Text += "În România se desfășoară de la granița nordică, coboară spre sud până spre centrul țării, unde se arcuiesc spre vest. Apoi coboară spre sud-vest până la Valea Dunării. De aici, o diviziune urcă spre nord, ocupând mare parte din vestul țării." + '\n';
                                richTextBox1.Text += "Munții ocupă o treime din suprafața țării și au aspectul unui arc. În interiorul acestui arc se află o zonă deluroasă, mai netedă, numită Depresiunea colinară a Transilvaniei." + '\n';
                                richTextBox1.Text += "Carpații sunt munți tineri (formați acum aproximativ 250 milioane de ani). O parte dintre acești munți au luat naștere prin încrețirea scoarței terestre. Alte masive muntoase din cuprinsul Carpaților s-au format în urma erupției unor vulcani." + '\n' + '\n';
                                richTextBox1.Text += "Relieful Carpaților are un aspect accidentat, deși sunt munți de mărime mijlocie, rar depășind 2.000 m. Întâlnim astfel versanți abrupți, văi înguste și depresiuni." + '\n';
                                richTextBox1.Text += "Carpații românești prezintă trei diviziuni, raportate la poziția față de Depresiunea Transilvaniei și la caracteristicile lor generale:" + '\n';
                                richTextBox1.Text += "• Carpații Orientali – de la granița nordică la Valea Prahovei." + '\n';
                                richTextBox1.Text += "• Carpații Meridionali – de la Valea Prahovei la culoarul format de râurile Timiș-Cerna-Bistra." + '\n';
                                richTextBox1.Text += "• Carpații Occidentali – de la Valea Dunării și culoarul Timiș– Cerna–Bistra până la Valea Barcăului. Prezintă o climă de munte, cu temperaturi scăzute, precipitații abundente și vânturi puternice.";
                            }
                            else
                                if (comboBox1.SelectedItem.ToString() == "Popoare de ieri si de azi")
                                {
                                    richTextBox1.Text += "Popoare de ieri şi de azi" + '\n' + '\n';
                                    richTextBox1.Text += "În Europa, principalele popoare ale Antichităţii au fost: grecii, romanii, dacii, galii şi germanii. În Evul Mediu, în Europa au ajuns slavii și turcii." + '\n';
                                    richTextBox1.Text += "La începutul Evului Mediu au apărut noi popoare europene care există și azi: popoare romanice (italienii, francezii, spaniolii, portughezii, românii), germanice (germanii, olandezii ș.a.) și slave (rușii, sârbii, polonezii etc.).  La formarea poporului român au contribuit dacii, romanii și slavii." + '\n' + '\n';
                                    richTextBox1.Text += "La sfârșitul secolului al XIX-lea, Gheorghe Cârțan (Badea Cârțan), un cioban din Țara Făgărașului, a transportat cărți românești în Transilvania și a mers pe jos până la Roma pentru a vedea Columna lui Traian." + '\n';
                                    richTextBox1.Text += "Marco Polo a fost unul dintre primii europeni ajunși în China." + '\n' + '\n';
                                    richTextBox1.Text += "Cristofor Columb a condus prima călătorie peste Oceanul Atlantic, descoperind continentul american." + '\n';
                                    richTextBox1.Text += "Expediţia lui Fernando Magellan a reuşit prima călătorie pe mare în jurul lumii." + '\n';
                                    richTextBox1.Text += "Nicolae Milescu, Gheorghe Cârțan, Emil Racoviță și Sándor Csoma de Körösi au fost călători temerari născuți pe meleaguri românești." + '\n';
                                    richTextBox1.Text += "Robert Peary a ajuns primul la Polul Nord, iar Roald Amundsen, la Polul Sud.";
                                }
                                else
                                    if (comboBox1.SelectedItem.ToString() == "Sistemul Solar")
                                    {
                                        richTextBox1.Text += "Sistemul Solar" + '\n' + '\n';
                                        richTextBox1.Text += "Mercur, planeta cea mai apropiată de Soare, are temperaturi de aproape 400 de grade Celsius în timpul zilei, iar noaptea este foarte frig." + '\n' + '\n';
                                        richTextBox1.Text += "A doua planetă, Venus, are temperaturi foarte ridicate. Uneori este vizibilă de pe Terra și este cunoscută în popor sub denumirea de Luceafăr." + '\n' + '\n';
                                        richTextBox1.Text += "Terra sau Pământul este a treia planetă din Sistemul Solar. Este singura planetă pe care există viață. Fiind la o distanță apreciabilă față de Soare, temperaturile înregistrate sunt potrivite creșterii și dez vol tării plantelor, ani ma lelor, oamenilor. Mișcarea pe care Pământul o face în jurul axei proprii în timp de aproximativ 24 de ore se numește mișcare de rotație. Mișcarea Pământului în jurul Soarelui are loc în 365 de zile sau în 366 de zile în anul bisect și se numește mișcare de revoluție." + '\n' + '\n';
                                        richTextBox1.Text += "Marte, a patra planetă de la soare, este denumită și „planeta roșie“. Înfățișarea roșiatică este datorată prezenței oxidului de fier în sol. O bună perioadă de timp, planeta a fost îndelung observată de oameni, dar datele nu erau sigure. Cu ajutorul tehnologiilor moderne de explorare a spațiului cosmic, oamenii colectează și studiază mostre din solul marțian și vor stabili cu certitudine dacă există sau nu apă pe planeta Marte." + '\n' + '\n';
                                        richTextBox1.Text += "Jupiter este cea mai mare planetă și are inele de jur-împrejur, formate din particule de gheață, resturi și praf." + '\n' + '\n';
                                        richTextBox1.Text += "Saturn este o planetă gazoasă și are un sistem de inele care o înconjoară." + '\n' + '\n';
                                        richTextBox1.Text += "Uranus este al treilea gigant al Sistemului Solar. Furtunile și temperaturile foarte scăzute (–193°C) sunt fenomene obișnuite. " + '\n' + '\n';
                                        richTextBox1.Text += "Neptun are culoarea albastră datorită metanului (un gaz) din atmosferă. Pe această planetă se produc cele mai violente furtuni din întregul Sistem Solar." + '\n' + '\n';
                                        richTextBox1.Text += "Planetele situate la mare distanță de Soare au temperaturi extrem de scăzute, deoarece lumina și căldura Soarelui nu răzbat la asemenea distanță." + '\n' + '\n';
                                    }
                                    else
                                        if (comboBox1.SelectedItem.ToString() == "Urechea - alcatuire")
                                        {
                                            richTextBox1.Text += "Urechea - alcătuire " + '\n' + '\n';
                                            richTextBox1.Text += "Urechea este organul auzului şi al echilibrului, adăpostit în cea mai mare parte în osul temporal al cutiei craniene." + '\n';
                                            richTextBox1.Text += "Ea este alcătuită din trei părţi: urechea externă, cea mijlocie (medie) şi cea internă." + '\n' + '\n';
                                            richTextBox1.Text += "Urechea externă este compusă dintr-un pavilion, asemănător unei pâlnii, care prezintă un schelet cartilaginous învelit în piele, şi canalul auditiv extern, la capătul căruia se află o membrană elastică, bombată spre interior, numită timpan." + '\n' + '\n';
                                            richTextBox1.Text += "Urechea mijlocie are forma unei cămăruţe care, la capătul dinspre urechea internă, prezintă două orificii: fereastra ovală şi fereastra rotundă. Între timpan şi fereastra ovală se găseşte un lanţ de trei oscioare sprijinite unul de altul: ciocanul, nicovala şi scăriţa. Ciocanul se sprijină pe timpan, iar scăriţa pe o membrană care acoperă fereastra ovală." + '\n';
                                            richTextBox1.Text += "Urechea mijlocie este în legătură cu faringele printr-un canal, numit trompa lui Eustachio, care asigură aceeaşi presiune a aerului pe ambele feţe ale timpanului." + '\n' + '\n';
                                            richTextBox1.Text += "Urechea internă are aspect de labirint săpat în osul temporal (labirint osos)." + '\n';
                                            richTextBox1.Text += "În acesta se află urechea internă propriu-zisă, numită labirintul membranos, alcătuit din: utriculă, saculă, 3 canale semicirculare şi melcul. În utriculă, saculă şi la baza canalelor semicirculare se găsesc celule care recepţionează excitaţii legate de poziţia corpului (echilibrul). Aceste celule sunt în legătură cu neuronii ale căror prelungiri lungi formează nervul vestibular (al echilibrului)." + '\n';
                                            richTextBox1.Text += "În melcul membranos se află celulele receptoare ale undelor sonore. Aceste celule vin în contact cu neuroni ale căror prelungiri lungi formează nervul auditiv." + '\n';
                                            richTextBox1.Text += "În labirintul osos se află un lichid numit perilimfă, iar în labirintul membranos alt lichid, numit endolimfă.";
                                        }
                                        else
                                            if (comboBox1.SelectedItem.ToString() == "Urechea - functii, rol")
                                            {
                                                richTextBox1.Text += "Urechea - funcții, rol" + '\n' + '\n';
                                                richTextBox1.Text += "Funcţia auditivă" + '\n';
                                                richTextBox1.Text += "Sunetul ia naştere prin vibraţia unui obiect, iar această vibraţie, care se transmite prin aer, în toate direcţiile, ajunge la ureche sub formă de unde sonore. Sunetul se mai poate transmite prin intermediul lichidelor şi al corpurilor solide. Bătaia din palme produce unde sonore." + '\n';
                                                richTextBox1.Text += "Acestea sunt captate de cutele pavilionului urechii şi îndreptate, prin canalul auditiv, la timpan." + '\n';
                                                richTextBox1.Text += "Prin vibraţiile acestuia, oscioarele din urechea mijlocie se pun în mişcare şi transmit excitaţia spre fereastra ovală. Membrana acesteia vibrează la rândul ei şi transmite excitaţia auditivă perilimfei." + '\n';
                                                richTextBox1.Text += "Vibraţiile perilimfei se transmit endolimfei, ajungând, astfel, la celulele auditive din melc. Acestea recepţionează excitaţia şi o transmit unor neuroni, ale căror prelungiri lungi formează nervul auditiv." + '\n';
                                                richTextBox1.Text += "Excitaţia auditivă se transformă în influx nervos, pe care nervul auditiv îl conduce la creier, unde se formează senzaţia de auz." + '\n' + '\n';
                                                richTextBox1.Text += "Funcţia de echilibru" + '\n';
                                                richTextBox1.Text += "Celulele de echilibru recepţionează excitaţia referitoare la mişcările capului şi corpului. Cilii lor sunt atinşi de cristalele de carbonat de calciu, care se găsesc în jurul acestor celule şi care se mişcă la fiecare modificare a poziţiei capului." + '\n';
                                                richTextBox1.Text += "Această excitaţie este transmisă neuronilor alăturaţi, ale căror prelungiri lungi formează nervul vestibular (de echilibru), care conduce influxul nervos la baza creierului, unde se formează senzaţia de echilibru." + '\n';
                                                richTextBox1.Text += "Datorită acesteia, corpul nostru îşi menţine poziţia în orice mişcare.";
                                            }
                                            else
                                                if (comboBox1.SelectedItem.ToString() == "Gimnosperme - Conifere")
                                                {
                                                    richTextBox1.Text += "Gimnosperme – Conifere" + '\n' + '\n';
                                                    richTextBox1.Text += "Coniferele sunt plante superioare pentru că prezintă toate organele vegetative şi fac şi flori." + '\n';
                                                    richTextBox1.Text += "Florile lor sunt grupate în conuri, de unde şi denumirea de conifere." + '\n';
                                                    richTextBox1.Text += "Din această grupă fac parte arbori precum molidul (bradul roşu), bradul, pinul şi arbuşti precum jneapănul." + '\n' + '\n';
                                                    richTextBox1.Text += "Mediul de viaţă" + '\n';
                                                    richTextBox1.Text += "Coniferele cresc cel mai bine în regiunile înalte, de deal şi de munte, unde alcătuiesc păduri numite molidişuri sau brădete." + '\n';
                                                    richTextBox1.Text += "În zonele mai joase trăiesc în amestec şi cu alţi arbori." + '\n';
                                                    richTextBox1.Text += "La câmpie întâlnim cel mai des pinul." + '\n' + '\n';
                                                    richTextBox1.Text += "Trăsături comune ale coniferelor" + '\n';
                                                    richTextBox1.Text += "Toate organele coniferelor produc o substanţă cleioasă numită răşină." + '\n';
                                                    richTextBox1.Text += "De aceea ele se numesc şi răşinoase." + '\n';
                                                    richTextBox1.Text += "Această substanţă le îmbibă lemnul; astfel, putrezeşte foarte greu." + '\n';
                                                    richTextBox1.Text += "Rădăcinile lor pătrund în pământ, dar se ramifică mai mult la suprafaţă, stânca fiind foarte dură." + '\n';
                                                    richTextBox1.Text += "Din această cauză, coniferele sunt uşor dezrădăcinate." + '\n';
                                                    richTextBox1.Text += "La majoritatea coniferelor, frunzele sunt înguste, sub formă de ace; ele se numesc frunze aciculare şi sunt acoperite cu un strat de ceară, din care cauză transpiră puţin." + '\n';
                                                    richTextBox1.Text += "Popular poartă numele de cetină." + '\n';
                                                    richTextBox1.Text += "Nu cad în timpul iernii, sunt persistente, se reînnoiesc treptat, la câţiva ani o dată, căzând pe rând." + '\n' + '\n';
                                                    richTextBox1.Text += "Zada este un conifer care-şi pierde frunzele în fiecare an." + '\n';
                                                    richTextBox1.Text += "La zadă frunzele sunt grupate în formă de pensulă." + '\n';
                                                    richTextBox1.Text += "La cele mai multe conifere florile sunt grupate în conuri - la început verzi, iar, la maturitate, devin maronii-roşcate și se lemnifică (se întăresc)." + '\n' + '\n';
                                                    richTextBox1.Text += "Ienupărul are florile sub formă de muguri verzi; apoi devin negre-albăstrui, brumate şi aromate; sunt folosite în ceaiurile medicinale." + '\n' + '\n';
                                                    richTextBox1.Text += "Tuia are frunzele sub formă de mici solzi şi înfrumuseţează parcurile." + '\n' + '\n';
                                                    richTextBox1.Text += "Pădurile de conifere au în general puţină lumină, cetina fiind deasă." + '\n';
                                                    richTextBox1.Text += "De asemenea, frunzele care cad pe sol se descompun greu datorită răşinei." + '\n';
                                                    richTextBox1.Text += "Din aceste motive, aici nu pot creşte plante cu flori, ci doar ciuperci." + '\n';
                                                    richTextBox1.Text += "Coniferele nu fac fructe." + '\n';
                                                    richTextBox1.Text += "Florile lor nu au ovar, stil şi stigmat." + '\n';
                                                    richTextBox1.Text += "Deşi au trăsături comune, coniferele se deosebesc între ele." + '\n' + '\n';
                                                    richTextBox1.Text += "Înmulţirea" + '\n';
                                                    richTextBox1.Text += "Coniferele formează conuri bărbăteşti şi femeieşti aşezate pe acelaşi copac, dar pe ramuri diferite." + '\n';
                                                    richTextBox1.Text += "Conurile bărbăteşti se formează pe crengile tinere, de un an, iar cele femeieşti cresc pe crengi mai groase şi sunt mai mari decât cele bărbăteşti." + '\n';
                                                    richTextBox1.Text += "În secţiune longitudinală (în lung), pe fiecare putem observa un ax îmbrăcat în solzi." + '\n' + '\n';
                                                    richTextBox1.Text += "Conul bărbătesc" + '\n';
                                                    richTextBox1.Text += "Fiecare solzişor are pe fața inferioară câte doi saci polinici, plini cu polen." + '\n';
                                                    richTextBox1.Text += "Grăuncioarele de polen sunt ancorate de două balonaşe pline cu aer, care le poartă până la conurile femeieşti." + '\n';
                                                    richTextBox1.Text += "Un solz împreună cu sacii polinici poate fi considerate o stamină." + '\n';
                                                    richTextBox1.Text += "Deci, conul bărbătesc este format din numeroase stamine." + '\n' + '\n';
                                                    richTextBox1.Text += "Conul femeiesc" + '\n';
                                                    richTextBox1.Text += "Fiecare solz are pe fața superioară câte două ovule descoperite." + '\n';
                                                    richTextBox1.Text += "Aceste flori nu au ovar, stil şi stigmat." + '\n';
                                                    richTextBox1.Text += "Fiecare solz împreună cu cele două ovule şi frunzuliţele protectoare poate fi considerat o floare femeiască." + '\n';
                                                    richTextBox1.Text += "Deci, conul femeiesc este o inflorescenţă." + '\n' + '\n';
                                                    richTextBox1.Text += "Polenizarea" + '\n';
                                                    richTextBox1.Text += "Polenul este purtat de vânt şi ajunge direct la ovule." + '\n';
                                                    richTextBox1.Text += "Are loc fecundaţia, în urma căreia se formează seminţele, care la maturitate au fiecare câte o frunzuliţă, care le ajută să se răspândească." + '\n';
                                                    richTextBox1.Text += "Seminţele rămân descoperite, neînchise în fruct, deoarece el nu există." + '\n';
                                                    richTextBox1.Text += "Plantele, care au seminţele descoperite, neînchise în fruct, se numesc gimnosperme." + '\n' + '\n';
                                                    richTextBox1.Text += "Importanța gimnospermelor" + '\n';
                                                    richTextBox1.Text += "Lemnul lor este folosit ca materie primă în construcţii, tâmplărie, ambalaje, pentru instrumente muzicale, în industria celulozei şi hârtiei." + '\n';
                                                    richTextBox1.Text += "Taninul din scoarţă este folosit în tăbăcărie." + '\n';
                                                    richTextBox1.Text += "Din răşină se obţin substanţe chimice că terebentină, colofoniu, iar, prin arderea ei incompletă, se obţine negrul de fum.";
                                                }
                                                else
                                                    if (comboBox1.SelectedItem.ToString() == "Metoda mersului invers")
                                                    {
                                                        richTextBox1.Text += "Metoda mersului invers" + '\n' + '\n';
                                                        richTextBox1.Text += "Copiii au economisit bani pentru a pleca într-o excursie la munte în vacanța de iarnă. Mara are cu 25 de lei mai puțin decât Andrei, Teodor are de două ori mai mult decât Mara, iar Alexandra are cu 27 de lei mai puțin decât Teodor. Dacă Alexandra are 295 de lei, câți lei are fiecare copil?" + '\n';
                                                        richTextBox1.Text += "Dacă Alexandra are cu 27 de lei mai mult decât Teodor, atunci Teodor are cu 27 de lei mai puțin decât Alexandra. 295 lei – 27 lei = 268 lei" + '\n';
                                                        richTextBox1.Text += "Dacă Teodor are de două ori mai mulți bani decât Mara, atunci Mara are de două ori mai puțini bani decât Teodor. 268 lei : 2 = 134 lei" + '\n';
                                                        richTextBox1.Text += "Dacă Mara are cu 25 de lei mai puțin decât Andrei, atunci Andrei are cu 25 de lei mai mult decât Mara. 134 lei + 25 lei = 159 lei" + '\n';
                                                        richTextBox1.Text += "Problema se poate transcrie prin exercițiul: (x – 25) × 2 + 27 = 295";
                                                    }
                                                    else
                                                        if (comboBox1.SelectedItem.ToString() == "Evolutia economiei mondiale")
                                                        {
                                                            richTextBox1.Text += "Evoluția economiei mondiale și sistemul economic mondial" + '\n' + '\n';
                                                            richTextBox1.Text += "Economia mondială reprezintă ansamblul economiilor naționale ale statelor lumii, privite în interdependența complexă a legăturilor pe piața mondială." + '\n';
                                                            richTextBox1.Text += "Caracterul economiei mondiale s-a modificat în timp, reflectându-se în structura PIB și în cea a exporturilor." + '\n';
                                                            richTextBox1.Text += "Astăzi, asistăm la adevărate interdependențe economice, care reflectă amplificarea legăturilor economice dintre state, întrucât nicio țară nu-și poate asigura toate produsele și serviciile de care are nevoie. În plus, în anumite domenii, produce mai mult decât solicită consumul intern (vizând exportul). Au loc nu numai schimburi comerciale tradiționale (produse agro-alimentare, industriale), ci și schimburi financiare, tehnologice și informaționale." + '\n' + '\n';
                                                            richTextBox1.Text += "INDUSTRIA" + '\n';
                                                            richTextBox1.Text += "Industria se modernizează tot mai accelerat. Grație automatizării și robotizării, devine tot mai puțin dependentă de amplasările tradiționale și cunoaște o răspândire cu adevărat mondială. Rămâne, totuși, încă inegal repartizată." + '\n';
                                                            richTextBox1.Text += "Țările dezvoltate renunță la a pune accent pe industriile mari, consumatoare de materii prime și/sau foarte poluante, și se orientează spre industriile de vârf (electronică, electro-tehnică, IT, farmaceutică, etc.). A apărut, în aceste condiții, așa-numitul „export de poluare”, respectiv investițiile externe în mari unități industriale nepoluante din domeniul siderurgiei, materialelor de construcții, unele subramuri chimice etc. – care se construiesc în țările în dezvoltare." + '\n';
                                                            richTextBox1.Text += "Asistăm, totodată, la ascensiunea unor țări în dezvoltare în topul celor mai mari producători mondiali, cum este cazul Chinei: cel mai mare producător mondial de fontă, oțel, aluminiu, staniu și zinc rafinat, al doilea producător mondial de vehicule comerciale (pe locul I la autoturisme) și de energie electrică, primul producător de fibre artificiale și de televizoare – jumătate din producția mondială – locul III la anvelope, benzină și construcții navale maritime. Există și alte exemple: Brazilia și Mexic (în domeniul autovehiculelor); Turcia, Polonia și Brazilia (la televizoare); Malaysia și Indonezia (la aparate radio); Polonia și Croația (la nave maritime)." + '\n' + '\n';
                                                            richTextBox1.Text += "TRANSPORTURILE" + '\n';
                                                            richTextBox1.Text += "În ultimele decenii, toate căile de comunicații și mijloacele de transport au cunoscut o dezvoltare fără precedent, beneficiind de modernizare. S-a întâlnit îmbunătățirea continuă a mijloacelor de transport ca volum (capacitate) – mai ales la nave maritime și avioane." + '\n';
                                                            richTextBox1.Text += "S-a remarcat atenția acordată transporturilor speciale, îndeosebi oleoductelor si gazoductelor magistrale, deja construite (oleoductul Baku – Tbilisi – Ceyhan și gazoductul „Blue Stream”) sau în proiect (oleoductul Marea Caspica – Austria și  gazoductuI Nabucco)." + '\n' + '\n';
                                                            richTextBox1.Text += "AGRICULTURA" + '\n';
                                                            richTextBox1.Text += "Și în acest sector s-au înregistrat progrese (creșterea producției totale, creșterea producției la hectar și a rentabilității zootehnice). Totuși, încă există mari discrepanțe teritoriale." + '\n';
                                                            richTextBox1.Text += "Este mutat tot mai mult accentul de pe agricultura extensivă pe cea intensivă (creșterea producției totale)." + '\n' + '\n';
                                                            richTextBox1.Text += "COMERȚUL EXTERIOR" + '\n';
                                                            richTextBox1.Text += "Acest domeniu a cunoscut cea mai spectaculoasă creștere în ultima vreme. Schimburile internaționale au stat, de fapt, la baza mondializării economice și, mai recent, a globalizării." + '\n';
                                                            richTextBox1.Text += "Spre deosebire de trecut, astăzi, datorită vehiculării unor mari cantități de produse, rezultând anumite fluxuri comerciale dominante, se vorbește despre „piața mondială” a anumitor produse (a grâului, a zahărului, a cafelei, a petrolului, a aluminiului, a diamantelor, a autovehiculelor, a software-ului)." + '\n' + '\n';
                                                            richTextBox1.Text += "TURISMUL" + '\n';
                                                            richTextBox1.Text += "La rândul său, turismul a devenit o componentă importantă a economiei mondiale, cunoscând, în ultima vreme, o dezvoltare cu adevărat spectaculoasă (peste 800 milioane de turiști internaționali și mai mult de 700 miliarde de dolari venituri). Regiunilor turistice tradiționale (Marea Mediterană, Europa Central-Nordică, America de Nord, Marea Caraibilor), li s-au adăugat noi destinații foarte atractive, cu un patrimoniu turistic original (China, Rusia, Australia)." + '\n';
                                                            richTextBox1.Text += "La această dezvoltare spectaculoasă contribuie mulți factori, printre care: dezvoltarea economică de ansamblu (reflectată în creșterea veniturilor și a puterii de cumpărare), sporirea duratei timpului liber, creșterea speranței medii de viață, dezvoltarea căilor și mijloacelor de transport, a vitezei de deplasare și a gradului de confort, diversificarea și modernizarea mijloacelor de informare, introducerea în circuitul turistic a unor locuri și obiective multă vreme inaccesibile." + '\n' + '\n';
                                                            richTextBox1.Text += "Toate aceste elemente ne indică faptul că, în prezent, există un sistem economic mondial, la care participă toate țările lumii și de la care nu se poate sustrage nicio entitate statală.";
                                                        }
                                                        else
                                                            if (comboBox1.SelectedItem.ToString() == "Sistemul geopolitic mondial actual")
                                                            {
                                                                richTextBox1.Text += "SISTEMUL GEOPOLITIC MONDIAL ACTUAL" + '\n';
                                                                richTextBox1.Text += "Ansambluri economice și geopolitice mondiale actuale" + '\n' + '\n';
                                                                richTextBox1.Text += "EVOLUȚII:" + '\n';
                                                                richTextBox1.Text += "1. DISPARIȚIA URSS în anul 1990 a dus la schimbări majore în structura statală a Europei și Asiei Centrale și Caucaziene. Astfel, au apărut unele grupări regionale, precum Uniunea Europeană, în care tot mai multe state vor să acceadă." + '\n';
                                                                richTextBox1.Text += "2. În anul 1990, Irak-ul a invadat Kuwaiitul; s-a declanșat un blitz-krieg,care a generat schimbări majore în relațiile dintre Asia, Europa și SUA." + '\n';
                                                                richTextBox1.Text += "3. Unele dintre statele care au făcut parte din URSS au rămas dependente de fosta mega-putere, iar anumite teritorii au rămas încă în structura actualei Federații Ruse, cu numeroase frământări politice, atentate." + '\n';
                                                                richTextBox1.Text += "4. Statele lumii s-au regrupat după criterii geo-economice, politice, culturale, confesionale." + '\n';
                                                                richTextBox1.Text += "5. Câteva state mici ca întindere au reușit să se poziționeze foarte bine în sistemul economic mondial. Includem Singapore, Hong Kong, Teritoriul Taiwan, Luxembourg." + '\n';
                                                                richTextBox1.Text += "6. Se pune un mare accent pe stabilitatea internă și internațională; de aici și rolul ONU prin organismele sale." + '\n' + '\n';
                                                                richTextBox1.Text += "TENDINȚE:" + '\n';
                                                                richTextBox1.Text += "1. Căutare unei noi identități - unele teritorii s-au desprins din țara-mamă (Kosovo din Serbia, Muntenegru din Serbia, Eritreea din Etiopia, Sudanul s-a separat în 2 state)." + '\n';
                                                                richTextBox1.Text += "2. Noi concepte și strategii de colaborare după dispariția URSS a unororganisme existente înainte de 1989." + '\n';
                                                                richTextBox1.Text += "3. Lărgirea NATO spre est prin includerea unor state aflate sub influența fostului URSS." + '\n';
                                                                richTextBox1.Text += "4. Structurarea unor noi centre de putere, precum SUA, Uniunea Europeană și Asia." + '\n';
                                                                richTextBox1.Text += "5. O nouă strategie politică și economică a Marilor Puteri." + '\n';
                                                                richTextBox1.Text += "6. Prefigurarea unui nou spațiu geopolitic european - Uniunea Europeană, SUA, Rusia o axă foarte importantă." + '\n';
                                                                richTextBox1.Text += "7. Globalizarea și sistemul geopolitic după criteriile oferite de organizații precum ONU, NATO, UE, OSCE." + '\n' + '\n';
                                                                richTextBox1.Text += "ORGANIZAȚIA NAȚIUNILOR UNITE (ONU), STRUCTURĂ ȘI ORGANISME INTEGRATE" + '\n';
                                                                richTextBox1.Text += "Data înființării: 26 iunie 1945" + '\n';
                                                                richTextBox1.Text += "State componente: 195 state independente de pe toate continentele" + '\n';
                                                                richTextBox1.Text += "Obiective fundamentale: menținerea păcii și securității mondiale,cooperare internațională" + '\n';
                                                                richTextBox1.Text += "Principii fundamentale: Egalitate în drepturi, suveranitate, nerecurgereala forță, neamestec în treburile interne" + '\n';
                                                                richTextBox1.Text += "Structura: Adunarea Generală, Consiliul de Securitate, instituții și organizații specializate precum: FAO, OMS, OMM, OMC, OMT, OCDE";
                                                            }
                                                            else
                                                                if (comboBox1.SelectedItem.ToString() == "Romanizarea Provinciei Dacia")
                                                                {
                                                                    richTextBox1.Text += "Romanizarea Provinciei Dacia" + '\n' + '\n';
                                                                    richTextBox1.Text += "În anul 106, împăratul Traian a cucerit regatul dac și a întemeiat noua provincie romană DACIA. Stăpânirea romană la nordul Dunării a durat 165 de ani, până în 274. A avut ca rezultat formarea populației daco-romane, puternic și ireversibil romanizată." + '\n';
                                                                    richTextBox1.Text += "Romanizarea stă la baza formării poporului român și a limbii sale. Factorii romanizării au fost numeroși și cu acțiune simultană. Armata era formată numai din vorbitori de latină. Veteranii, soldații pensionați, s-au căsătorit cu femei din Dacia, iar urmașii lor au renunțat la limba dacă și au preluat limba latină. Romanizarea a fost în primul rând un fenomen lingvistic, de uitare a limbii dace și de impunere a limbii latine în toate domeniile, inclusiv în familiile mixte." + '\n';
                                                                    richTextBox1.Text += "Romanizarea a continuat și după retragerea ordonată de împăratul Aurelian, în anul 274, prin răspândirea creștinismului în limba latină. Daco-romanii s-au răspândit și în regiunile care niciodată nu au făcut parte din Provincia Dacia, precum Maramureșul, Moldova și Câmpia Munteană. Aceeași daco-romani i-au asimilat pe slavi între sec. VI-VIII și, prin această a doua sinteză, după cea daco-romană, s-a format poporul român și limba română." + '\n';
                                                                    richTextBox1.Text += "Istoricii consideră că românii și limba lor romanică au apărut în istorie în sec. al VIII-lea, atunci când se afirmă toate celelalte popoare neolatine (francezi, italieni, spanioli, portughezi).";
                                                                }
                                                                else
                                                                    if (comboBox1.SelectedItem.ToString() == "Etnogeneza romaneasca")
                                                                    {
                                                                        richTextBox1.Text += "Etnogeneza românească" + '\n' + '\n';
                                                                        richTextBox1.Text += "După retragerea stăpânirii romane din Dacia în 274, în fosta provincie romană a rămas o numeroasă populație daco-romană puternic și definitiv romanizată." + '\n';
                                                                        richTextBox1.Text += "Daco-romanii au venit în contact cu alte populații pe care le-au romanizat." + '\n';
                                                                        richTextBox1.Text += "Cea mai puternică influență în etnogeneza (formarea poporului și a limbii) românească, după romani, au avut-o slavii așezați în Dacia începând cu sec. VI." + '\n';
                                                                        richTextBox1.Text += "După asimilarea elementului slav, fapt care a durat mai multe secole; începândcu sec. VIII, se poate vorbi de noul popor român și limba sa romanică." + '\n';
                                                                        richTextBox1.Text += "Aceleași etape le-au parcurs toate popoarele și limbile neolatine, dar cu alte componente." + '\n';
                                                                        richTextBox1.Text += "În concluzie, la formarea poporului român și a limbii sale au contribuit decisiv trei elemente fundamentale: substratul dacic, elementul latin (roman) și factorul slav.";
                                                                    }
                                                                    else
                                                                        if (comboBox1.SelectedItem.ToString() == "Participarea Romaniei in razboiul antisovietic")
                                                                        {
                                                                            richTextBox1.Text += "Participarea României la războiul antisovietic (1941-1944)" + '\n' + '\n';
                                                                            richTextBox1.Text += "După tragicul an 1940, în România s-au produs mari schimbări politice." + '\n';
                                                                            richTextBox1.Text += "Regele Carol al II-lea (1930-1940) a abdicat la 6 septembrie 1940 și pe tronul țării a venit regele Mihai (1940-1947)." + '\n';
                                                                            richTextBox1.Text += "Puterea efectivă de decizie este preluată de primul ministru, generalul Ion Antonescu, care formează un guvern cu ajutorul mișcării legionare. Această colaborarea a durat doar 4 luni, iar, în ianuarie 1941, legionarii sunt îndepărtați de la putere și Ion Antonescu preia singur conducerea cu sprijinul armatei." + '\n';
                                                                            richTextBox1.Text += "Între timp, România s-a aliat cu Puterile Axei (Germania, Italia, Japonia) și a ajuns în totală dependență economică și militară față de Germania hitleristă." + '\n';
                                                                            richTextBox1.Text += "La 22 iunie 1941 România participă la atacul asupra Uniunii Sovietice alături de Germania și aliatele ei. Scopul războiului antisovietic a fost recuperarea teritoriilor românești pierdute în vara anului 1940, Basarabia, Bucovina de Nord și Ținutul Herța." + '\n';
                                                                            richTextBox1.Text += "Prima provincie eliberată de sub ocupația sovietică a fost Basarabia, după care a urmat trecerea Nistrului și continuarea războiului în interiorul URSS-ului.";
                                                                        }
                                                                        else
                                                                            if (comboBox1.SelectedItem.ToString() == "Batalia de la Stalingrad")
                                                                            {
                                                                                richTextBox1.Text += "Bătălia de la Stalingrad (noiembrie 1942 – februarie 1943)" + '\n' + '\n';
                                                                                richTextBox1.Text += "În 1941, armata română a eliberat Basarabia și Bucovina de Nord, alipindu-le la statul național." + '\n';
                                                                                richTextBox1.Text += "Cele mai mari pierderi s-au înregistrat la asediul portului Odessa și în luptele din interiorul Uniunii Sovietice. Mareșalul Antonescu a fost obligat să continue războiul antisovietic în imensitatea teritoriului controlat de ruși." + '\n';
                                                                                richTextBox1.Text += "Armata română a trecut Nistrul alături de armatele germane și aliatele ei. În decembrie 1941, germanii eșuează în tentativele lor de a ocupa Moscova. A fost primul eșec major al armatei germane în Al Doilea Război Mondial. Hitler și comandamentul german au hotărât să modifice direcția de atac (în 1942) și să încerce ocuparea zonelor petrolifere din Caucaz, în sudul URSS, atât de necesare armatelor motorizate germane." + '\n';
                                                                                richTextBox1.Text += "O mare greșeală strategică a fost asedierea orașului Stalingrad (actualmente Volvograd), pe care Stalin a dorit să-l păstreze din motive propagandistice." + '\n';
                                                                                richTextBox1.Text += "În noiembrie 1942, armatele germane și cele române au fost înconjurate la Stalingrad și obligate să se predea în februarie 1943. A fost cea mai mare bătălie a Războiului Mondial; germanii au pierdut 330 000 de ostași, iar românii au avut pierderi de 120 000 de ostași. Catastrofa de la Stalingrad a schimbat cursul războiului și Germania hitleristă a pierdut inițiativa strategică, care va trece de partea sovieticilor. " + '\n';
                                                                                richTextBox1.Text += "De acum și până în mai 1945, armatele germane se vor afla într-o defensivă disperată, pierzând toate teritoriile cucerite.";
                                                                            }
                                                                            else
                                                                                if (comboBox1.SelectedItem.ToString() == "Dumnezeu")
                                                                                {
                                                                                    richTextBox1.Text += "Viața pe pământ și Împărăția lui Dumnezeu" + '\n' + '\n';
                                                                                    richTextBox1.Text += "-Bunicule, am citit astăzi o poveste frumoasă despre un împărat care se îngrijea de popor și era ascultat cu dragoste. Mi-ar plăcea și mie să trăiesc într-o astfel de împărăție!" + '\n';
                                                                                    richTextBox1.Text += "-Dragii mei, pe pământ sunt multe împărății, însă frumusețea lor este adesea umbrită de neînțelegerile dintre oameni. Mântuitorul ne-a vorbit despre o altfel de împărăție pe care El ne-a pregătit-o de când a creat lumea. În această împărăție minunată, condusă cu înțelepciune de Dumnezeu, domnesc dragostea, dreptatea, pacea și bucuria. Dacă împărățiile de pe pământ sunt trecătoare, aceasta este veșnică." + '\n';
                                                                                    richTextBox1.Text += "Hristos ne învață că Împărăția lui Dumnezeu este înăuntrul nostru, în inima noastră, și că putem gusta din bucuria acestei împărății chiar de pe pământ. Așa cum noi simțim bucuria și iubirea alături de familie, de cei dragi, tot așa sfinții și îngerii o simt mereu alături de Dumnezeu." + '\n';
                                                                                    richTextBox1.Text += "Biserica este icoana vie a Împărăției lui Dumnezeu pe pământ. Prin participarea la Sfânta Liturghie, suntem cu adevărat în Împărăția Lui, împreună cu sfinții și cu îngerii." + '\n' + '\n';
                                                                                    richTextBox1.Text += "Reține!" + '\n';
                                                                                    richTextBox1.Text += "Împărăția lui Dumnezeu înseamnă dragoste, dreptate, pace și bucurie." + '\n';
                                                                                    richTextBox1.Text += "Domnul Iisus Hristos îi cheamă pe toți oamenii în Împărăția Sa." + '\n';
                                                                                    richTextBox1.Text += "Prin participarea la Sfânta Liturghie suntem cu adevărat în Împărăţia lui Dumnezeu, alături de îngeri și sfinți." + '\n';
                                                                                    richTextBox1.Text += "Împărăția lui Dumnezeu este veșnică.";
                                                                                }
                                                                                else
                                                                                    if (comboBox1.SelectedItem.ToString() == "A and An")
                                                                                    {
                                                                                        richTextBox1.Text += "A and An" + '\n' + '\n';
                                                                                        richTextBox1.Text += "Wizbook: Children, I have a mission for you! This is mission 1. Find the Golden Book. It’s in your school." + '\n';
                                                                                        richTextBox1.Text += "Christie: Jenny, put on your magic glasses. What can you see now?" + '\n';
                                                                                        richTextBox1.Text += "Jenny: Ready! I can see a green room, an eraser, an orange bookshelf and many books. It’s the classroom." + '\n';
                                                                                        richTextBox1.Text += "Tommy: No, it’s the library, it’s green. The classroom is orange!" + '\n' + '\n';
                                                                                        richTextBox1.Text += "a book but an eraser " + '\n';
                                                                                        richTextBox1.Text += "a golden book but an orange eraser";
                                                                                    }
        }
    }
}
