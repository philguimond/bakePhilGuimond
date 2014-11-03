<?php
App::uses('ProductsSale', 'Model');

/**
 * ProductsSale Test Case
 *
 */
class ProductsSaleTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.products_sale',
		'app.sale',
		'app.product'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->ProductsSale = ClassRegistry::init('ProductsSale');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->ProductsSale);

		parent::tearDown();
	}

}
