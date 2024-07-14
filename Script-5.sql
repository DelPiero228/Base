SELECT song_title
FROM public.song
where song_title ilike '%%my%%' or song_title ilike '%%мой%%';