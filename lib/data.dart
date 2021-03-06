import 'package:myagenda/models/prefs_calendar.dart';

class Data {
  static List<String> getAllCampus() => allData.keys.toList();

  static List<String> getCampusDepartments(String campus) {
    if (campus == null || !allData.containsKey(campus))
      campus = getAllCampus()[0];

    return allData[campus].keys.toList();
  }

  static List<String> getYears(String campus, String department) {
    if (campus == null || !allData.containsKey(campus))
      campus = getAllCampus()[0];
    if (department == null || !allData[campus].containsKey(department))
      department = getCampusDepartments(campus)[0];

    return allData[campus][department].keys.toList();
  }

  static List<String> getGroups(String campus, String department, String year) {
    if (campus == null || !allData.containsKey(campus))
      campus = getAllCampus()[0];
    if (department == null || !allData[campus].containsKey(department))
      department = getCampusDepartments(campus)[0];
    if (year == null || !allData[campus][department].containsKey(year))
      year = getYears(campus, department)[0];
    return allData[campus][department][year].keys.toList();
  }

  static int getGroupRes(
      String campus, String department, String year, String group) {
    if (campus == null || !allData.containsKey(campus))
      campus = getAllCampus()[0];
    if (department == null || !allData[campus].containsKey(department))
      department = getCampusDepartments(campus)[0];
    if (year == null || !allData[campus][department].containsKey(year))
      year = getYears(campus, department)[0];
    if (group == null || !allData[campus][department][year].containsKey(group))
      group = getGroups(campus, department, year)[0];

    return allData[campus][department][year][group];
  }

  static PrefsCalendar checkDataValues(
      {String campus, String department, String year, String group}) {
    if (campus == null || !allData.containsKey(campus))
      campus = getAllCampus()[0];
    if (department == null || !allData[campus].containsKey(department))
      department = getCampusDepartments(campus)[0];
    if (year == null || !allData[campus][department].containsKey(year))
      year = getYears(campus, department)[0];
    if (group == null || !allData[campus][department][year].containsKey(group))
      group = getGroups(campus, department, year)[0];

    return PrefsCalendar(
        campus: campus, department: department, year: year, group: group);
  }

  static final allData = {
    "Laval": {
      "Informatique": {
        "Info 1": {
          "Grp 11A": 2660,
          "Grp 11B": 2661,
          "Grp 12C": 1149,
          "Grp 12D": 1150
        },
        "Info 2": {
          "Grp 21A": 2667,
          "Grp 21B": 2668,
          "Grp 22C": 3113,
          "Grp 22D": 3115
        },
        "Info 2 S4": {
          "Grp IPLP-A": 992,
          "Grp IPLP-B": 1129,
          "Grp PEL-A": 5133,
          "Grp PEL-B": 5134
        },
        "Salles": {
          "TD1 - Arrakis": 1304,
          "TD2 - Mordor": 1303,
          "TDm1 - Vulcain": 1299,
          "TDm2 - LV426": 1300,
          "TDm3 - Tatooine": 1293,
          "TDm4 - Westeros": 1302,
          "TP1 - Tamriel": 839,
          "TP2 - Hyrule": 1038,
          "TP3 - Gotham": 1099,
          "TP4 - Azeroth ": 1216
        },
        "Professeurs": {
          "BARRE Vincent": 26,
          "COULAND Quentin": 3341,
          "ERNET Bruno": 1550,
          "GEORGE Sebastien": 4605,
          "HAMON Ludovic": 3195,
          "LABORIE Clement": 3717,
          "LAFORCADE Pierre": 195,
          "LOISEAU Esteban": 3415,
          "LOUP Guillaume": 5612,
          "MARFISI Iza": 2013,
          "OUBAHSSI Lahcen": 281,
          "VIEILLARD Nathalie": 4639,
          "WALKOWIAK Yann": 368
        }
      },
      "GB": {
        "GB 1": {
          "Grp A": 2766,
          "Grp B": 2767,
          "Grp C": 2768,
          "Grp D": 2770,
          "Grp E": 2771,
          "Grp F": 2772
        },
        "GB 2": {
          "Grp A": 2777,
          "Grp B": 2778,
          "Grp C": 2780,
          "Grp D": 2781,
          "Grp E": 2782
        },
        "GB 2 S4": {
          "IPLP 1": 7091,
          "IPLP 2": 7093,
          "IPLP 3": 7094,
          "PEL 1": 7095,
          "PEL 2": 7096
        },
        "Salles": {
          "E100": 2701,
          "E101": 2702,
          "E102": 1785,
          "E103": 2703,
          "E104": 2704,
          "E105": 2705,
          "E203": 2706,
          "E204": 2707,
          "E206": 2708,
          "E207": 2709,
          "E208": 2710,
          "E209 info LS": 2715,
          "Salle projet tutoré": 2720,
          "TD E200": 2722,
          "TD E201 A": 2723,
          "TD E202": 2724,
          "TD GB EXT": 2725
        },
        "Professeurs": {
          "ALBERT-FOURNIER BENJAMIN": 662,
          "BLANCKAERT VINCENT": 39,
          "BRAUD GILLES": 54,
          "ERGAN FRANCOISE": 125,
          "GAUVRY LAURENT": 144,
          "HERAULT JOSIANE": 171,
          "JUSSEAUME PHILIPPE": 187,
          "LAUNAY JEAN-MICHEL": 201,
          "LEDRU-BAEY SOPHIE": 212,
          "LOISEAU CELINE": 229,
          "LOURDAIS FRANCOISE": 233,
          "MARTIN ISABELLE": 6579,
          "MIMOUNI VIRGINIE": 264,
          "OBITZ-LUMBROSO BÉNÉDICTE": 4279,
          "PENCREACH GAËLLE": 289,
          "POISSON LAURENT": 301,
          "SOULTANI-VIGNERON SAMIA": 340,
          "ULMANN LIONEL": 3012
        }
      },
      "MMI": {
        "MMI 1": {
          "Grp 11A": 2700,
          "Grp 11B": 2711,
          "Grp 12C": 2775,
          "Grp 12D": 2776,
          "Grp 13E": 2808,
          "Grp 13F": 2839
        },
        "MMI 2": {
          "Grp 21A": 2844,
          "Grp 21B": 2845,
          "Grp 22C": 2846,
          "Grp 22D": 2847,
          "Grp 2ALT": 2849
        },
        "MMI 2 S4": {
          "Grp 2A-PID": 6704,
          "Grp 2ALT": 5222,
          "Grp 2B-PP": 6707,
          "Grp 2C-PCAG": 6705,
          "Grp 2D-PCAG": 6706
        },
        "Salles": {
          "Fox": 2146,
          "Hip-Hop": 2150,
          "Java": 2157,
          "Mambo": 2219,
          "Rock": 864,
          "Rock 2": 4213,
          "Salle 3D": 1786,
          "Salle insonorisée": 2131,
          "Salsa": 2524,
          "Samba": 4873,
          "TD1": 2526,
          "TD2": 2527,
          "TD4": 2528,
          "Tango": 2523
        },
        "Professeurs": {
          "BETTENFELD VINCENT": 4775,
          "BUCHET BRUNO": 59,
          "CHEVALIER MANUEL": 81,
          "CHOQUET CHRISTOPHE": 82,
          "CORBIERE ALAIN": 86,
          "DABBEBI INES": 4502,
          "GUNTZ FABIEN": 163,
          "HABAULT JEAN-CHRISTOPHE": 164,
          "HOULIERE ERIC": 848,
          "IKSAL SEBASTIEN": 176,
          "KAROUI AOUS": 5772,
          "PIROLLI FABRICE": 5844,
          "PIROLLI RAPHAELLE": 90,
          "PUIZILLOUT ANNE-MARIE": 758,
          "SCHMIDT COLIN": 336
        }
      },
      "TC": {
        "TC 1": {
          "TP 111": 2865,
          "TP 112": 2866,
          "TP 113": 1356,
          "TP 114": 855,
          "TP 121": 2870,
          "TP 122": 2871,
          "TP 131": 2873,
          "TP 132": 2874,
          "TP 141": 2875,
          "TP 142": 2876
        },
        "TC 2": {
          "TP 211": 2881,
          "TP 212": 2882,
          "TP 221": 2884,
          "TP 222": 2885,
          "TP 223": 3500,
          "TP 231": 2886,
          "TP 232": 2887,
          "TP 241": 2889,
          "TP 242": 2890
        },
        "Salles": {
          "S info LS rdc": 2581,
          "S info LS étage": 2582,
          "S info cours étage": 2602,
          "S1": 2603,
          "S2": 2628,
          "S3": 2629,
          "S4": 2630,
          "S5": 2637,
          "S6": 2638,
          "S7": 2640,
          "S8": 2641,
          "Salle licence": 2580
        },
        "Professeurs": {
          "CHEMIN LAURENT": 5970,
          "CLIQUETEUX DAVID": 84,
          "DIAWARA TIEFING": 4294,
          "DRINE RHOUMA": 1629,
          "FAURE-FERLET AXELLE": 2517,
          "GEBERT ANGELIQUE": 2900,
          "GUEGUEN JEAN-CLAUDE": 6712,
          "LALLAI PHILIPPE": 197,
          "LE JEUNE JEAN-YVES": 207,
          "PEAN PHILIPPE": 288,
          "ROBERTS LISE-ANNE": 322,
          "SABAS JEAN-CHRISTOPHE": 5340,
          "TANGUY SOLENNE": 2989
        },
      },
      "Campus Laval": {
        "Salles": {
          "Amphi 1": 2663,
          "Amphi 2": 2665,
          "Amphi 3": 2664,
          "Bibliothèque": 2945,
          "Labo multimédia GB": 2946,
          "Labo multimédia TC": 1511,
          "Salle examen": 2666,
          "Salle visio admi": 372,
          "Salle visio pavillon": 1358,
          "Scolarité": 1368
        }
      }
    },
    "Le Mans": {
      "STAPS": {
        "L1 STAPS": {
          "Grp A1": 2534,
          "Grp A2": 2535,
          "Grp B2": 2537,
          "Grp B3": 2536,
          "Grp C4": 2539,
          "Grp C5": 2538,
          "Grp D5": 2540,
          "Grp D6": 2541,
          "Grp E16": 25,
          "Grp E7": 3839,
          "Grp F10": 2903,
          "Grp F9": 2891,
          "Grp G10": 3096,
          "Grp G11": 1213,
          "Grp H12": 1227,
          "Grp H13": 1215,
          "Grp I13": 3761,
          "Grp I14": 5834,
          "Grp J15": 1076,
          "Grp J16": 1111
        },
        "L2 S4 STAPS": {
          "Grp 1A APAS": 4752,
          "Grp 2A APAS": 4311,
          "Grp 2B APAS": 880,
          "Grp 3B APAS": 5176,
          "Grp 4C EM": 889,
          "Grp 5C EM": 4793,
          "Grp 6D EM": 5059,
          "Grp 7D EM": 5573,
          "Grp MS": 4356
        },
        "L2 STAPS": {
          "Grp A1": 2543,
          "Grp A2": 2544,
          "Grp B2": 2897,
          "Grp B3": 2547,
          "Grp C4": 1625,
          "Grp D5": 3783,
          "Grp D6": 1648,
          "Grp E7": 3006,
          "Grp E8": 206
        }
      }
    }
  };
}
