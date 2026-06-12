/**
 * Project Name : Grelha para ralo
 *
 * Author: Carlos Eduardo Foltran
 * GitHub: https://github.com/Nartlof/DrainGrid
 * Thingiverse: https://www.thingiverse.com/thing:7334860
 * License: Creative Commons CC0 1.0 Universal (CC0 1.0)
 * Description: This is a costumasable drain grid designed for 3D printing. 
                It features a central hub, an outer ring, and multiple spokes connecting the two. 
                The dimensions can be easily adjusted by modifying the parameters at the top of the code.
 *
 * Date Created: 20260412
 * Last Updated: 20260412
 *
 * This OpenSCAD file is provided under the Creative Commons CC0 1.0 Universal (CC0 1.0) License.
 * You are free to use, modify, and distribute this design for any purpose, without any restrictions.
 *
 * For more details about the CC0 license, visit: https://creativecommons.org/publicdomain/zero/1.0/
 */
// Diâmetro externo da grelha
DiametroExterno = 96; // 0.5
// Diâmetro interno da grelha
DiametroInterno = 90; // 0.5
// Diâmetro do hub central
DiametroCentral = 40; // 0.5
// Altura da grelha
Altura = 8; // 0.5
// Espessura da borda da grelha
EspessuraDaBorda = 3.5; // 0.5
// Espessura do anel da grelha
EspessuraDoAnel = 3.5; // 0.5
// Espessura do raio da grelha
EspessuraDoRaio = 2; // 0.5
// Número de raios da grelha
NumeroDeRaios = 32; // 0.5

LarguraDaBorda = (DiametroExterno - DiametroInterno) / 2 + EspessuraDoAnel; // Largura da borda da grelha
ComprimentoDoRaio = (DiametroInterno - DiametroCentral) / 2; // Comprimento do raio da grelha

$fa = ($preview) ? $fa : 2;
$fs = ($preview) ? $fs : .2;

module PerfilDoAnel() {
  difference() {
    union() {
      square(size=[EspessuraDoAnel, Altura], center=false);
      translate(v=[0, Altura - EspessuraDaBorda])
        square(size=[LarguraDaBorda, EspessuraDaBorda], center=false);
    }

    translate(v=[LarguraDaBorda, Altura])
      rotate(a=45)
        square(size=EspessuraDaBorda / 3, center=true);
  }
}

cylinder(h=Altura, d=DiametroCentral, center=false);
rotate_extrude(angle=360, convexity=2)
  translate(v=[DiametroExterno / 2 - LarguraDaBorda, 0])
    PerfilDoAnel();
for (i = [0:NumeroDeRaios - 1]) {
  rotate(a=i * 360 / NumeroDeRaios)
    translate(v=[DiametroCentral / 2 - EspessuraDoAnel / 2, -EspessuraDoRaio / 2, 0])
      cube(size=[ComprimentoDoRaio, EspessuraDoRaio, Altura], center=false);
}
