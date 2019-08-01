#!/bin/bash
echo "Starting youtube-dl script..."

# grab youtube playlist
echo "Please enter url to channel's playlist and press return:"

read url_var

youtube-dl --download-archive "archive.log" -i --add-metadata --all-subs --embed-subs --embed-thumbnail --match-filter "playlist_title != 'Liked videos' & playlist_title != 'Favorites'" -f "(bestvideo[vcodec^=av01][height>=1080][fps>30]/bestvideo[vcodec=vp9.2][height>=1080][fps>30]/bestvideo[vcodec=vp9][height>=1080][fps>30]/bestvideo[vcodec^=av01][height>=1080]/bestvideo[vcodec=vp9.2][height>=1080]/bestvideo[vcodec=vp9][height>=1080]/bestvideo[height>=1080]/bestvideo[vcodec^=av01][height>=720][fps>30]/bestvideo[vcodec=vp9.2][height>=720][fps>30]/bestvideo[vcodec=vp9][height>=720][fps>30]/bestvideo[vcodec^=av01][height>=720]/bestvideo[vcodec=vp9.2][height>=720]/bestvideo[vcodec=vp9][height>=720]/bestvideo[height>=720]/bestvideo)+(bestaudio[acodec=opus]/bestaudio)/best" --merge-output-format mkv -o "%cd%/%%(playlist_uploader)s/%%(playlist)s/%%(playlist_index)s - %%(title)s - %%(id)s.%%(ext)s" $url_var