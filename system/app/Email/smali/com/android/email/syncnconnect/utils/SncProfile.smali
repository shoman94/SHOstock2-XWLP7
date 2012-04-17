.class public Lcom/android/email/syncnconnect/utils/SncProfile;
.super Ljava/lang/Object;
.source "SncProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExchangeABSyncFlag:Z

.field private mExchangeCalSyncFlag:Z

.field private mExchangeDaysToSync:I

.field private mExchangeDomain:Ljava/lang/String;

.field private mExchangeDownloadPastEmail:Ljava/lang/String;

.field private mExchangeEmail:Ljava/lang/String;

.field private mExchangeFetchFreq:I

.field private mExchangeIncludeFileAttachment:Ljava/lang/String;

.field private mExchangeMailSize:Ljava/lang/String;

.field private mExchangeMailSyncFlag:Z

.field private mExchangeMessageFormat:Ljava/lang/String;

.field private mExchangeNickName:Ljava/lang/String;

.field private mExchangeSecureFlag:Z

.field private mExchangeServer:Ljava/lang/String;

.field private mExchangeUpdateSchedule:Ljava/lang/String;

.field private mExchangeUser:Ljava/lang/String;

.field private mExchangeVerifyCertFlag:Z

.field private mFirstName:Ljava/lang/String;

.field private mLastName:Ljava/lang/String;

.field private mSncPushNotificationEndDate:Ljava/lang/String;

.field private mSncPushNotificationStartDate:Ljava/lang/String;

.field private mSncSyncNotificationEndTime:I

.field private mSncSyncNotificationStartTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncProfile$1;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncProfile$1;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SncProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 307
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mFirstName:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mLastName:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeABSyncFlag:Z

    .line 15
    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeCalSyncFlag:Z

    .line 17
    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDaysToSync:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDomain:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeEmail:Ljava/lang/String;

    .line 23
    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeFetchFreq:I

    .line 25
    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSyncFlag:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeNickName:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeSecureFlag:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeServer:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUser:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeVerifyCertFlag:Z

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSize:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMessageFormat:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUpdateSchedule:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDownloadPastEmail:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeIncludeFileAttachment:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationStartDate:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationEndDate:Ljava/lang/String;

    .line 51
    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationStartTime:I

    .line 53
    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationEndTime:I

    .line 308
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 283
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mFirstName:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mLastName:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeABSyncFlag:Z

    .line 15
    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeCalSyncFlag:Z

    .line 17
    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDaysToSync:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDomain:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeEmail:Ljava/lang/String;

    .line 23
    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeFetchFreq:I

    .line 25
    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSyncFlag:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeNickName:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeSecureFlag:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeServer:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUser:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeVerifyCertFlag:Z

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSize:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMessageFormat:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUpdateSchedule:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDownloadPastEmail:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeIncludeFileAttachment:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationStartDate:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationEndDate:Ljava/lang/String;

    .line 51
    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationStartTime:I

    .line 53
    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationEndTime:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mFirstName:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mLastName:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDaysToSync:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDomain:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeEmail:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeFetchFreq:I

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeNickName:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeServer:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUser:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSize:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMessageFormat:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUpdateSchedule:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDownloadPastEmail:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeIncludeFileAttachment:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationStartDate:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationEndDate:Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationStartTime:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationEndTime:I

    .line 305
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public getExchangeABSyncFlag()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeABSyncFlag:Z

    return v0
.end method

.method public getExchangeCalSyncFlag()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeCalSyncFlag:Z

    return v0
.end method

.method public getExchangeDaysToSync()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDaysToSync:I

    return v0
.end method

.method public getExchangeDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeDownloadPastEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDownloadPastEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeFetchFreq()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeFetchFreq:I

    return v0
.end method

.method public getExchangeIncludeFileAttachment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeIncludeFileAttachment:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeMailSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSize:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeMailSyncFlag()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSyncFlag:Z

    return v0
.end method

.method public getExchangeMessageFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMessageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeSecureFlag()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeSecureFlag:Z

    return v0
.end method

.method public getExchangeServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeServer:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeUpdateSchedule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUpdateSchedule:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUser:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeVerifyCertFlag()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeVerifyCertFlag:Z

    return v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getSncPushNotificationEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationEndDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSncPushNotificationStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationStartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSncSyncNotificationEndTime()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationEndTime:I

    return v0
.end method

.method public getSncSyncNotificationStartTime()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationStartTime:I

    return v0
.end method

.method public setExchangeABSyncFlag(Z)V
    .locals 0
    .parameter "exchangeABSyncFlag"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeABSyncFlag:Z

    .line 73
    return-void
.end method

.method public setExchangeCalSyncFlag(Z)V
    .locals 0
    .parameter "exchangeCalSyncFlag"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeCalSyncFlag:Z

    .line 81
    return-void
.end method

.method public setExchangeDaysToSync(I)V
    .locals 0
    .parameter "exchangeDaysToSync"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDaysToSync:I

    .line 89
    return-void
.end method

.method public setExchangeDomain(Ljava/lang/String;)V
    .locals 0
    .parameter "exchangeDomain"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDomain:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setExchangeDownloadPastEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "exchangeDownloadPastEmail"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDownloadPastEmail:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setExchangeEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "exchangeEmail"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeEmail:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setExchangeFetchFreq(I)V
    .locals 0
    .parameter "exchangeFetchFreq"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeFetchFreq:I

    .line 113
    return-void
.end method

.method public setExchangeIncludeFileAttachment(Ljava/lang/String;)V
    .locals 0
    .parameter "exchangeIncludeFileAttachment"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeIncludeFileAttachment:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setExchangeMailSize(Ljava/lang/String;)V
    .locals 0
    .parameter "exchangeMailSize"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSize:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setExchangeMailSyncFlag(Z)V
    .locals 0
    .parameter "exchangeMailSyncFlag"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSyncFlag:Z

    .line 121
    return-void
.end method

.method public setExchangeMessageFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "exchangeMessageFormat"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMessageFormat:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setExchangeNickName(Ljava/lang/String;)V
    .locals 0
    .parameter "exchangeNickName"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeNickName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setExchangeSecureFlag(Z)V
    .locals 0
    .parameter "exchangeSecureFlag"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeSecureFlag:Z

    .line 137
    return-void
.end method

.method public setExchangeServer(Ljava/lang/String;)V
    .locals 0
    .parameter "exchangeServer"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeServer:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setExchangeUpdateSchedule(Ljava/lang/String;)V
    .locals 0
    .parameter "exchangeUpdateSchedule"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUpdateSchedule:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setExchangeUser(Ljava/lang/String;)V
    .locals 0
    .parameter "exchangeUser"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUser:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setExchangeVerifyCertFlag(Z)V
    .locals 0
    .parameter "exchangeVerifyCertFlag"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeVerifyCertFlag:Z

    .line 161
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .parameter "firstName"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mFirstName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .parameter "lastName"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mLastName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSncPushNotificationEndDate(Ljava/lang/String;)V
    .locals 0
    .parameter "sncPushNotificationEndDate"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationEndDate:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setSncPushNotificationStartDate(Ljava/lang/String;)V
    .locals 0
    .parameter "sncPushNotificationStartDate"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationStartDate:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setSncSyncNotificationEndTime(I)V
    .locals 0
    .parameter "sncSyncNotificationEndTime"

    .prologue
    .line 232
    iput p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationEndTime:I

    .line 233
    return-void
.end method

.method public setSncSyncNotificationStartTime(I)V
    .locals 0
    .parameter "sncSyncNotificationStartTime"

    .prologue
    .line 224
    iput p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationStartTime:I

    .line 225
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDaysToSync:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeFetchFreq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMessageFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUpdateSchedule:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDownloadPastEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeIncludeFileAttachment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationStartDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationEndDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationStartTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationEndTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    return-void
.end method
