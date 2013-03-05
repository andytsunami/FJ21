package br.com.caelum.hibernate;

import org.hibernate.Session;

import br.com.caelum.hibernate.dao.ProdutoDAO;

public class TestaBusca {
	public static void main(String[] args) {
		Session session = new HibernateUtil().getSession();
		ProdutoDAO dao = new ProdutoDAO(session);

		System.out.println("****Listando tudo****");
		for (Produto p : dao.listaTudo()) {
			System.out.println(p.getNome());
		}

		System.out.println("****Listando Paginado****");
		for (Produto p : dao.pagina(2, 3)) {
			System.out.println(p.getNome());
		}

		System.out.println("****Preços maiores que****");
		for (Produto p : dao.precoMaiorQue(2.10)) {
			System.out.println(p.getNome());
		}
	}

}
