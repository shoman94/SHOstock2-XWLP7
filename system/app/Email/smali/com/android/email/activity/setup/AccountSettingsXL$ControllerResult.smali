.class Lcom/android/email/activity/setup/AccountSettingsXL$ControllerResult;
.super Lcom/android/email/Controller$Result;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .locals 0
    .parameter

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$ControllerResult;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1447
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$ControllerResult;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    return-void
.end method


# virtual methods
.method public deleteAccountCallback(Landroid/os/Bundle;J)V
    .locals 2
    .parameter "status"
    .parameter "accountId"

    .prologue
    .line 1451
    const-string v0, "Email"

    const-string v1, "deleteAccountCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$ControllerResult;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSettingsXL;->deleteAccountCallbackResult(Landroid/os/Bundle;J)V

    .line 1456
    return-void
.end method
