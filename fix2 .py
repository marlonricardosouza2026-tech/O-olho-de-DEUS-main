import pathlib
for f in pathlib.Path('src').rglob('*.py'):
    t=f.read_text(encoding='utf-8', errors='ignore')
    if 'olho_de_deus' in t:
        t=t.replace('from olho_de_deus.', 'from src.').replace('import olho_de_deus.', 'import src.').replace('olho_de_deus', 'src')
        f.write_text(t, encoding='utf-8')
print('corrigido2')