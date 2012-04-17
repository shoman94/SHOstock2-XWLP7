.class public Lcom/android/email/esp/ProviderDummy;
.super Lcom/android/email/esp/AbstractProvider;
.source "ProviderDummy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ProviderDummy"

    sput-object v0, Lcom/android/email/esp/ProviderDummy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/android/email/esp/AbstractProvider;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/android/email/esp/AbstractProvider;->mDefaultAccountName:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/android/email/esp/AbstractProvider;->mAccountProviderName:Ljava/lang/String;

    .line 21
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderId:I

    .line 22
    iput-object v1, p0, Lcom/android/email/esp/AbstractProvider;->mProviderName:Ljava/lang/String;

    .line 25
    const v0, 0x7f080560

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderStringResId:I

    .line 26
    const v0, 0x7f0202a4

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mNotificationIcon:I

    .line 27
    const v0, 0x7f020146

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTitleButtonIcon:I

    .line 28
    const v0, 0x7f0202d1

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderImage:I

    .line 29
    const v0, 0x7f0202d2

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderCheckImage:I

    .line 30
    const v0, 0x7f0202de

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTabIcon:I

    .line 32
    iput-object v1, p0, Lcom/android/email/esp/AbstractProvider;->mDomainList:[Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/android/email/esp/AbstractProvider;->mServiceList:[Ljava/lang/String;

    .line 34
    return-void
.end method
