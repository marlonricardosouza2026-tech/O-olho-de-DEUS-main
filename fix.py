import pathlib
p=pathlib.Path('src/edge/streamer.py')
t=p.read_text(encoding='utf-8')
t=t.replace('cv2.CAP_MJPEG', "cv2.VideoWriter_fourcc(*'MJPG')")
p.write_text(t, encoding='utf-8')
print('corrigido')