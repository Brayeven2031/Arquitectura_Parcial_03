#!/usr/bin/perl

#Fichero especializad para la ejecucion en lotes ejecutables
$path= "/home/brayeven/Documentos/Arquitectura/Proyecto_Final/pruebas_C";

@Ejecutables=("MM1c");

@VectorSize= ("200","500","1000","1500","2000");


$repeticiones = 30;

foreach $exe (@Ejecutables)
{
      foreach $ves (@VectorSize)
      {
            $file = "$path/"."$exe"."-Size"."$ves"."-core";
            #print "$file \n"; #este es el nombre del archivo vale!! 
            for($i=0; $i<$repeticiones; $i++)
            {
                  system("$path/$exe $ves >> $file");
                  #print "$path/$exe $ves \n";                  
            }

      }
}    
