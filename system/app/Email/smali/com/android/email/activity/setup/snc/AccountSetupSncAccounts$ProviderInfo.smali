.class Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;
.super Ljava/lang/Object;
.source "AccountSetupSncAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderInfo"
.end annotation


# instance fields
.field mProviderId:I

.field mProviderName:Ljava/lang/String;

.field mResId:I

.field mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .parameter "resId"
    .parameter "providerName"
    .parameter "providerId"
    .parameter "accountmType"

    .prologue
    .line 267
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->mResId:I

    .line 269
    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->mProviderName:Ljava/lang/String;

    .line 270
    iput p3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->mProviderId:I

    .line 271
    iput p4, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->mType:I

    .line 272
    return-void
.end method


# virtual methods
.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getmType()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->mType:I

    return v0
.end method
