package br.com.caelum.hibernate;

import org.hibernate.Session;

public class TesteExecucao {
	public static void main(String[] args) {

		Session session = new HibernateUtil().getSession();
		Produto p = (Produto) session.load(Produto.class, 1L);

		System.out.println("O select foi realizado!");
		System.out.println(p.getNome());
	}
}
