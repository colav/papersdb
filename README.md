para cargar el json en la db primero borrar la que ya existe en mongo para que no se duplique la informacion
ejecuta mongo, luego 
use gfif
db.papers.remove()
