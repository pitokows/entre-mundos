/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_musica_mundo_1,1,1)
randomise()
game_set_speed(60, gamespeed_fps);
t_grid = 216
moveu = 0
m_x = 0
m_y = 0
caminho_jogador = []
caminho_desenho = []
turno = 0
estado = "andando"
posicao_jogador[0] = [0,0]
dado = 1
jogar_dado = false
jogando = 5
mundo = 0
caminho = [
1,1,2,1,1,1,2,1,1,1,
1,2,1,1,1,1,1,2,1,1,
1,1,1,2,1,1,1,1,2,1,
1,1,1,1,2,1,1,1,1,2,
1,1,1,1,1,2,1,1,1,1,
2,1,1,1,1,1,2,1,1,1,
1,1,2,1,1,1,1,2,1,1,
1,1,1,2,1,1,1,1,2,1,
1,1,1,1,1,2,1,1,1,1,
2,1,1,1,1,1,2,1,1,1
];
for (var _i = 3; _i < 80; _i++;){
	caminho[_i] = choose(1,1,1,1,2,2)
}