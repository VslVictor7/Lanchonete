new Vue({
  el: '#app',
  data: {
    cep: '',
    endereco: '',
    frete: 0
  },
  methods: {
    buscarCep() {
      if (this.cep.length === 0) {
        alert('Por favor, digite um CEP válido');
        return;
      }

      fetch(`https://viacep.com.br/ws/${this.cep}/json/`)
        .then(response => response.json())
        .then(data => {
          if (data.erro) {
            alert('CEP não encontrado');
          } else {
            this.endereco = `${data.logradouro}, ${data.bairro}, ${data.localidade}, ${data.uf}`;
            this.frete = this.calcularFrete(data.cep);
          }
        })
        .catch(error => {
          console.error('Erro na requisição:', error);
        });
    },
    
    calcularFrete(cep) {
      const lojaCEP = '66615-030';
      const distancia = this.calcularDistancia(lojaCEP, cep);
      const frete = distancia / 250000; 

      return frete;
    },

    calcularDistancia(cepOrigem, cepDestino) {
      const cepOrigemNumerico = cepOrigem.replace(/\D/g, '');
      const cepDestinoNumerico = cepDestino.replace(/\D/g, '');
      const distancia = Math.abs(Number(cepDestinoNumerico) - Number(cepOrigemNumerico));
      return distancia;
    }
  }
});