class Bici{
  const rodado
  const largo
  const marca
  const accesirios = []

  method altura() = rodado * 2.5 + 15
  method velociadCruzero() = if(largo > 120) rodado + 6 else rodado + 2
  method carga() = accesirios.sum({a=>a.carga()})
  method agregarAccesorio(unAcc) {accesirios.add(unAcc)}
  method quitarAccesorio(unAcc) {accesirios.remove(unAcc)}
  method peso() = rodado / 2 + self.pesoAccesorios()
  method pesoAccesorios() = accesirios.sum({a=>a.peso()})  
  method tieneLuz() = accesirios.any({a=>a.esLuminoso()})
  method cantidadAccesoriosLivianos() = accesirios.count({a=>a.peso()<1})
}

object farolito {
  method peso() = 0.5
  method carga() = 0
  method esLuminoso() = true  
}

class Canasto{

  method initialize() {
    if(not volumen.between(1, 20)){
      self.error(volumen.toString() + " no es un valor entre 1 y 20")
    }
  }

  const volumen

  method peso() = volumen * 0.1
  method carga() = volumen * 2
  method esLuminoso() = false
}

class Morral{

  var tieneFarolito
  const largo

  method ponerFarolito() {tieneFarolito = true}
  method sacarFarolito() {tieneFarolito = false}

  method peso() = 1.2
  method carga() =  largo / 3
  method esLuminoso() = tieneFarolito
}