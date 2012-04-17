.class public Lcom/android/email/esp/ProviderAol;
.super Lcom/android/email/esp/AbstractProvider;
.source "ProviderAol.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAolDomains:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ProviderAol"

    sput-object v0, Lcom/android/email/esp/ProviderAol;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/email/esp/AbstractProvider;-><init>()V

    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aol.com"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/esp/ProviderAol;->mAolDomains:[Ljava/lang/String;

    .line 22
    const-string v0, "Aol Mail"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDefaultAccountName:Ljava/lang/String;

    .line 23
    const-string v0, "AOL Mail"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mAccountProviderName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderId:I

    .line 25
    const-string v0, "@aol.com"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderName:Ljava/lang/String;

    .line 27
    const v0, 0x7f08055c

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderStringResId:I

    .line 28
    const v0, 0x7f0202a0

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mNotificationIcon:I

    .line 29
    const v0, 0x7f020142

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTitleButtonIcon:I

    .line 30
    const v0, 0x7f0202cb

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderImage:I

    .line 31
    const v0, 0x7f0202cc

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderCheckImage:I

    .line 32
    const v0, 0x7f0202da

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTabIcon:I

    .line 33
    iget-object v0, p0, Lcom/android/email/esp/ProviderAol;->mAolDomains:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDomainList:[Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mServiceList:[Ljava/lang/String;

    .line 35
    return-void
.end method
