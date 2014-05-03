package ca.digitaltango.prodobs.graph.repository;

import java.util.Iterator;

import lombok.extern.slf4j.Slf4j;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.EndResult;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import ca.digitaltango.prodobs.graph.model.Manu;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "/test-context.xml" })
@Transactional
public class ProductRepositoryTest {

	@Autowired
	private ManuService manuRepo;

	@Test
	public void testAssertNotNullRepo() {
		Assert.assertNotNull(manuRepo);
	}

	
	@Test
	public void testSaveProduct() {
		Assert.assertNotNull(manuRepo);
		Manu manu1 = new Manu();
		manu1.setName("test title");
		manuRepo.save(manu1);
		log.debug("******** manu id:" + manu1.getId());

		Manu manu2 = new Manu();
		manu2.setName("test title2");
		manuRepo.save(manu2);
		log.debug("******** manu id:" + manu2.getId());

		Manu manu3 = new Manu();
		manu3.setName("test title3");
		manuRepo.save(manu3);
		log.debug("******** manu id:" + manu3.getId());

		EndResult<Manu> manus = manuRepo.findAll();
		Iterator<Manu> it = manus.iterator();
		while (it.hasNext()) {
			Manu m = it.next();
			log.debug("+++++ MANU: " + m.getName());
		}
	}

}
