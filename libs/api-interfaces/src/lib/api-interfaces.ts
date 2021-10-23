export interface Message {
  message: string;
}


export interface Customer {
  customerId: string;
  customerName: string;
  phone: string;
  customerAddress: string;
}

export interface Order {
  orderId: string;
  orderNumber: number;
  customerId: string;
  orderDate: string;
  totalAmount: number;
  customerAddress: string;
}

export interface Supplier {
  supplierId: string;
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
