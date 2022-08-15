unit TypesLib;

interface
  Type
  TFullTest = Record
    Theme : String[255];
    SubTheme : String[255];
    TestsNum : Byte;
    MaxResult : Byte;
  End;

  TFullTestAdr = ^TFullTestDBD;
  TFullTestDBD = Record
    FullTest : TFullTest;
    NextAdr : TFullTestAdr;
  End;

  TTestType = (ttMono, ttMulti, ttStr, ttOrder, ttTask);

  TUserAns = Record
    case TestType : TTestType of
      ttMono: (
        MoAns : Integer;
      );
      ttMulti: (
        MuAns : set of 1..5;
      );
    end;

  TTest = Record
    Level : Byte;
    Quest : String[255];
    case TestType : TTestType of
      ttMono: (
        MoAnsVars : Array [1..5] of String[255];
        MoRightAns : Integer;
      );
      ttMulti: (
        MuAnsVars : Array [1..5] of String[255];
        MuRightAns : set of 1..5;
      );
    end;

  TUserStat = Record
    Theme : String[255];
    SubTheme : String[255];
    Result : Byte;
  End;
  TStatAdr = ^TUserStatEl;
  TUserStatEl = Record
    UserStat : TUserStat;
    NextAdr : TStatAdr;
  End;

  TUserInfo = Record
    UserName : String[30];
    UserPassword : String[20];
  End;

  TPageAdr = ^TPage;
  TStrAdr = ^TStr;
  TPage = Record
    PrevAdr : TPageAdr;
    StrStartAdr : TStrAdr;
    NextAdr : TPageAdr;
  End;
  TStr = Record
    NextAdr : TStrAdr;
    Str : String;
  End;

implementation

end.
