class aviones{
    constructor(marca, color, velocidadDespegue){
        this.marca = marca;
        this.color = color; 
        this.velocidadDespegue = velocidadDespegue;
    }

    get AjusteDePotencia(){
        return this.ajusteDePotencia();
    }

    get GuardarRuedas(){
        return this.guardarRuedas();
    }

    guardarRuedas(){
        return `El ${this.marca} de color ${this.color} ha guardado las ruedas`;
    }

    ajusteDePotencia(){
        return `El ${this.marca} está ajustando la potencia de los motores a ${this.velocidadDespegue}`;
    }

}

const avion1 = new aviones('AirBus', 'rojo', '220km/h');
console.log(avion1.AjusteDePotencia);
console.log(avion1.GuardarRuedas);

class avionCombate extends aviones{
    constructor(marca, color, velocidadDespegue, artilleria){
        super(marca, color, velocidadDespegue);
        this.artilleria = artilleria;
    }

    get Atacar(){
        return this.atacar();
    }

    atacar() {
        return `El ${this.marca} está atacando con ${this.artilleria}`;
    }

    ajusteDePotencia(){
        return `El ${this.marca} de color ${this.color} está ajustando la potencia de sus motores a ${this.velocidadDespegue}`;
    }
}

const avionCombate1 = new avionCombate('f-35', 'gris', '370km/h', 'bombas');
console.log(avionCombate1.Atacar);
console.log(avionCombate1.AjusteDePotencia);



class helicoptero extends aviones{
    constructor(marca, color, velocidadDespegue, velocidadMaxRotor){
        super(marca, color, velocidadDespegue);
        this.velocidadMaxRotor = velocidadMaxRotor;
    }

    get Aterrizar(){
        return this.aterrizar();
    }

    aterrizar() {
        return `El ${this.marca} de color ${this.color} está aterrizando suavemente`;
    }

    ajusteDePotencia(){
        return `El ${this.marca} incrementa la potencia del rotor hasta alcanzar ${this.velocidadMaxRotor} para despegar a ${this.velocidadDespegue}`;
    }
}

const helicoptero1 = new helicoptero('Bell', 'negro', '70km/h', '278km/h');
console.log(helicoptero1.Aterrizar);
console.log(helicoptero1.AjusteDePotencia);



class avioneta extends aviones{
    constructor(marca, color, velocidadDespegue, tipoFertilizante){
        super(marca, color, velocidadDespegue);
        this.tipoFertilizante = tipoFertilizante;
    }

    get Fumigar(){
        return this.fumigar();
    }

    fumigar() {
        return `La ${this.marca} está fumigando con fertilizante ${this.tipoFertilizante}`;
    }

    guardarRuedas(){
        return `La ${this.marca} no puede guardar las ruedas`;
    }

    ajusteDePotencia(){
        return `La ${this.marca} de color ${this.color} está por arrancar a ${this.velocidadDespegue}`;
    }
}

const avioneta1 = new avioneta('AirTaxi', 'amarillo', '160km/h', 'orgánico');
console.log(avioneta1.Fumigar);
console.log(avioneta1.AjusteDePotencia);
console.log(avioneta1.GuardarRuedas);













