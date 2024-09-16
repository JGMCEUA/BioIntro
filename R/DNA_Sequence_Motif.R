#' Búsqueda de motivos dentro de una secuencia de DNA dada
#'
#' @param Sec Cadena de caracteres de DNA en la cual se buscará un motivo dado
#' @param Motif Cadena de caracter más corto que la secuencia que se buscará en una secuencia dada
#'
#' @return msg
#' @export
#'
#' @examples
#' DNA_Sequence_Motif("GTACGTACGTAGCTGACTACGATCAGCGGAGTCGATCATCACGCTACGTACGTACGATGGGATTTTCAGCATGC","gatc")
#' DNA_Sequence_Motif("GTACGTACGTAGCTGACTACGATCAGCGGAGTCGATCATCACGCTACGTACGTACGATGGGATTTTCAGCATGC","GATA")
#' DNA_Sequence_Motif("GTACGTACGTAGCTGACTACGATCAGCGGAGTCGATCATCACGCTACGTACGTACGATGGGATTTTCAGCATGC","gatU")
DNA_Sequence_Motif <- function(Sec, Motif) {
  #Dada una secuencia y un motivo, encontrar la posición de inicio del motivo en la secuencia. Si no se encuentra, reportarlo
  #Se asegura que el motif no sea mayor ala secuencia y a su vez que no estén vacias las cadenas ingresadas
  if (nchar(Sec) < nchar(Motif) | all(nzchar(c(Sec,Motif)))!=TRUE){
    print("Una o las dos cadenas son incorrectas, favor de verifcarlas y volver a ejecutar")
  } else{
    #Se asegura que tanto la secuencia como el motif sean secuencias de DNA, compuestas por "A", "G", "T" y "C" o "a", "g", "t" y "c"
    if (grepl("^[GTCAgtca]+$", Sec) & grepl("^[GTCAgtca]+$", Motif)){
      #Busca el motif dentro de la secuencia de DNA
      if (grepl(toupper(Motif), toupper(Sec))) {
        print("El motivo ingresado se encuentra dentro de la secuencia de DNA")

      } else {
        print("El motivo NO se encuentra en la secuencia de DNA")
      }
    } else{
      print("Una de las cadenas dadas no es una secuencia de DNA, favor de verificarlas")
    }
  }
}
