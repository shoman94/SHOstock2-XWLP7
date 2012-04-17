.class public Lcom/android/email/esp/ProviderOthers;
.super Lcom/android/email/esp/AbstractProvider;
.source "ProviderOthers.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mOtherDomains:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ProviderOthers"

    sput-object v0, Lcom/android/email/esp/ProviderOthers;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/android/email/esp/AbstractProvider;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/android/email/esp/ProviderOthers;->mOtherDomains:[Ljava/lang/String;

    .line 20
    const-string v0, "Other Account Mail"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDefaultAccountName:Ljava/lang/String;

    .line 21
    const-string v0, "Others"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mAccountProviderName:Ljava/lang/String;

    .line 22
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderId:I

    .line 23
    const-string v0, "others"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderName:Ljava/lang/String;

    .line 26
    const v0, 0x7f080560

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderStringResId:I

    .line 27
    const v0, 0x7f0202a4

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mNotificationIcon:I

    .line 28
    const v0, 0x7f020146

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTitleButtonIcon:I

    .line 29
    const v0, 0x7f0202d1

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderImage:I

    .line 30
    const v0, 0x7f0202d2

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderCheckImage:I

    .line 31
    const v0, 0x7f0202de

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTabIcon:I

    .line 33
    iget-object v0, p0, Lcom/android/email/esp/ProviderOthers;->mOtherDomains:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDomainList:[Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/android/email/esp/AbstractProvider;->mServiceList:[Ljava/lang/String;

    .line 35
    return-void
.end method
