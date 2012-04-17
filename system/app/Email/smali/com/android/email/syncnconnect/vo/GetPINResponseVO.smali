.class public Lcom/android/email/syncnconnect/vo/GetPINResponseVO;
.super Ljava/lang/Object;
.source "GetPINResponseVO.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mPIN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->mPIN:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getErrorBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getPIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->mPIN:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "errorBundle"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->mErrorBundle:Landroid/os/Bundle;

    .line 22
    return-void
.end method

.method public final setPIN(Ljava/lang/String;)V
    .locals 0
    .parameter "PIN"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->mPIN:Ljava/lang/String;

    .line 14
    return-void
.end method
