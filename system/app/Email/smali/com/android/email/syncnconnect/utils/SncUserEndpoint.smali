.class public Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
.super Ljava/lang/Object;
.source "SncUserEndpoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mDefaultFlag:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mDisplayOrder:Ljava/lang/String;

.field private mEndpointId:Ljava/lang/String;

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

.field private mUserEndpointId:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint$1;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint$1;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mUserName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mUserEndpointId:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mProvider:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mEndpointId:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDisplayOrder:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDefaultFlag:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mAccountName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDisplayName:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mSncServiceList:Ljava/util/List;

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mUserName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mUserEndpointId:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mProvider:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mEndpointId:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDisplayOrder:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDefaultFlag:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mAccountName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDisplayName:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mSncServiceList:Ljava/util/List;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDefaultFlag:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDisplayOrder:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mEndpointId:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mProvider:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mUserEndpointId:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mUserName:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mAccountName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDisplayName:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mSncServiceList:Ljava/util/List;

    sget-object v1, Lcom/android/email/syncnconnect/utils/SncService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 149
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDefaultFlag:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDisplayOrder:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndpointId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mEndpointId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mProvider:Ljava/lang/String;

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
    .line 51
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mSncServiceList:Ljava/util/List;

    return-object v0
.end method

.method public final getUserEndpointId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mUserEndpointId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccountName(Ljava/lang/String;)V
    .locals 0
    .parameter "accountName"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mAccountName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final setDefaultFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultFlag"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDefaultFlag:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDisplayName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public final setDisplayOrder(Ljava/lang/String;)V
    .locals 0
    .parameter "displayOrder"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDisplayOrder:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public final setEndpointId(Ljava/lang/String;)V
    .locals 0
    .parameter "endpointId"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mEndpointId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mProvider:Ljava/lang/String;

    .line 32
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
    .line 47
    .local p1, sncServiceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mSncServiceList:Ljava/util/List;

    .line 48
    return-void
.end method

.method public final setUserEndpointId(Ljava/lang/String;)V
    .locals 0
    .parameter "userEndpointId"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mUserEndpointId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public final setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mUserName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDefaultFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDisplayOrder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mEndpointId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mUserEndpointId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->mSncServiceList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 116
    return-void
.end method
