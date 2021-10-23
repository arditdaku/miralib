export interface Message {
  message: string;
}


export interface Customer {
  id: string;
  customerName: string;
  phone: string;
  customerAddress: string;
}

export interface Order {
  id: string;
  orderNumber: number;
  customerId: string;
  orderDate: string;
  totalAmount: number;
  customerAddress: string;
}

export interface Supplier {
  id: string;
  companyName: string;
  phone: string;
  address: string;
}

export interface Product {
  productId: string;
  productName: string;
  supplierId: string;
  unitPrice: number;
}

export interface OrderItem {
  orderId: string;
  productId: string;
  unitPrice: number;
  quantity: number;
}
