#!/bin/bash
echo " _____ _   _ _____ _____ _____ _   _ _____ _   _______ _____ "
echo "/  ___| \ | |  _  |_   _/  __ \ | | |_   _| | | | ___ \  ___|"
echo '\ `--.|  \| | | | | | | | /  \/ |_| | | | | | | | |_/ / |__  '
echo ' `--. \ . ` | | | | | | | |   |  _  | | | | | | | ___ \  __| '
echo '/\__/ / |\  \ \_/ / | | | \__/\ | | | | | | |_| | |_/ / |___ '
echo '\____/\_| \_/\___/  \_/  \____|_| |_/ \_/  \___/\____/\____/  v1.14'
echo ''
sleep 0.25
echo "a slimwise production..."
sleep 0.5
echo ''
echo ''

# grab youtube playlist
echo "Please enter url to channel's playlist and press return:"

read url_var

# youtube-dl --download-archive "archive.log" -i --add-metadata --all-subs --embed-subs --embed-thumbnail --match-filter "playlist_title != 'Liked videos' & playlist_title != 'Favorites'" -f "(bestvideo[vcodec^=av01][height>=1080][fps>30]/bestvideo[vcodec=vp9.2][height>=1080][fps>30]/bestvideo[vcodec=vp9][height>=1080][fps>30]/bestvideo[vcodec^=av01][height>=1080]/bestvideo[vcodec=vp9.2][height>=1080]/bestvideo[vcodec=vp9][height>=1080]/bestvideo[height>=1080]/bestvideo[vcodec^=av01][height>=720][fps>30]/bestvideo[vcodec=vp9.2][height>=720][fps>30]/bestvideo[vcodec=vp9][height>=720][fps>30]/bestvideo[vcodec^=av01][height>=720]/bestvideo[vcodec=vp9.2][height>=720]/bestvideo[vcodec=vp9][height>=720]/bestvideo[height>=720]/bestvideo)+(bestaudio[acodec=opus]/bestaudio)/best" --merge-output-format mkv -o "$PWD/%(playlist_uploader)s/%(playlist)s/%(playlist_index)s - %(title)s - %(id)s.%(ext)s" "$url_var"

youtube-dl --download-archive "archive.log" -i --add-metadata --embed-thumbnail --match-filter "playlist_title != 'Liked videos' & playlist_title != 'Favorites'" --extract-audio --audio-format mp3 -o "$PWD/%(playlist_uploader)s/%(playlist)s/%(playlist_index)s - %(title)s - %(id)s.%(ext)s" "$url_var"


echo "Finished!"