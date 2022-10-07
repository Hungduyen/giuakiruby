class Congan


    def initialize

    end 

   

    def enter_infomation
      
        print "Nhập ID: "
        @id = gets.chomp
        print "Nhập hãng sản xuất: "
        @hangsanxuat = gets.chomp
        print "Nhập năm sản xuất: "
        @namsanxuat = gets.to_i
        print "Nhập dòng xe: "
        @dongxe = gets.chomp
        print "Nhập giá bán: "
        @giaban = gets.to_i
        print "Nhập biển số xe: "
        @biensoxe = gets.chomp
        print "Nhập màu xe: "
        @mauxe = gets.chomp
    end

    def info    
        puts "Id : #{@id}"
        puts "Hãng sản xuất : #{@hangsanxuat}"
        puts "Năm sản xuất : #{@namsanxuat}"
        puts "Dòng xe: #{@namsanxuat}"
        puts "Giá bán: #{@giaban}"
        puts "Biển số xe: #{@biensoxe}"
        puts "Màu xe: #{@mauxe}"
    end
    attr_accessor :id, :hangsanxuat, :namsanxuat, :giaban, :biensoxe, :mauxe
end 



class Oto < Congan

    def initialize
    end

    attr_accessor :id, :hangsanxuat, :namsanxuat, :giaban, :biensoxe, :mauxe, :sochongoi, :kieudongco, :nhienlieu, :sotuikhi, :ngaydangkiem

    def enter_infomation
        super
        print "Nhập số chỗ ngồi : "
        @sochongoi = gets.to_i
      print "Nhập kiểu động cơ : "
      @kieudongco = gets.chomp
      print "Nhập nhiên liệu (Nhập 0 là xăng hoặc 1 là dầu): "
      @nhienlieu = gets.to_i
      print "Nhập số túi khí : "
      @sotuikhi = gets.to_i
      print "Nhập ngày đăng kiểm : "
      @ngaydangkiem = gets.chomp
    end

    def info 
      super   
      puts "Số chỗ ngồi : #{@sochongoi}"
      puts "Kiểu động cơ : #{@kieudongco}"
      if @nhienlieu == 0 
                  puts'Nhiên liệu : Xăng'
              elsif @nhienlieu == 1
                  puts 'Nhiên liệu : Dầu'
              else 
                  puts 'Nhiên thiệu: Khác'
              end
      puts "Số túi khí : #{@sotuikhi}"
      puts "Ngày đăng kiểm : #{@ngaydangkiem}"
    end

end

class Xemay < Congan

    def initialize
    end

    def enter_infomation
        super
        print "Nhập công suất : "
        @nganh = gets.to_i
        print "Nhập dung tích : "
        @nganh = gets.to_i
    end
    def info 
        super   
        puts "Công suất : #{@congsuat}"
      puts "Dung tích : #{@dungtich}"
    end
    attr_accessor :id, :hangsanxuat, :namsanxuat, :giaban, :biensoxe, :mauxe, :congsuat, :dungtich
end

class Xetai < Congan
    def initialize
    end

    def enter_infomation
        super
        print "Nhập trọng tải : "
        @trongtai = gets.to_i
    end
    def info 
        super   
        puts "Trọng tải : #{@trongtai}"
    end
    attr_accessor :id, :hangsanxuat, :namsanxuat, :giaban, :biensoxe, :mauxe, :trongtai

end

class QLPTGT
    def initialize
    end

    $congans = []
    
    def themPhuongtien
        puts"1. Thêm ô tô :"
        puts"2. Thêm xe máy :"
        puts"3. Thêm xe tải :"
        print "Mời bạn chon : "
        choose = gets.to_i
        if choose ==1 
            congan =Oto.new
         
        elsif choose == 2
          congan =Xemay.new
        else 
          congan = Xetai.new
        end
      congan.enter_infomation
        $congans << congan       
    end

    def thongtin 
        puts "============Danh sách phương tiện là================"    
        $congans.each do |congan|
            puts congan.info
        end
    end

end



$continute = true
while $continute

    quanly = QLPTGT.new
    puts "1. Thêm mới phương tiện."
    puts "2. Tìm kiếm theo tên."
    puts "3. Hiện thị thông tin danh sách phương tiện ."
    puts "4 Thoát khỏi chương trình."

    print "Mời bạn chọn : "
    choose = gets.to_i

    case choose
    when 1
        quanly.themPhuongtien
    when 2
       puts "Hiện đang bị lỗi"
    when 3
        quanly.thongtin
    else
       puts "Xin tạm biệt!"
        $continute = false
    end
end
