SELECT song_duration, song_title 
FROM public.song
order by length(song_duration) desc 
limit 1;
