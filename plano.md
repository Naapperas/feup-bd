# Projeto BD

## Tema: _Base de dados para Spotify_

### Dados a armazenar:

- <a name="songs"></a>Música
- + título
- + duração
- + [mercados](#market)
- + explícita
- + [artistas](#profile)
- + [álbum](#album)
- + género
- + númeroStreams

***

- <a name="album"></a>Álbum
- + nome
- + númeroMúsicas
- + [músicas](#songs)
- + [artistas](#profile)
- + [mercado](#market)

***

<!-- Enumeracao dos mercados em que a musica esta disponivel -->
- <a name="market"></a>Mercado
- + \<ver mercados pela API do spotify>

***

- <a name="profile"></a>Profile
- + verificado
- + nome
- + [tipo](#profileType)
- + [plano](#payment)
- + [utilizadoresASeguir](#profile)
- + [utilizadoresSeguindo](#profile)

***

<!-- Enumeracao dos tipos de perfil -->
- <a name="profileType"></a>TipoPerfil
- + Artista
- + Utilizador


***
<!-- Enumeracao dos tipos de plano de pagamento -->
- <a name="payment"></a>Plano de Pagamento
- * Grátis
- + Individual
- + Duo
- + Família
- + Estudante

***

- Listas de reprodução
- + número de músicas
- + privada
- + [músicas](#songs)
- + [participantes](#profile)

***

- _Podcast_
- + [episódios](#podcastEpisodes)
- + [autor](#profile)
- + descrição
- + género
- * mercado

***

- <a name="podcastEpisodes"></a>EpisódioDePodcast
- + título
- + duração
