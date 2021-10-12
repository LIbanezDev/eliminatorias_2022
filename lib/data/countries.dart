const countriesJson = '''
[
  {
    "name": "Chile",
    "population": 18000000,
    "market_value": 98900000,
    "desc": "La selección de fútbol de Chile, también conocida como la Roja, término afianzado en la década de 1980, es el equipo representativo de dicho país en la categoría masculina de fútbol, la tercera selección nacional más antigua de América y una de las veinte en el mundo, disputó su primer partido internacional el 27 de mayo de 1910 ante Argentina. Su organización está a cargo de la Federación de Fútbol de Chile (FFCh), creada en 1895, afiliada a la FIFA desde 1913 y una de las cuatro fundadoras de la Confederación Sudamericana de Fútbol (Conmebol) en 1916.",
    "pts": 10,
    "probs": 28,
    "team": [
      {
        "name": "Claudio Bravo",
        "age": 38,
        "market_value": 1000000
      }
    ]
  },
  {
    "name": "Brasil",
    "population": 212600000,
    "market_value": 795000000,
    "desc": "Brasil es la selección más exitosa en la historia de la Copa Mundial. Es la única hasta ahora en haber participado en todas las copas del mundo y tiene el récord de Campeonatos Mundiales ganados con cinco títulos y el récord en la Copa FIFA Confederaciones con cuatro títulos. En la Copa América ha obtenido nueve títulos, once segundos puestos y siete terceros. Actualmente se encuentra liderando la Tabla general de la Copa del Mundo y la de Copa Confederaciones. Siempre se ha clasificado para la Copa Mundial de Fútbol sin jugar ninguna repesca.",
    "pts": 28,
    "probs": 100,
    "team": [
      {
        "name": "Neymar",
        "age": 29,
        "market_value": 100000000
      },
      {
        "name": "Marquinhos",
        "age": 27,
        "market_value": 75000000
      },
      {
        "name": "Casemiro",
        "age": 29,
        "market_value": 70000000
      },
      {
        "name": "Alisson",
        "age": 29,
        "market_value": 60000000
      },
      {
        "name": "Fabinho",
        "age": 27,
        "market_value": 60000000
      },
      {
        "name": "Gabriel Jesus",
        "age": 24,
        "market_value": 60000000
      },
      {
        "name": "Richarlison",
        "age": 24,
        "market_value": 55000000
      }
    ]
  },
  {
    "name": "Colombia",
    "population": 50880000,
    "market_value": 272200000,
    "desc": "La selección colombiana ha participado en seis Copas Mundiales de Fútbol (1962,1990, 1994, 1998, 2014 y 2018). En Brasil 2014 logró su mejor participación llegando a cuartos de final, quedando en la quinta posición del torneo. Su mayor logro internacional es la Copa América obtenida en 2001, siendo Colombia la sede del certamen; también ha alcanzado un subcampeonato en 1975 y llegado a instancias semifinales en varias oportunidades.",
    "pts": 15,
    "probs": 64, 
    "team": [
      {
        "name": "Duvan Zapata",
        "age": 30,
        "market_value": 33000000
      }
    ]
  },
  {
    "name": "Bolivia",
    "population": 11670000,
    "market_value": 8880000,
    "desc": "La selección de fútbol de Bolivia, conocida como La Verde, es el equipo representativo de Bolivia en las competiciones oficiales de fútbol. Su organización está a cargo de la Federación Boliviana de Fútbol, cuya fundación data del 12 de septiembre de 1925, hace 96 años. Está afiliada a la FIFA desde 1926 y es uno de los miembros de la Conmebol desde 1926. Jugó su primer partido el 12 de octubre de 1926 en Santiago, Chile, correspondiente al Campeonato Sudamericano de 1926.",
    "pts": 9,
    "probs": 0,
    "team": [
      {
        "name": "Boris Cespedes",
        "age": 25,
        "market_value": 700000
      }
    ]
  },
  {
    "name": "Argentina",
    "population": 45380000,
    "market_value": 718850000,
    "desc": "La selección masculina de fútbol de Argentina, es el equipo formado por jugadores de dicha nacionalidad que representa desde 1893 a la Asociación del Fútbol Argentino (AFA) en las competiciones oficiales organizadas por la Confederación Sudamericana de Fútbol (CONMEBOL), ente rector de ese deporte en América del Sur, y por la Federación Internacional de Fútbol Asociación (FIFA). Disputó su primer partido internacional el 16 de mayo de 1901, en Montevideo, contra Uruguay, donde ganaría por 3 a 2.",
    "pts": 22,
    "probs": 100,
    "team": [
      {
        "name": "Lionel Messi",
        "age": 34,
        "market_value": 80000000
      },
      {
        "name": "Lautaro Martinez",
        "age": 24,
        "market_value": 79000000
      },
      {
        "name": "Paulo Dybala",
        "age": 27,
        "market_value": 50000000
      }
    ]
  },
  {
    "name": "Peru",
    "population": 32970000,
    "market_value": 56050000,
    "desc": "La selección de fútbol de Perú, más conocida como La Blanquirroja es el equipo representativo de dicho país en las competiciones oficiales de fútbol masculino. Su organización está a cargo de la Federación Peruana de Fútbol (FPF), la cual es una de las diez federaciones miembro de la Confederación Sudamericana de Fútbol (Conmebol). Su debut se produjo el 1 de noviembre de 1927 ante la selección de Uruguay en el Campeonato Sudamericano de aquel año. La selección peruana juega sus partidos de local en el Estadio Nacional del Perú, ubicado en la capital, Lima.",
    "pts": 11,
    "probs": 28,
    "team": [
      {
        "name": "Raul Ruidiaz",
        "age": 31,
        "market_value": 8000000
      }
    ]
  },
  {
    "name": "Venezuela",
    "population": 28440000,
    "market_value": 45850000,
    "pts": 7,
    "desc": "La selección de fútbol de Venezuela es, desde su creación en el año 1925, el equipo formado por jugadores de nacionalidad venezolana que representa a la Federación Venezolana de Fútbol (FVF) en las competiciones oficiales organizadas por la Confederación Sudamericana de Fútbol (Conmebol) y la Federación Internacional de Fútbol Asociación (FIFA).",
    "probs": 0,
    "team": [
      {
        "name": "Darwin Machis",
        "age": 28,
        "market_value": 10000000
      }
    ]
  },
  {
    "name": "Ecuador",
    "population": 17640000,
    "market_value": 72750000,
    "desc": "La selección de fútbol de Ecuador es el equipo representativo de ese país en las competiciones oficiales de fútbol, está controlada por la Federación Ecuatoriana de Fútbol, perteneciente a la Confederación Sudamericana de Fútbol. Fue fundada en 1925 y se incorporó a la FIFA en 1926. Ha participado en tres Copas Mundiales de Fútbol, 2002, 2006 y 2014. En 1988 llegó Dusan Dráskovic e inició un periodo de trasformación en el fútbol ecuatoriano con nuevos jugadores, consiguiendo el cuarto lugar en la Copa América 1993.",
    "pts": 16,
    "probs": 52,
    "team": [
      {
        "name": "Pervis Estupiñan",
        "age": 23,
        "market_value": 15000000
      }
    ]
  },
  {
    "name": "Paraguay",
    "population": 7133000,
    "market_value": 119050000,
    "desc": "Los Guaraníes o La Albirroja, como es conocida familiarmente, debido a los colores de la bandera impregnados en la camiseta, estuvo presente en 8 ediciones de la Copa Mundial de Fútbol, en las de 1930, 1950, 1958, 1986, 1998, 2002, 2006 y 2010 (cuatro consecutivas entre 1998 y 2010). Hasta el momento, la instancia más alta a la que ha podido acceder en este torneo es la de cuartos de final, objetivo alcanzado en el Mundial de Sudáfrica 2010. En algunas de las últimas competiciones, la selección fue derrotada o eliminada por el equipo que a la postre terminaría siendo campeón o finalista.",
    "pts": 12,
    "probs": 24,
    "team": [
      {
        "name": "Miguel Almiron",
        "age": 27,
        "market_value": 17500000
      }
    ]
  },
  {
    "name": "Uruguay",
    "population": 3474000,
    "market_value": 373900000,
    "pts": 16,
    "desc": "Es miembro asociado y cofundador de la Conmebol. Hasta la fecha ha logrado clasificarse a 13 ediciones de la Copa del Mundo (1930, 1950, 1954, 1962, 1966, 1970, 1974, 1986, 1990,  2002, 2010, 2014 y 2018). Siendo después de Argentina y Brasil la que más veces ha ido al mundial en Sudamérica. Además junto a los ya mencionados son los únicos en la región que han ganado Copas del Mundo.",
    "probs": 72,
    "team": [
      {
        "name": "Valverde",
        "age": 23,
        "market_value": 65000000
      },
      {
        "name": "Jose Gimenez",
        "age": 26,
        "market_value": 60000000
      }
    ]
  }
]
''';
