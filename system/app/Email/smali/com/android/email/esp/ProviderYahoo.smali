.class public Lcom/android/email/esp/ProviderYahoo;
.super Lcom/android/email/esp/AbstractProvider;
.source "ProviderYahoo.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mYahooDomains:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ProviderYahoo"

    sput-object v0, Lcom/android/email/esp/ProviderYahoo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 25
    invoke-direct {p0}, Lcom/android/email/esp/AbstractProvider;-><init>()V

    .line 15
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rocketmail.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yahoo.ca"

    aput-object v2, v0, v1

    const-string v1, "yahoo.cn"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "yahoo.co.hk"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "yahoo.co.id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "yahoo.co.in"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "yahoo.co.jp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "yahoo.co.kr"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "yahoo.co.my"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "yahoo.co.nz"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "yahoo.co.th"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "yahoo.co.uk"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "yahoo.com"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "yahoo.com.ar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "yahoo.com.au"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "yahoo.com.br"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "yahoo.com.cn"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "yahoo.com.mx"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "yahoo.com.ph"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "yahoo.com.sg"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "yahoo.com.tw"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "yahoo.com.vn"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "yahoo.de"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "yahoo.es"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "yahoo.fr"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "yahoo.it"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "yahoo.no"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ybb.ne.jp"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ymail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "telemundo.yahoo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "yahoo.in"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/esp/ProviderYahoo;->mYahooDomains:[Ljava/lang/String;

    .line 27
    const-string v0, "Yahoo! Mail"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDefaultAccountName:Ljava/lang/String;

    .line 28
    const-string v0, "Yahoo! Mail"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mAccountProviderName:Ljava/lang/String;

    .line 29
    iput v3, p0, Lcom/android/email/esp/AbstractProvider;->mProviderId:I

    .line 30
    const-string v0, "@yahoo.com"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderName:Ljava/lang/String;

    .line 33
    const v0, 0x7f08055f

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderStringResId:I

    .line 34
    const v0, 0x7f0202a6

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mNotificationIcon:I

    .line 35
    const v0, 0x7f020147

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTitleButtonIcon:I

    .line 36
    const v0, 0x7f0202d7

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderImage:I

    .line 37
    const v0, 0x7f0202d8

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderCheckImage:I

    .line 38
    const v0, 0x7f0202e0

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTabIcon:I

    .line 40
    iget-object v0, p0, Lcom/android/email/esp/ProviderYahoo;->mYahooDomains:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDomainList:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mServiceList:[Ljava/lang/String;

    .line 42
    return-void
.end method
