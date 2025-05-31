import bicis.*

class Deposito{
    const bicis = []

    method agregarBicis(listaDeBicis) {
        if (listaDeBicis.any({b=>bicis.contains(b)})){
            //self.error("una de las bicis ya esta en el depocito")
            throw new Exception(message="no se puede agregar dos veces la misma bici")
        }
        bicis.addAll(listaDeBicis)
    }
}