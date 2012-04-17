.class public Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
.super Ljava/lang/Object;
.source "VerifyDeviceResponseVO.java"


# instance fields
.field private mEndpointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorBundle:Landroid/os/Bundle;

.field private mIsRegistered:Z

.field private mUserEndpointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->mErrorBundle:Landroid/os/Bundle;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->mEndpointList:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->mUserEndpointList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getEndpointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->mEndpointList:Ljava/util/List;

    return-object v0
.end method

.method public getErrorBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getUserEndpointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->mUserEndpointList:Ljava/util/List;

    return-object v0
.end method

.method public final isRegistered()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->mIsRegistered:Z

    return v0
.end method

.method public final setEndpointList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, endpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->mEndpointList:Ljava/util/List;

    .line 24
    return-void
.end method

.method public setErrorBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "errorBundle"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->mErrorBundle:Landroid/os/Bundle;

    .line 48
    return-void
.end method

.method public final setRegistered(Z)V
    .locals 0
    .parameter "isRegistered"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->mIsRegistered:Z

    .line 40
    return-void
.end method

.method public final setUserEndpointList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, userEndpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->mUserEndpointList:Ljava/util/List;

    .line 32
    return-void
.end method
