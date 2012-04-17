.class Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;
.super Ljava/lang/Object;
.source "AccountSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderInfo"
.end annotation


# instance fields
.field mProvider:Ljava/lang/String;

.field mProviderId:I

.field mProviderName:Ljava/lang/String;

.field mResId:I

.field mServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "resId"
    .parameter "providerName"
    .parameter "providerId"

    .prologue
    .line 409
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mResId:I

    .line 411
    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProviderName:Ljava/lang/String;

    .line 412
    iput p3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProviderId:I

    .line 413
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter "resId"
    .parameter "providerName"
    .parameter "providerId"
    .parameter
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 417
    .local p4, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mResId:I

    .line 419
    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProviderName:Ljava/lang/String;

    .line 420
    iput p3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProviderId:I

    .line 421
    iput-object p4, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mServiceList:Ljava/util/List;

    .line 422
    iput-object p5, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProvider:Ljava/lang/String;

    .line 423
    return-void
.end method


# virtual methods
.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProviderId:I

    return v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProviderName:Ljava/lang/String;

    return-object v0
.end method
