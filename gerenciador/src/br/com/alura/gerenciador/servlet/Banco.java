package br.com.alura.gerenciador.servlet;

import java.util.ArrayList;
import java.util.List;

//Simulação de BD
public class Banco {
	
	private static List<Empresa> lista = new ArrayList<Empresa>();
	
	//Artimanha para carregar essas duas empresas sempre que o servidor subir
	static {
		Empresa empresa = new Empresa();
		empresa.setNome("Alura");
		Empresa empresa2 = new Empresa();
		empresa2.setNome("Caelum");
		lista.add(empresa);
		lista.add(empresa2);
	}

	public void adiciona(Empresa empresa) {
		lista.add(empresa);
	}
	
	public List<Empresa> getEmpresas(){
		return Banco.lista;
	}

}
