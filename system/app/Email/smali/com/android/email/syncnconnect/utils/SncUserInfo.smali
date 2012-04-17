.class public Lcom/android/email/syncnconnect/utils/SncUserInfo;
.super Ljava/lang/Object;
.source "SncUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mEndpointId:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

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
    .line 111
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncUserInfo$1;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo$1;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mPassword:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mAccountName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mDisplayName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserEndpointId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mProvider:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mEndpointId:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mSncServiceList:Ljava/util/List;

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mPassword:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mAccountName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mDisplayName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserEndpointId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mProvider:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mEndpointId:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mSncServiceList:Ljava/util/List;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserName:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mPassword:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mEndpointId:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mProvider:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserEndpointId:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mAccountName:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mDisplayName:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mSncServiceList:Ljava/util/List;

    sget-object v1, Lcom/android/email/syncnconnect/utils/SncService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 138
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndpointId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mEndpointId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mProvider:Ljava/lang/String;

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
    .line 105
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mSncServiceList:Ljava/util/List;

    return-object v0
.end method

.method public final getUserEndpointId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserEndpointId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccountName(Ljava/lang/String;)V
    .locals 0
    .parameter "accountName"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mAccountName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mDisplayName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public final setEndpointId(Ljava/lang/String;)V
    .locals 0
    .parameter "mEndpointId"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mEndpointId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mPassword:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mProvider:Ljava/lang/String;

    .line 86
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
    .line 101
    .local p1, sncServiceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mSncServiceList:Ljava/util/List;

    .line 102
    return-void
.end method

.method public final setUserEndpointId(Ljava/lang/String;)V
    .locals 0
    .parameter "userEndpointId"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserEndpointId:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public final setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mEndpointId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserEndpointId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mSncServiceList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 42
    return-void
.end method
