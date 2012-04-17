.class public Lcom/android/email/syncnconnect/utils/SncEndpoint;
.super Ljava/lang/Object;
.source "SncEndpoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEndpointId:Ljava/lang/String;

.field private mEndpointName:Ljava/lang/String;

.field private mProvider:Ljava/lang/String;

.field private mSncServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncEndpoint$1;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint$1;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mProvider:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mEndpointName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mEndpointId:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mSncServiceList:Ljava/util/List;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mProvider:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mEndpointName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mEndpointId:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mSncServiceList:Ljava/util/List;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mEndpointId:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mEndpointName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mProvider:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mSncServiceList:Ljava/util/List;

    sget-object v1, Lcom/android/email/syncnconnect/utils/SncService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 91
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public final getEndpointId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mEndpointId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndpointName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mEndpointName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public final getSncServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mSncServiceList:Ljava/util/List;

    return-object v0
.end method

.method public setEndpointId(Ljava/lang/String;)V
    .locals 0
    .parameter "endpointId"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mEndpointId:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public final setEndpointName(Ljava/lang/String;)V
    .locals 0
    .parameter "endpointName"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mEndpointName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mProvider:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public final setSncServiceList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, sncServiceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mSncServiceList:Ljava/util/List;

    .line 46
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mEndpointId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mEndpointName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncEndpoint;->mSncServiceList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 62
    return-void
.end method
