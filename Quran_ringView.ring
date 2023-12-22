# Form/Window View - Generated Source Code File 
# Generated by the Ring 1.18 Form Designer
# Date : 22/12/2023
# Time : 22:58:43

Load "stdlibcore.ring"
Load "guilib.ring"

import System.GUI

if IsMainSourceFile() { 
	new App {
		StyleFusion()
		new Quran_ringView { win.show() } 
		exec()
	}
}

class Quran_ringView from WindowsViewParent
	win = new MainWindow() { 
		move(223,129)
		resize(560,374)
		setWindowTitle("القرآن الكريم")
		setstylesheet("background-color:;") 

		setWinIcon(win,"Quran_Logo.ico") 
		lbl_Suras_COunt9 = new label(win) {
			move(-107,126)
			resize(283,56)
			setstylesheet("color:;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Simplified Arabic,10,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		lbl_Reciters_COunt = new label(win) {
			move(-119,31)
			resize(283,42)
			setstylesheet("color:;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Simplified Arabic,10,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		reciters_Widget = new combobox(win) {
			move(159,37)
			resize(226,34)
			setstylesheet("color:;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Simplified Arabic,14,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setactivatedEvent("")
			setcurrentIndexChangedEvent(Method(:GetMoshafs))
			seteditTextChangedEvent("")
			sethighlightedEvent("")
			
		}
		Label1 = new label(win) {
			move(396,26)
			resize(116,56)
			setstylesheet("color:;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Times New Roman,20,-1,5,50,0,0,0,0,0,Regular")
			setfont(oFont)
			oFont.delete()
			setText("اختر قارئاََ:")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		moshaf_Widget4 = new combobox(win) {
			move(182,97)
			resize(208,34)
			setstylesheet("color:;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Simplified Arabic,14,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setactivatedEvent("")
			setcurrentIndexChangedEvent(Method(:GetSura))
			seteditTextChangedEvent("")
			sethighlightedEvent("")
			
		}
		Label5 = new label(win) {
			move(399,138)
			resize(133,56)
			setstylesheet("color:;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Times New Roman,20,-1,5,50,0,0,0,0,0,Regular")
			setfont(oFont)
			oFont.delete()
			setText("اختر سورة:")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		Sura_Widget = new combobox(win) {
			move(182,148)
			resize(208,31)
			setstylesheet("color:;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Simplified Arabic,14,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setactivatedEvent("")
			setcurrentIndexChangedEvent(Method(:prepare_Sura))
			seteditTextChangedEvent("")
			sethighlightedEvent("")
			
		}
		lbl_sura_name = new label(win) {
			move(162,195)
			resize(230,47)
			setstylesheet("color:;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Times New Roman,18,-1,5,50,0,0,0,0,0,Regular")
			setfont(oFont)
			oFont.delete()
			setText("")
			setAlignment(Qt_AlignHCenter |  Qt_AlignVCenter)
		}
		Label3 = new label(win) {
			move(383,83)
			resize(147,56)
			setstylesheet("color:;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Times New Roman,20,-1,5,50,0,0,0,0,0,Regular")
			setfont(oFont)
			oFont.delete()
			setText("اختر مصحفاََ:")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		lbl_Moshfs_COunt8 = new label(win) {
			move(-107,80)
			resize(283,56)
			setstylesheet("color:;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Simplified Arabic,10,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		btn_play_sura = new pushbutton(win) {
			move(211,247)
			resize(102,78)
			setstylesheet("color:;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Times New Roman,32,-1,5,50,0,0,0,0,0,Regular")
			setfont(oFont)
			oFont.delete()
			setText("▶")
			setClickEvent(Method(:play_sura))
			setBtnImage(btn_play_sura,"")
			
		}
		lbl_Reciter_number_Layout = new QHBoxLayout() {
			AddWidget(lbl_Reciters_COunt)
			AddWidget(reciters_Widget)
			AddWidget(Label1)
			
		}
		lbl_mohfs_number_layout = new QHBoxLayout() {
			AddWidget(lbl_Moshfs_COunt8)
			AddWidget(moshaf_Widget4)
			AddWidget(Label3)
			
		}
		lbl_sowers_num_layout = new QHBoxLayout() {
			AddWidget(lbl_Suras_COunt9)
			AddWidget(Sura_Widget)
			AddWidget(Label5)
			
		}
		main_layout = new QVBoxLayout() {
			AddLayout(lbl_Reciter_number_Layout)
			AddLayout(lbl_mohfs_number_layout)
			AddLayout(lbl_sowers_num_layout)
			AddWidget(lbl_sura_name)
			AddWidget(btn_play_sura)
			
		}

		oMWLayoutWidget = new qWidget() { setLayout(main_layout) }
		setCentralWidget(oMWLayoutWidget) 
	}

# End of the Generated Source Code File...