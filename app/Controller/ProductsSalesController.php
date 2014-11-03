<?php
App::uses('AppController', 'Controller');
/**
 * ProductsSales Controller
 *
 * @property ProductsSale $ProductsSale
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class ProductsSalesController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator', 'Session');

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->ProductsSale->recursive = 0;
		$this->set('productsSales', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->ProductsSale->exists($id)) {
			throw new NotFoundException(__('Invalid products sale'));
		}
		$options = array('conditions' => array('ProductsSale.' . $this->ProductsSale->primaryKey => $id));
		$this->set('productsSale', $this->ProductsSale->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->ProductsSale->create();
			if ($this->ProductsSale->save($this->request->data)) {
				$this->Session->setFlash(__('The products sale has been saved'), 'flash/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The products sale could not be saved. Please, try again.'), 'flash/error');
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
        $this->ProductsSale->id = $id;
		if (!$this->ProductsSale->exists($id)) {
			throw new NotFoundException(__('Invalid products sale'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->ProductsSale->save($this->request->data)) {
				$this->Session->setFlash(__('The products sale has been saved'), 'flash/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The products sale could not be saved. Please, try again.'), 'flash/error');
			}
		} else {
			$options = array('conditions' => array('ProductsSale.' . $this->ProductsSale->primaryKey => $id));
			$this->request->data = $this->ProductsSale->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @throws MethodNotAllowedException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->ProductsSale->id = $id;
		if (!$this->ProductsSale->exists()) {
			throw new NotFoundException(__('Invalid products sale'));
		}
		if ($this->ProductsSale->delete()) {
			$this->Session->setFlash(__('Products sale deleted'), 'flash/success');
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Products sale was not deleted'), 'flash/error');
		$this->redirect(array('action' => 'index'));
	}
/**
 * admin_index method
 *
 * @return void
 */
	public function admin_index() {
		$this->ProductsSale->recursive = 0;
		$this->set('productsSales', $this->paginate());
	}

/**
 * admin_view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		if (!$this->ProductsSale->exists($id)) {
			throw new NotFoundException(__('Invalid products sale'));
		}
		$options = array('conditions' => array('ProductsSale.' . $this->ProductsSale->primaryKey => $id));
		$this->set('productsSale', $this->ProductsSale->find('first', $options));
	}

/**
 * admin_add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->ProductsSale->create();
			if ($this->ProductsSale->save($this->request->data)) {
				$this->Session->setFlash(__('The products sale has been saved'), 'flash/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The products sale could not be saved. Please, try again.'), 'flash/error');
			}
		}
	}

/**
 * admin_edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
        $this->ProductsSale->id = $id;
		if (!$this->ProductsSale->exists($id)) {
			throw new NotFoundException(__('Invalid products sale'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->ProductsSale->save($this->request->data)) {
				$this->Session->setFlash(__('The products sale has been saved'), 'flash/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The products sale could not be saved. Please, try again.'), 'flash/error');
			}
		} else {
			$options = array('conditions' => array('ProductsSale.' . $this->ProductsSale->primaryKey => $id));
			$this->request->data = $this->ProductsSale->find('first', $options);
		}
	}

/**
 * admin_delete method
 *
 * @throws NotFoundException
 * @throws MethodNotAllowedException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->ProductsSale->id = $id;
		if (!$this->ProductsSale->exists()) {
			throw new NotFoundException(__('Invalid products sale'));
		}
		if ($this->ProductsSale->delete()) {
			$this->Session->setFlash(__('Products sale deleted'), 'flash/success');
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Products sale was not deleted'), 'flash/error');
		$this->redirect(array('action' => 'index'));
	}
}
