export interface Message {
  message: string;
}

export interface User {
  id: string;
  name?: string;
  email: string;
  phone?: string;
  address: string;
  Books: Book[];
  role: Role;
  RentedBooks: RentedBooks[];
}

export interface RentedBooks {
  id: string;
  userId: string;
  bookId: string;
  rentedDate: Date;
  dateToReturn: Date;
  dateReturned: Date;
}

export interface Order {
  id: string;
  orderNumber: string;
  userId: string;
  bookId: string;
  orderDate: Date;
  totalAmount: number;
  shppingAddress: string;
  quantity: number;
}

export interface Supplier {
  id: string;
  companyName: string;
  phone: string;
  address: string;
  Books: Book[];
}

export interface Book {
  id: string;
  title: string;
  author: string;
  supplierId: string;
  RentedBooks: RentedBooks[];
  Order: Order[];
}

export interface OrderItem {
  orderId: string;
  productId: string;
  unitPrice: number;
  quantity: number;
}

enum Role {
  USER,
  ADMIN,
}
