.class Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;
.super Lcom/android/email/Controller$Result;
.source "AccountSetupForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .locals 0
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;Lcom/android/email/activity/setup/AccountSetupForSeven$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    return-void
.end method


# virtual methods
.method public setupAccountCallback(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 1286
    const-string v2, "account_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1287
    .local v0, eMailAccountKey:I
    const-string v2, "account_id_seven"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1289
    .local v1, sevenAccountId:I
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->registerPremiumAccountInfo(II)V
    invoke-static {v2, v0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$2000(Lcom/android/email/activity/setup/AccountSetupForSeven;II)V

    .line 1290
    return-void
.end method
