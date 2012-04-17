.class public Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;
.super Ljava/lang/Object;
.source "GetProfileResponseVO.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    .line 12
    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getErrorBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSncProfile()Lcom/android/email/syncnconnect/utils/SncProfile;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    return-object v0
.end method

.method public setErrorBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "errorBundle"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->mErrorBundle:Landroid/os/Bundle;

    .line 16
    return-void
.end method

.method public setSncProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 0
    .parameter "sncProfile"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    .line 24
    return-void
.end method
