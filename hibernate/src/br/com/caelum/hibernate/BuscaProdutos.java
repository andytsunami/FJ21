package br.com.caelum.hibernate;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class BuscaProdutos {
	public static void main(String[] args) {
		AnnotationConfiguration cfg = new AnnotationConfiguration();
		cfg.addAnnotatedClass(Produto.class);

		SessionFactory factory = cfg.buildSessionFactory();
		Session session = factory.openSession();

		Query query = session
				.createQuery("SELECT p FROM Produto AS p WHERE p.preco > :paramPreco");
		query.setParameter("paramPreco", 10);
		List<Produto> lista = query.list();

		for (Produto p : lista) {
			System.out.println(p.getNome());
		}

		session.close();

	}

}
