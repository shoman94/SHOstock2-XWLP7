.class public Lcom/android/email/esp/ProviderAim;
.super Lcom/android/email/esp/AbstractProvider;
.source "ProviderAim.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAimDomains:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ProviderAim"

    sput-object v0, Lcom/android/email/esp/ProviderAim;->TAG:Ljava/lang/String;

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

    const-string v2, "aim.com"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/esp/ProviderAim;->mAimDomains:[Ljava/lang/String;

    .line 22
    const-string v0, "Aim Mail"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDefaultAccountName:Ljava/lang/String;

    .line 23
    const-string v0, "AIM Mail"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mAccountProviderName:Ljava/lang/String;

    .line 24
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderId:I

    .line 25
    const-string v0, "@aol.com"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderName:Ljava/lang/String;

    .line 28
    const v0, 0x7f08055c

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderStringResId:I

    .line 29
    const v0, 0x7f0202a0

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mNotificationIcon:I

    .line 30
    const v0, 0x7f020142

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTitleButtonIcon:I

    .line 31
    const v0, 0x7f0202cb

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderImage:I

    .line 32
    const v0, 0x7f0202cc

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderCheckImage:I

    .line 33
    const v0, 0x7f0202d9

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTabIcon:I

    .line 35
    iget-object v0, p0, Lcom/android/email/esp/ProviderAim;->mAimDomains:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDomainList:[Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mServiceList:[Ljava/lang/String;

    .line 37
    return-void
.end method
