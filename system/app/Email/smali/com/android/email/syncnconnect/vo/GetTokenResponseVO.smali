.class public Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;
.super Ljava/lang/Object;
.source "GetTokenResponseVO.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mExpiryDate:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mToken:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mExpiryDate:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getErrorBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "errorBundle"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mErrorBundle:Landroid/os/Bundle;

    .line 32
    return-void
.end method

.method public final setExpiryDate(Ljava/lang/String;)V
    .locals 0
    .parameter "expiryDate"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mExpiryDate:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mToken:Ljava/lang/String;

    .line 16
    return-void
.end method
