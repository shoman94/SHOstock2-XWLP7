.class public Lcom/android/email/esp/ProviderExchange;
.super Lcom/android/email/esp/AbstractProvider;
.source "ProviderExchange.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mExchangeDomains:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ProviderExchange"

    sput-object v0, Lcom/android/email/esp/ProviderExchange;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/android/email/esp/AbstractProvider;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/android/email/esp/ProviderExchange;->mExchangeDomains:[Ljava/lang/String;

    .line 20
    const-string v0, "Corporate Mail"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDefaultAccountName:Ljava/lang/String;

    .line 21
    const-string v0, "Corporate"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mAccountProviderName:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderId:I

    .line 23
    const-string v0, "Corporate"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderName:Ljava/lang/String;

    .line 25
    const v0, 0x7f08055b

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderStringResId:I

    .line 26
    const v0, 0x7f0202a1

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mNotificationIcon:I

    .line 27
    const v0, 0x7f020143

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTitleButtonIcon:I

    .line 28
    const v0, 0x7f0202ce

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderCheckImage:I

    .line 29
    const v0, 0x7f0202cd

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderImage:I

    .line 30
    const v0, 0x7f0202db

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTabIcon:I

    .line 31
    iget-object v0, p0, Lcom/android/email/esp/ProviderExchange;->mExchangeDomains:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDomainList:[Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/android/email/esp/AbstractProvider;->mServiceList:[Ljava/lang/String;

    .line 33
    return-void
.end method
