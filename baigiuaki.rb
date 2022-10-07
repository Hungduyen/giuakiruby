class Congan


    def initialize

    end 

   

    def enter_infomation
      
        print "Nhập ID: "
        @id225 = gets.chomp
        print "Nhập hãng sản xuất: "
        @hangsanxuat225 = gets.chomp
        print "Nhập năm sản xuất: "
        @namsanxuat225 = gets.to_i
        print "Nhập dòng xe: "
        @dongxe225 = gets.chomp
        print "Nhập giá bán: "
        @giaban225 = gets.to_i
        print "Nhập biển số xe: "
        @biensoxe225 = gets.chomp
        print "Nhập màu xe: "
        @mauxe225 = gets.chomp
    end

    def info    
        puts "Id : #{@id225}"
        puts "Hãng sản xuất : #{@hangsanxuat225}"
        puts "Năm sản xuất : #{@namsanxuat225}"
        puts "Dòng xe: #{@namsanxuat225}"
        puts "Giá bán: #{@giaban225}"
        puts "Biển số xe: #{@biensoxe225}"
        puts "Màu xe: #{@mauxe225}"
    end
    attr_accessor :id225, :hangsanxuat225, :namsanxuat225, :giaban225, :biensoxe225, :mauxe225
end 



class Oto < Congan

    def initialize
    end

    attr_accessor :id225, :hangsanxuat225, :namsanxuat225, :giaban225, :biensoxe225, :mauxe225, :sochongoi225, :kieudongco225, :nhienlieu225, :sotuikhi225, :ngaydangkiem225

    def enter_infomation
        super
        print "Nhập số chỗ ngồi : "
        @sochongoi225 = gets.to_i
      print "Nhập kiểu động cơ : "
      @kieudongco225 = gets.chomp
      print "Nhập nhiên liệu (Nhập 0 là xăng hoặc 1 là dầu): "
      @nhienlieu225 = gets.to_i
      print "Nhập số túi khí : "
      @sotuikhi225 = gets.to_i
      print "Nhập ngày đăng kiểm : "
      @ngaydangkiem225 = gets.chomp
    end

    def info 
      super   
      puts "Số chỗ ngồi : #{@sochongoi225}"
      puts "Kiểu động cơ : #{@kieudongco225}"
      if @nhienlieu225 == 0 
                  puts'Nhiên liệu : Xăng'
              elsif @nhienlieu225 == 1
                  puts 'Nhiên liệu : Dầu'
              else 
                  puts 'Nhiên thiệu: Khác'
              end
      puts "Số túi khí : #{@sotuikhi225}"
      puts "Ngày đăng kiểm : #{@ngaydangkiem225}"
    end

end

class Xemay < Congan

    def initialize
    end

    def enter_infomation
        super
        print "Nhập công suất : "
        @congsuat225 = gets.to_i
        print "Nhập dung tích : "
        @dungtich225 = gets.to_i
    end
    def info 
        super   
        puts "Công suất : #{@congsuat225}"
      puts "Dung tích : #{@dungtich225}"
    end
    attr_accessor :id225, :hangsanxuat225, :namsanxuat225, :giaban225, :biensoxe225, :mauxe225, :congsuat225, :dungtich225
end

class Xetai < Congan
    def initialize
    end

    def enter_infomation
        super
        print "Nhập trọng tải : "
        @trongtai225 = gets.to_i
    end
    def info 
        super   
        puts "Trọng tải : #{@trongtai225}"
    end
    attr_accessor :id225, :hangsanxuat225, :namsanxuat225, :giaban225, :biensoxe225, :mauxe225, :trongtai225

end

class QLPTGT
    def initialize
    end

    $congans225 = []
    
    def themPhuongtien
        puts"1. Thêm ô tô :"
        puts"2. Thêm xe máy :"
        puts"3. Thêm xe tải :"
        print "Mời bạn chon : "
        choose = gets.to_i
        if choose ==1 
            congan225 =Oto.new
         
        elsif choose == 2
          congan225 =Xemay.new
        else 
          congan225 = Xetai.new
        end
      congan225.enter_infomation
        $congans225 << congan225      
    end

    def deletePhuongTien225
          puts "Nhap ID phuong tien can xoa: "
          maid225 = gets.chomp
          $congans225.delete_if {|pt225| pt225.id225 == maid225}
          puts "===Danh sach phuong tien sau khi xoa==="    
          $congans225.each do |pt|
              puts pt.info
          end
      end
      
    def thongtin 
        puts "============Danh sách phương tiện là================"    
        $congans225.each do |congan225|
            puts congan225.info
        end
    end
    

end



$continute = true
while $continute

    quanly = QLPTGT.new
    puts "1. Thêm mới phương tiện."
    puts "2. Xóa phương tiện"
    puts "3. Tìm kiếm theo tên."
    puts "4. Hiện thị thông tin danh sách phương tiện ."
    puts "5 Thoát khỏi chương trình."

    print "Mời bạn chọn : "
    choose = gets.to_i

    case choose
    when 1
        quanly.themPhuongtien
    when 2
      quanly.deletePhuongTien225
    when 3
         puts "Đang bị lỗi"
    when 4
          quanly.thongtin
    else
       puts "Xin tạm biệt!"
        $continute = false
    end
end
