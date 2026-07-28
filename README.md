# WaveC Dynamic Array (Vector) Library - ECS Optimized (Ultimate 2026)

## 🌐 Select Language: [English](#english-version) | [中文](#中文版本) | [Tiếng Việt](#phiên-bản-tiếng-việt)

---

## 🇬🇧 English Version

### Overview
This library provides a generic dynamic array (vector) implementation optimized for Entity-Component-System (ECS) architectures, written in Wave 0.1.9-pre-beta (running on Fedora Linux 43 Container Image with LLVM 21.1.8 backend). It serves as a supporting code library for Raylib development workflows, though not an official release or documented version.

### Features
- **Generic Implementation**: Works with any element type using runtime element size information
- **ECS-Optimized**: Designed specifically for ECS architectures with performance in mind
- **Memory Efficient**: Geometric growth strategy (×2) for amortized O(1) push operations
- **Fast Operations**: Unordered removal operations in O(1) time using swap-and-pop techniques
- **Range Operations**: Comprehensive support for range-based operations
- **Memory Management**: Proper allocation, deallocation, and capacity management
- **Batch Operations**: Efficient bulk operations for better performance

### Core Functions
- `vec_new<T>()`: Create a new vector on the stack
- `vec_new_heap<T>()`: Create a new vector on the heap
- `vec_push<T>()`: Add an element to the end (amortized O(1))
- `vec_pop<T>()`: Remove and return the last element (O(1))
- `vec_remove_swap<T>()`: Remove element by swapping with last (O(1), no order preservation)
- `vec_remove<T>()`: Remove element while preserving order (O(N))
- `vec_insert<T>()`: Insert element at index (O(N))
- `vec_clone<T>()`: Create a deep copy of the vector
- `vec_slice<T>()`: Extract a range as a new vector

### Usage Examples
Examples are located in the `examples/` directory:
- `01_basic_lifecycle.wave`: Basic vector creation, access, and destruction
- `02_insertion_removal.wave`: Insertion and removal operations
- `03_range_batch.wave`: Range operations and batch processing
- `04_clone_slice.wave`: Clone and slice operations
- `05_ecs_practical.wave`: Practical ECS use case example

### Build Environment
- Wave 0.1.9-pre-beta
- Fedora Linux 43 (Container Image)
- LLVM 21.1.8 backend
- Docker-based build system

---

## 🇨🇳 中文版本

### 概述
此库提供了针对实体-组件-系统（ECS）架构优化的泛型动态数组（向量）实现，使用 Wave 0.1.9-pre-beta 编写（在 Fedora Linux 43 容器镜像上运行，LLVM 21.1.8 后端）。它作为 Raylib 开发工作流程的支持代码库，但不是正式发布版本或文档化版本。

### 特性
- **泛型实现**：使用运行时元素大小信息支持任何元素类型
- **ECS 优化**：专门为 ECS 架构设计，注重性能
- **内存高效**：几何增长策略（×2）实现摊销 O(1) 推送操作
- **快速操作**：使用交换和弹出技术实现 O(1) 时间的无序删除操作
- **范围操作**：全面支持基于范围的操作
- **内存管理**：适当的分配、释放和容量管理
- **批处理操作**：高效的批量操作以获得更好的性能

### 核心函数
- `vec_new<T>()`：在栈上创建新向量
- `vec_new_heap<T>()`：在堆上创建新向量
- `vec_push<T>()`：在末尾添加元素（摊销 O(1)）
- `vec_pop<T>()`：删除并返回最后一个元素（O(1)）
- `vec_remove_swap<T>()`：通过与最后一个元素交换来删除（O(1)，不保持顺序）
- `vec_remove<T>()`：删除元素并保持顺序（O(N)）
- `vec_insert<T>()`：在索引处插入元素（O(N)）
- `vec_clone<T>()`：创建向量的深拷贝
- `vec_slice<T>()`：提取范围作为新向量

### 使用示例
示例位于 `examples/` 目录：
- `01_basic_lifecycle.wave`：基本向量创建、访问和销毁
- `02_insertion_removal.wave`：插入和删除操作
- `03_range_batch.wave`：范围操作和批处理
- `04_clone_slice.wave`：克隆和切片操作
- `05_ecs_practical.wave`：实用的 ECS 使用案例示例

### 构建环境
- Wave 0.1.9-pre-beta
- Fedora Linux 43（容器镜像）
- LLVM 21.1.8 后端
- 基于 Docker 的构建系统

---

## 🇻🇳 Phiên Bản Tiếng Việt

### Tổng Quan
Thư viện này cung cấp triển khai mảng động (vector) tổng quát được tối ưu hóa cho kiến trúc Entity-Component-System (ECS), viết bằng Wave 0.1.9-pre-beta (chạy trên Fedora Linux 43 Container Image với backend LLVM 21.1.8). Thư viện đóng vai trò là thư viện mã nguồn hỗ trợ trong quá trình phát triển với Raylib, mặc dù đây không phải là phiên bản chính thức hay được tài liệu hóa đầy đủ.

### Tính Năng
- **Triển Khai Tổng Quát**: Làm việc với bất kỳ kiểu phần tử nào bằng cách sử dụng thông tin kích thước phần tử tại runtime
- **Tối Ưu ECS**: Được thiết kế đặc biệt cho kiến trúc ECS với hiệu suất là yếu tố quan trọng
- **Hiệu Quả Bộ Nhớ**: Chiến lược tăng trưởng hình học (×2) cho thao tác đẩy có độ phức tạp trung bình O(1)
- **Thao Tác Nhanh**: Thao tác xóa không theo thứ tự trong thời gian O(1) sử dụng kỹ thuật swap-and-pop
- **Thao Tác Phạm Vi**: Hỗ trợ toàn diện cho các thao tác dựa trên phạm vi
- **Quản Lý Bộ Nhớ**: Phân bổ, giải phóng và quản lý dung lượng phù hợp
- **Thao Tác Hàng Loạt**: Các thao tác hàng loạt hiệu quả để có hiệu suất tốt hơn

### Hàm Cốt Lõi
- `vec_new<T>()`: Tạo một vector mới trên ngăn xếp
- `vec_new_heap<T>()`: Tạo một vector mới trên vùng nhớ đệm
- `vec_push<T>()`: Thêm phần tử vào cuối (trung bình O(1))
- `vec_pop<T>()`: Xóa và trả về phần tử cuối cùng (O(1))
- `vec_remove_swap<T>()`: Xóa phần tử bằng cách hoán đổi với phần tử cuối (O(1), không bảo toàn thứ tự)
- `vec_remove<T>()`: Xóa phần tử trong khi bảo toàn thứ tự (O(N))
- `vec_insert<T>()`: Chèn phần tử tại chỉ mục (O(N))
- `vec_clone<T>()`: Tạo bản sao sâu của vector
- `vec_slice<T>()`: Trích xuất một phạm vi thành vector mới

### Ví Dụ Sử Dụng
Các ví dụ nằm trong thư mục `examples/`:
- `01_basic_lifecycle.wave`: Tạo, truy cập và hủy cơ bản của vector
- `02_insertion_removal.wave`: Các thao tác chèn và xóa
- `03_range_batch.wave`: Các thao tác phạm vi và xử lý hàng loạt
- `04_clone_slice.wave`: Các thao tác sao chép và trích xuất
- `05_ecs_practical.wave`: Ví dụ thực tế về trường hợp sử dụng ECS

### Môi Trường Biên Dịch
- Wave 0.1.9-pre-beta
- Fedora Linux 43 (Container Image)
- Backend LLVM 21.1.8
- Hệ thống xây dựng dựa trên Docker

---

[Back to Top](#wavec-dynamic-array-vector-library---ecs-optimized-ultimate-2026)