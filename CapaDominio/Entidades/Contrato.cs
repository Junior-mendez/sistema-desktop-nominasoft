﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDominio.Entidades
{
    public class Contrato
    {
        private Boolean asignacionFamiliar;
        private String cargo;
        private int codigo;
        private DateTime fechaInicio;
        private DateTime fechaFin;
        private int horasSemana;
        private int pagoPorHora;
        private Boolean estado;
        private Empleado empleado;
        private Afp afp;
        

        public bool AsignacionFamiliar { get => asignacionFamiliar; set => asignacionFamiliar = value; }
        public string Cargo { get => cargo; set => cargo = value; }
        public int Codigo { get => codigo; set => codigo = value; }
        public DateTime FechaInicio { get => fechaInicio; set => fechaInicio = value; }
        public DateTime FechaFin { get => fechaFin; set => fechaFin = value; }
        public int HorasSemana { get => horasSemana; set => horasSemana = value; }
        public int PagoPorHora { get => pagoPorHora; set => pagoPorHora = value; }
        
        internal Empleado Empleado { get => empleado; set => empleado = value; }
        internal Afp Afp { get => afp; set => afp = value; }
        public bool Estado { get => estado; set => estado = value; }

        //reglas de negocio

       
        public Boolean ValidarValorPorHora()
        {
            if(pagoPorHora>=10 && pagoPorHora <= 60)
            {
                //añadir Metodo para guardar en la base de datos
                return true;

            }
            return false;
        }

        public Double CalcularDescuentosAfp(Double sueldoBasico)
        {
            Double descuentoAFp;
            descuentoAFp = sueldoBasico * Afp.PorcentajeAfp;
            return descuentoAFp;
        }

        

        public Boolean ValidarHorasSemanales()
        {
            if (horasSemana >= 8 && horasSemana <= 40 && horasSemana%4==0)
                return true;
            return false;
        }

        public Boolean ValidarVigenciaDeContrato()
        {
            if (fechaFin >= DateTime.Now && estado == true)
                return true;
            return false;
        }
        //validar Fecha del anterior contrato necesitamos la base de datos, se implementara en la capa 4
        public Boolean VerificarContratoAnterior(Contrato anterior)
        {
            if (fechaInicio>anterior.fechaFin)
            {
                return true;
            }
            return false;
        }

        public Boolean VerfificarFechaFin()
        {
            if (fechaFin >= fechaInicio.AddMonths(3) && fechaFin <= fechaInicio.AddMonths(12))
                return true;
            return false;
        }

    }
}