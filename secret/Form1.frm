VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "fantastica"
   ClientHeight    =   6975
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6705
   LinkTopic       =   "Form1"
   ScaleHeight     =   6975
   ScaleWidth      =   6705
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command12 
      Caption         =   "Command12"
      Height          =   1095
      Left            =   480
      TabIndex        =   14
      Top             =   3480
      Width           =   1095
   End
   Begin VB.CommandButton Command11 
      Caption         =   "undo"
      Height          =   375
      Left            =   120
      TabIndex        =   13
      Top             =   480
      Width           =   1335
   End
   Begin VB.CommandButton Command10 
      Caption         =   "Command10"
      Height          =   495
      Left            =   720
      TabIndex        =   10
      Top             =   1440
      Width           =   1335
   End
   Begin VB.CommandButton Command9 
      Caption         =   "disable buttons"
      Height          =   615
      Left            =   1920
      TabIndex        =   9
      Top             =   5880
      Width           =   2295
   End
   Begin VB.CommandButton Command8 
      Caption         =   "convert each cmd button to option"
      Height          =   615
      Left            =   1920
      TabIndex        =   8
      Top             =   5160
      Width           =   2295
   End
   Begin VB.CommandButton Command7 
      Caption         =   "convert each cmd button to not visible"
      Height          =   615
      Left            =   1920
      TabIndex        =   7
      Top             =   4440
      Width           =   2295
   End
   Begin VB.CommandButton Command6 
      Caption         =   "convert each cmd button to label"
      Height          =   615
      Left            =   1920
      TabIndex        =   6
      Top             =   3720
      Width           =   2295
   End
   Begin VB.CommandButton Command5 
      Caption         =   "cmd1"
      Height          =   615
      Left            =   1320
      TabIndex        =   5
      Top             =   1920
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "convert each cmd button to check box"
      Height          =   615
      Left            =   1920
      TabIndex        =   4
      Top             =   3000
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Minimize"
      Height          =   495
      Left            =   4200
      TabIndex        =   3
      Top             =   960
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "cmd1"
      Height          =   615
      Left            =   1920
      TabIndex        =   2
      Top             =   1440
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Maximize"
      Height          =   495
      Left            =   4200
      TabIndex        =   1
      Top             =   1440
      Width           =   1335
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   2160
      TabIndex        =   0
      Text            =   "Combo1"
      Top             =   480
      Width           =   3255
   End
   Begin VB.Line Line9 
      X1              =   4200
      X2              =   4920
      Y1              =   5400
      Y2              =   4560
   End
   Begin VB.Line Line8 
      X1              =   4200
      X2              =   4920
      Y1              =   4080
      Y2              =   4560
   End
   Begin VB.Line Line7 
      X1              =   4200
      X2              =   4920
      Y1              =   4680
      Y2              =   4560
   End
   Begin VB.Line Line6 
      X1              =   4200
      X2              =   4920
      Y1              =   6240
      Y2              =   4560
   End
   Begin VB.Line Line5 
      X1              =   4920
      X2              =   4200
      Y1              =   4560
      Y2              =   3360
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H0000FFFF&
      Caption         =   "click here to see the magic"
      Height          =   375
      Left            =   4920
      TabIndex        =   12
      Top             =   4320
      Width           =   1455
   End
   Begin VB.Line Line4 
      X1              =   5520
      X2              =   5280
      Y1              =   2040
      Y2              =   2040
   End
   Begin VB.Line Line3 
      X1              =   5520
      X2              =   5400
      Y1              =   1920
      Y2              =   1920
   End
   Begin VB.Line Line2 
      X1              =   5280
      X2              =   5280
      Y1              =   2160
      Y2              =   2040
   End
   Begin VB.Line Line1 
      X1              =   6120
      X2              =   5280
      Y1              =   2400
      Y2              =   2040
   End
   Begin VB.Label Label1 
      BackColor       =   &H0000FFFF&
      Caption         =   "click here"
      Height          =   375
      Left            =   5040
      TabIndex        =   11
      Top             =   2400
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function ShowWindow Lib "user32" (ByVal hwnd As Long, ByVal nCmdShow As Long) As Long
 Const BM_SETSTATE = &HF3

Private Const BS_RADIOBUTTON = &H4&

Private Const WM_SHOWWINDOW = &H18
Dim ss() As String
Private Const BM_SETSTYLE = &HF4
Private Sub Command1_Click()
ShowWindow Combo1.hwnd, 3

End Sub

Private Sub Command10_Click() 'xxx
End Sub

Private Sub Command11_Click()
For i = 1 To 10

SendMessage Me("command" & i).hwnd, BM_SETSTYLE, 1, 0

Next
End Sub

Private Sub Command12_Click()

For i = 1 To 10

SendMessage Me("command" & i).hwnd, BM_SETSTYLE, BS_RADIOBUTTON, 0

Next





End Sub

Private Sub Command3_Click()
ShowWindow Combo1.hwnd, 2


End Sub

Private Sub Command4_Click()
For i = 1 To 10

SendMessage Me("command" & i).hwnd, &H100, 0, 0

Next
End Sub

Private Sub Command6_Click()
For i = 1 To 10
SendMessage Me("command" & i).hwnd, BM_SETSTYLE, 10, 0
Next
End Sub

Private Sub Command7_Click()
For i = 1 To 10
SendMessage Me("command" & i).hwnd, BM_SETSTYLE, 15, 0
Next
End Sub

Private Sub Command8_Click()
For i = 1 To 10
SendMessage Me("command" & i).hwnd, BM_SETSTYLE, 20, 0
Next
End Sub

Private Sub Command9_Click()
For i = 1 To 10
SendMessage Me("command" & i).hwnd, BM_SETSTYLE, 7, 0

Next


End Sub

