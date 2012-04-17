.class public Lcom/android/email/syncnconnect/utils/SncServiceInfo;
.super Ljava/lang/Object;
.source "SncServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mJobId:Ljava/lang/String;

.field private mOperationId:Ljava/lang/String;

.field private mProviderId:Ljava/lang/String;

.field private mProviderSrvcDetailsId:Ljava/lang/String;

.field private mReqUserEmail:Ljava/lang/String;

.field private mReturnCode:Ljava/lang/String;

.field private mServiceId:Ljava/lang/String;

.field private mSourceProviderId:Ljava/lang/String;

.field private mUserEndpointId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncServiceInfo$1;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncServiceInfo$1;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mJobId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mOperationId:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderId:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderSrvcDetailsId:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReqUserEmail:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReturnCode:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mServiceId:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mSourceProviderId:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mUserEndpointId:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mJobId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mOperationId:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderId:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderSrvcDetailsId:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReqUserEmail:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReturnCode:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mServiceId:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mSourceProviderId:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mUserEndpointId:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mJobId:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mOperationId:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderId:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderSrvcDetailsId:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReqUserEmail:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReturnCode:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mServiceId:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mSourceProviderId:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mUserEndpointId:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public setJobId(Ljava/lang/String;)V
    .locals 0
    .parameter "jobId"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mJobId:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setOperationId(Ljava/lang/String;)V
    .locals 0
    .parameter "operationId"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mOperationId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setProviderId(Ljava/lang/String;)V
    .locals 0
    .parameter "providerId"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setProviderSrvcDetailsId(Ljava/lang/String;)V
    .locals 0
    .parameter "providerSrvcDetailsId"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderSrvcDetailsId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setReqUserEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "reqUserEmail"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReqUserEmail:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setReturnCode(Ljava/lang/String;)V
    .locals 0
    .parameter "returnCode"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReturnCode:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceId"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mServiceId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setSourceProviderId(Ljava/lang/String;)V
    .locals 0
    .parameter "sourceProviderId"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mSourceProviderId:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setUserEndpointId(Ljava/lang/String;)V
    .locals 0
    .parameter "userEndpointId"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mUserEndpointId:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mJobId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mOperationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderSrvcDetailsId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReqUserEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReturnCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mSourceProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mUserEndpointId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return-void
.end method
