#tag DesktopWindow
Begin DesktopWindow Window1
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   2000982015
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "RAK11200 as ESP32 Variant"
   Type            =   0
   Visible         =   True
   Width           =   600
   Begin DesktopButton Button1
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "select"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   197
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopLabel Label1
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Select ESP32 BSP Folder:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   174
   End
   Begin DesktopTextField tfFolderPath
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   False
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   289
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   291
   End
   Begin DesktopListBox lbLogs
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   1
      ColumnWidths    =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   320
      Index           =   -2147483648
      InitialValue    =   "Actions"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   560
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      Begin DesktopCanvas Canvas1
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   24
         Index           =   -2147483648
         InitialParent   =   "lbLogs"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   52
         Transparent     =   True
         Visible         =   True
         Width           =   560
      End
   End
   Begin Thread InstallThread
      DebugIdentifier =   ""
      Index           =   -2147483648
      LockedInPosition=   False
      Priority        =   5
      Scope           =   0
      StackSize       =   0
      TabPanelIndex   =   0
      ThreadID        =   0
      ThreadState     =   0
   End
   Begin Timer UpdateTimer
      Enabled         =   True
      Index           =   -2147483648
      LockedInPosition=   False
      Period          =   500
      RunMode         =   0
      Scope           =   0
      TabPanelIndex   =   0
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Property, Flags = &h0
		esp32Folder As FolderItem
	#tag EndProperty


	#tag Constant, Name = Boards_TXT, Type = String, Dynamic = False, Default = \"\n# RAKwireless RAK11200\nWisCore_RAK11200_Board.name\x3DWisBlock Core RAK11200\nWisCore_RAK11200_Board.upload.tool\x3Desptool_py\nWisCore_RAK11200_Board.upload.maximum_size\x3D1310720\nWisCore_RAK11200_Board.upload.maximum_data_size\x3D327680\nWisCore_RAK11200_Board.upload.flags\x3D\nWisCore_RAK11200_Board.upload.extra_flags\x3D\nWisCore_RAK11200_Board.serial.disableDTR\x3Dtrue\nWisCore_RAK11200_Board.serial.disableRTS\x3Dtrue\nWisCore_RAK11200_Board.build.tarch\x3Dxtensa\nWisCore_RAK11200_Board.build.bootloader_addr\x3D0x1000\nWisCore_RAK11200_Board.build.target\x3Desp32\nWisCore_RAK11200_Board.build.mcu\x3Desp32\nWisCore_RAK11200_Board.build.core\x3Desp32\nWisCore_RAK11200_Board.build.variant\x3DWisCore_RAK11200_Board\nWisCore_RAK11200_Board.build.board\x3DESP32_DEV\nWisCore_RAK11200_Board.build.f_cpu\x3D240000000L\nWisCore_RAK11200_Board.build.flash_size\x3D4MB\nWisCore_RAK11200_Board.build.flash_freq\x3D40m\nWisCore_RAK11200_Board.build.flash_mode\x3Ddio\nWisCore_RAK11200_Board.build.boot\x3Ddio\nWisCore_RAK11200_Board.build.partitions\x3Ddefault\nWisCore_RAK11200_Board.build.defines\x3D-DBOARD_HAS_PSRAM -mfix-esp32-psram-cache-issue -mfix-esp32-psram-cache-strategy\x3Dmemw\nWisCore_RAK11200_Board.build.extra_libs\x3D\nWisCore_RAK11200_Board.menu.PartitionScheme.default\x3DDefault 4MB with spiffs (1.2MB APP/1.5MB SPIFFS)\nWisCore_RAK11200_Board.menu.PartitionScheme.default.build.partitions\x3Ddefault\nWisCore_RAK11200_Board.menu.PartitionScheme.defaultffat\x3DDefault 4MB with ffat (1.2MB APP/1.5MB FATFS)\nWisCore_RAK11200_Board.menu.PartitionScheme.defaultffat.build.partitions\x3Ddefault_ffat\nWisCore_RAK11200_Board.menu.PartitionScheme.default_8MB\x3D8M Flash (3MB APP/1.5MB FAT)\nWisCore_RAK11200_Board.menu.PartitionScheme.default_8MB.build.partitions\x3Ddefault_8MB\nWisCore_RAK11200_Board.menu.PartitionScheme.minimal\x3DMinimal (1.3MB APP/700KB SPIFFS)\nWisCore_RAK11200_Board.menu.PartitionScheme.minimal.build.partitions\x3Dminimal\nWisCore_RAK11200_Board.menu.PartitionScheme.no_ota\x3DNo OTA (2MB APP/2MB SPIFFS)\nWisCore_RAK11200_Board.menu.PartitionScheme.no_ota.build.partitions\x3Dno_ota\nWisCore_RAK11200_Board.menu.PartitionScheme.no_ota.upload.maximum_size\x3D2097152\nWisCore_RAK11200_Board.menu.PartitionScheme.noota_3g\x3DNo OTA (1MB APP/3MB SPIFFS)\nWisCore_RAK11200_Board.menu.PartitionScheme.noota_3g.build.partitions\x3Dnoota_3g\nWisCore_RAK11200_Board.menu.PartitionScheme.noota_3g.upload.maximum_size\x3D1048576\nWisCore_RAK11200_Board.menu.PartitionScheme.noota_ffat\x3DNo OTA (2MB APP/2MB FATFS)\nWisCore_RAK11200_Board.menu.PartitionScheme.noota_ffat.build.partitions\x3Dnoota_ffat\nWisCore_RAK11200_Board.menu.PartitionScheme.noota_3gffat\x3DNo OTA (1MB APP/3MB FATFS)\nWisCore_RAK11200_Board.menu.PartitionScheme.noota_3gffat.build.partitions\x3Dnoota_3gffat\nWisCore_RAK11200_Board.menu.PartitionScheme.noota_3gffat.upload.maximum_size\x3D1048576\nWisCore_RAK11200_Board.menu.PartitionScheme.huge_app\x3DHuge APP (3MB No OTA/1MB SPIFFS)\nWisCore_RAK11200_Board.menu.PartitionScheme.huge_app.build.partitions\x3Dhuge_app\nWisCore_RAK11200_Board.menu.PartitionScheme.huge_app.upload.maximum_size\x3D3145728\nWisCore_RAK11200_Board.menu.PartitionScheme.min_spiffs\x3DMinimal SPIFFS (1.9MB APP with OTA/190KB SPIFFS)\nWisCore_RAK11200_Board.menu.PartitionScheme.min_spiffs.build.partitions\x3Dmin_spiffs\nWisCore_RAK11200_Board.menu.PartitionScheme.min_spiffs.upload.maximum_size\x3D1966080\nWisCore_RAK11200_Board.menu.PartitionScheme.fatflash\x3D16M Flash (2MB APP/12.5MB FAT)\nWisCore_RAK11200_Board.menu.PartitionScheme.fatflash.build.partitions\x3Dffat\nWisCore_RAK11200_Board.menu.FlashMode.qio\x3DQIO\nWisCore_RAK11200_Board.menu.FlashMode.qio.build.flash_mode\x3Ddio\nWisCore_RAK11200_Board.menu.FlashMode.qio.build.boot\x3Dqio\nWisCore_RAK11200_Board.menu.FlashMode.dio\x3DDIO\nWisCore_RAK11200_Board.menu.FlashMode.dio.build.flash_mode\x3Ddio\nWisCore_RAK11200_Board.menu.FlashMode.dio.build.boot\x3Ddio\nWisCore_RAK11200_Board.menu.FlashMode.qout\x3DQOUT\nWisCore_RAK11200_Board.menu.FlashMode.qout.build.flash_mode\x3Ddout\nWisCore_RAK11200_Board.menu.FlashMode.qout.build.boot\x3Dqout\nWisCore_RAK11200_Board.menu.FlashMode.dout\x3DDOUT\nWisCore_RAK11200_Board.menu.FlashMode.dout.build.flash_mode\x3Ddout\nWisCore_RAK11200_Board.menu.FlashMode.dout.build.boot\x3Ddout\nWisCore_RAK11200_Board.menu.FlashFreq.80\x3D80MHz\nWisCore_RAK11200_Board.menu.FlashFreq.80.build.flash_freq\x3D80m\nWisCore_RAK11200_Board.menu.FlashFreq.40\x3D40MHz\nWisCore_RAK11200_Board.menu.FlashFreq.40.build.flash_freq\x3D40m\nWisCore_RAK11200_Board.menu.UploadSpeed.921600\x3D921600\nWisCore_RAK11200_Board.menu.UploadSpeed.921600.upload.speed\x3D921600\nWisCore_RAK11200_Board.menu.UploadSpeed.115200\x3D115200\nWisCore_RAK11200_Board.menu.UploadSpeed.115200.upload.speed\x3D115200\nWisCore_RAK11200_Board.menu.UploadSpeed.256000.windows\x3D256000\nWisCore_RAK11200_Board.menu.UploadSpeed.256000.upload.speed\x3D256000\nWisCore_RAK11200_Board.menu.UploadSpeed.230400.windows.upload.speed\x3D256000\nWisCore_RAK11200_Board.menu.UploadSpeed.230400\x3D230400\nWisCore_RAK11200_Board.menu.UploadSpeed.230400.upload.speed\x3D230400\nWisCore_RAK11200_Board.menu.UploadSpeed.460800.linux\x3D460800\nWisCore_RAK11200_Board.menu.UploadSpeed.460800.macosx\x3D460800\nWisCore_RAK11200_Board.menu.UploadSpeed.460800.upload.speed\x3D460800\nWisCore_RAK11200_Board.menu.UploadSpeed.512000.windows\x3D512000\nWisCore_RAK11200_Board.menu.UploadSpeed.512000.upload.speed\x3D512000\nWisCore_RAK11200_Board.menu.DebugLevel.none\x3DNone\nWisCore_RAK11200_Board.menu.DebugLevel.none.build.code_debug\x3D0\nWisCore_RAK11200_Board.menu.DebugLevel.error\x3DError\nWisCore_RAK11200_Board.menu.DebugLevel.error.build.code_debug\x3D1\nWisCore_RAK11200_Board.menu.DebugLevel.warn\x3DWarn\nWisCore_RAK11200_Board.menu.DebugLevel.warn.build.code_debug\x3D2\nWisCore_RAK11200_Board.menu.DebugLevel.info\x3DInfo\nWisCore_RAK11200_Board.menu.DebugLevel.info.build.code_debug\x3D3\nWisCore_RAK11200_Board.menu.DebugLevel.debug\x3DDebug\nWisCore_RAK11200_Board.menu.DebugLevel.debug.build.code_debug\x3D4\nWisCore_RAK11200_Board.menu.DebugLevel.verbose\x3DVerbose\nWisCore_RAK11200_Board.menu.DebugLevel.verbose.build.code_debug\x3D5\n##############################################################\n", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Pins_Arduino_h, Type = String, Dynamic = False, Default = \"#ifndef Pins_Arduino_h\n#define Pins_Arduino_h\n\n#include <stdint.h>\n\n#define EXTERNAL_NUM_INTERRUPTS 16\n#define NUM_DIGITAL_PINS 40\n#define NUM_ANALOG_INPUTS 16\n#define analogInputToDigitalPin(p) (((p) < 20) \? (esp32_adc2gpio[(p)]) : -1)\n#define digitalPinToInterrupt(p) (((p) < 40) \? (p) : -1)\n#define digitalPinHasPWM(p) (p < 34)\n\n#define LED_GREEN 12\n#define GREEN_LED 12\n#define LED_BLUE 2\n#define BLUE_LED 2\n#define LED_BUILTIN LED_GREEN\n\nstatic const uint8_t TX \x3D 1;\nstatic const uint8_t RX \x3D 3;\n#define TX1 21\n#define RX1 19\n#define WB_IO1 14\n#define WB_IO2 27\n#define WB_IO3 26\n#define WB_IO4 23\n#define WB_IO5 13\n#define WB_IO6 22\n#define WB_SW1 34\n#define WB_A0 36\n#define WB_A1 39\n#define WB_CS 32\n#define WB_LED1 12\n#define WB_LED2 2\n\nstatic const uint8_t SDA \x3D 4;\nstatic const uint8_t SCL \x3D 5;\nstatic const uint8_t SS \x3D 32;\nstatic const uint8_t MOSI \x3D 25;\nstatic const uint8_t MISO \x3D 35;\nstatic const uint8_t SCK \x3D 33;\n\n#endif /* Pins_Arduino_h */\n", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Variants_Subfolder, Type = , Dynamic = False, Default = \"WisCore_RAK11200_Board", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Pressed()
		  esp32Folder = Folderitem.ShowSelectFolderDialog
		  If esp32Folder = Nil Then
		    MessageBox "Warning!"+EndOfLine+EndOfLine+"No folder was selected!"
		    Return
		  End If
		  
		  tfFolderPath.Text=esp32Folder.ShellPath
		  If InstallThread.State = Thread.NotRunning Then
		    lbLogs.RemoveAllRows()
		    lbLogs.AddRow "Starting Thread"
		    InstallThread.Run()
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas1
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  Return
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events InstallThread
	#tag Event
		Sub UserInterfaceUpdate(data() as Dictionary)
		  For Each update As Dictionary In data
		    If update.HasKey("lbLogs") Then
		      lbLogs.AddRow update.Value("lbLogs").StringValue
		    End If
		  Next
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Run()
		  Me.AddUserInterfaceUpdate("lbLogs":"Starting timer...")
		  UpdateTimer.Period = 500
		  UpdateTimer.Mode = Timer.ModeMultiple
		  UpdateTimer.Enabled = True
		  
		  Me.AddUserInterfaceUpdate("lbLogs":" • Checking the Espressif folder...")
		  
		  Dim boards As FolderItem
		  boards=esp32Folder.Child("boards.txt")
		  Me.AddUserInterfaceUpdate("lbLogs":" • Checking for boards.txt.")
		  If boards.Exists Then
		    Me.AddUserInterfaceUpdate("lbLogs":"  ☑️ Exists.")
		  Else
		    Me.AddUserInterfaceUpdate("lbLogs":"  ⚠️ Missing boards.txt file. Is it really the right folder?")
		    Return
		  End If
		  
		  Dim variants As FolderItem
		  variants=esp32Folder.Child("variants")
		  Me.AddUserInterfaceUpdate("lbLogs":" • Checking for variants subfolder.")
		  If variants.Exists And variants.IsFolder Then
		    Me.AddUserInterfaceUpdate("lbLogs":"  ☑️ Exists and is a folder.")
		  ElseIf variants.Exists And Not variants.IsFolder Then
		    Me.AddUserInterfaceUpdate("lbLogs":"  ⚠️ Exists but is not a folder. Bailing...")
		    Return
		  Else
		    Me.AddUserInterfaceUpdate("lbLogs":"  ⚠️ Missing variants folder. Is it really the right folder?")
		    Return
		  End If
		  
		  Dim variantFolder As FolderItem
		  variantFolder=variants.Child("WisCore_RAK11200_Board")
		  Me.AddUserInterfaceUpdate("lbLogs":" • Checking for WisCore_RAK11200_Board subfolder.")
		  If variantFolder.Exists And variantFolder.IsFolder Then
		    Me.AddUserInterfaceUpdate("lbLogs":"  ⚠️ Exists and is a folder. Hmmm...")
		    'Return
		  ElseIf variantFolder.Exists And Not variantFolder.IsFolder Then
		    Me.AddUserInterfaceUpdate("lbLogs":"  ⚠️ Exists and is not a folder. Bailing...")
		    Return
		  Else
		    Me.AddUserInterfaceUpdate("lbLogs":"  ☑️ Folder does not exist.")
		  End If
		  If Not variantFolder.Exists Then variantFolder.CreateFolder()
		  
		  Dim variantFile As FolderItem
		  variantFile=variantFolder.Child("pins_arduino.h")
		  Me.AddUserInterfaceUpdate("lbLogs":" • Checking for WisCore_RAK11200_Board/pins_arduino.h.")
		  If variantFile.Exists And variantFile.IsFolder Then
		    Me.AddUserInterfaceUpdate("lbLogs":"  ⚠️ Exists and is a folder. Bailing...")
		    Return
		  ElseIf variantFile.Exists And Not variantFile.IsFolder Then
		    Me.AddUserInterfaceUpdate("lbLogs":"  ⚠️ Exists and is a file. Bailing...")
		    Return
		  Else
		    Me.AddUserInterfaceUpdate("lbLogs":"  ☑️ File does not exist.")
		  End If
		  
		  Me.AddUserInterfaceUpdate("lbLogs":" • Checking the boards.txt file for presence of the RAK11200 definition")
		  Dim tis As TextInputStream
		  tis = TextInputStream.Open(boards)
		  Dim s As String
		  
		  s = tis.ReadAll()
		  tis.Close()
		  tis = Nil
		  If s.IndexOfBytes("WisCore_RAK11200_Board.name=")>-1 Then
		    Me.AddUserInterfaceUpdate("lbLogs":"  ⚠️ The board definition already exists!")
		    Return
		  End If
		  
		  Dim g As FolderItem
		  g = esp32Folder.Child("boards.txt.bak")
		  Dim tos As TextOutputStream
		  Me.AddUserInterfaceUpdate("lbLogs":" • Backing up board definition.")
		  tos = TextOutputStream.Create(g)
		  tos.Delimiter=EndOfLine.UNIX
		  tos.WriteLine s
		  tos.Close()
		  tos = Nil
		  Me.AddUserInterfaceUpdate("lbLogs":"  ☑️ "+g.Name+" created.")
		  
		  Me.AddUserInterfaceUpdate("lbLogs":" • Adding Wisblock RAK11200 board definition.")
		  boards.Remove()
		  tos = TextOutputStream.Create(boards)
		  tos.Delimiter=EndOfLine.UNIX
		  tos.WriteLine s
		  tos.WriteLine Boards_TXT
		  tos.Close()
		  tos = Nil
		  Me.AddUserInterfaceUpdate("lbLogs":"  ☑️ "+boards.Name+" amended.")
		  
		  Me.AddUserInterfaceUpdate("lbLogs":" • Adding Wisblock RAK11200 variant.")
		  tos = TextOutputStream.Create(variantFile)
		  tos.Delimiter=EndOfLine.UNIX
		  tos.WriteLine Pins_Arduino_h
		  tos.Close()
		  tos = Nil
		  Me.AddUserInterfaceUpdate("lbLogs":"  ☑️ "+variantFile.Name+" created.")
		  Me.AddUserInterfaceUpdate("lbLogs":"Done!")
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UpdateTimer
	#tag Event
		Sub Action()
		  If InstallThread.State = Thread.NotRunning Then
		    lbLogs.AddRow "Thread terminated!"
		    me.RunMode=Timer.RunModes.Off
		  Else
		    InstallThread.AddUserInterfaceUpdate()
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Windows Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
