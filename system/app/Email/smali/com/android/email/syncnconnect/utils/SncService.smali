.class public Lcom/android/email/syncnconnect/utils/SncService;
.super Ljava/lang/Object;
.source "SncService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsNotified:Ljava/lang/String;

.field private mServiceId:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncService$1;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncService$1;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SncService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mIsNotified:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mIsNotified:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mIsNotified:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceId:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serviceId"
    .parameter "serviceName"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mIsNotified:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceId:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceName:Ljava/lang/String;

    .line 80
    const-string v0, "N"

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mIsNotified:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public final getIsNotified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mIsNotified:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public final setIsNotified(Ljava/lang/String;)V
    .locals 0
    .parameter "isNotified"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncService;->mIsNotified:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public final setServiceId(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceId"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceId:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public final setServiceName(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mIsNotified:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncService;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return-void
.end method
