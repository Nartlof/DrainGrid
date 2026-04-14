/**
 * Project Name : Grelha para ralo
 *
 * Author: Carlos Eduardo Foltran
 * GitHub: [GitHub Repository URL]
 * Thingiverse: [Thingiverse Project URL]
 * License: Creative Commons CC0 1.0 Universal (CC0 1.0)
 * Description: [Brief description of your Project]
 *
 * Date Created: 20260412
 * Last Updated: 20260412
 *
 * This OpenSCAD file is provided under the Creative Commons CC0 1.0 Universal (CC0 1.0) License.
 * You are free to use, modify, and distribute this design for any purpose, without any restrictions.
 *
 * For more details about the CC0 license, visit: https://creativecommons.org/publicdomain/zero/1.0/
 */

DiametroExterno = 96.5; // Diâmetro externo da grelha
DiametroInterno = 92; // Diâmetro interno da grelha
DiametroCentral = 40; // Diâmetro do hub central
Altura = 8; // Altura da grelha
EspessuraDaBorda = 3.5; // Espessura da borda da grelha
EspessuraDoAnel = 3.5; // Espessura do anel da grelha
EspessuraDoRaio = 2; // Espessura do raio da grelha
NumeroDeRaios = 32; // Número de raios da grelha

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
