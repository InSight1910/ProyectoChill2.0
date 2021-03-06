import { Component, Input, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Reclamo } from 'src/app/interfaces/reclamo.model';
import { Usuario } from 'src/app/interfaces/usuario.model';
import { ReclamosService } from 'src/app/services/reclamos.service';
import { UsuariosService } from 'src/app/services/usuarios.service';
import swal from 'sweetalert'

@Component({
  selector: 'app-ingresar-reclamo',
  templateUrl: './ingresar-reclamo.component.html',
  styleUrls: ['./ingresar-reclamo.component.css']
})
export class IngresarReclamoComponent implements OnInit {

  constructor(private router: Router, private service: ReclamosService, private ruta: ActivatedRoute, private serviceUser: UsuariosService) { }
  @Input() reclamos: Reclamo;
  @Input() usuario: Usuario;
  usuarios: Usuario = {
    correo: null,
    nombre: null,
    contrasenha: null,
    rut: null,
    rol: null,
    numTelefono: null,
    direccion: null
  };

  reclamo: Reclamo[];
  ngOnInit(): void {
    this.obtenerDatosUsuario();

  }

  obtenerDatosUsuario() {
    const rut = JSON.parse(localStorage.getItem('usuario')).rut
    this.serviceUser.obtenerUsuarioPorId(rut).subscribe(usuario => this.usuarios = usuario[0]);
  }

  ingresarReclamo(rut: String,tipoReclamo: string, descripcion:string): void{

    if(!descripcion.trim()){
      swal('Campo vacío',
    'Por favor ingrese la descripción del problema',
    'error')
    }

    this.service.ingresarReclamo({rut, tipoReclamo, descripcion} as Reclamo).subscribe(_ => {swal('Reclamo Ingresado con éxito',
    'Esperamos comunicarnos pronto con usted',
    'success'); this.router.navigate(['usuario'])})
  }
}
