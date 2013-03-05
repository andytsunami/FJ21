package br.com.caelum.hibernate;

import org.hibernate.Session;

import br.com.caelum.hibernate.dao.ProdutoDAO;

public class TestaProdutoDAO {
	public static void main(String[] args) {

		Session session = new HibernateUtil().getSession();

		ProdutoDAO dao = new ProdutoDAO(session);

		Produto produto = new Produto();

		produto.setNome("Agora com DAO");
		produto.setDescricao("Teste DAO");
		produto.setPreco(8.0);

		session.beginTransaction();
		dao.salva(produto);
		session.getTransaction().commit();

		session.close();

	}

}
