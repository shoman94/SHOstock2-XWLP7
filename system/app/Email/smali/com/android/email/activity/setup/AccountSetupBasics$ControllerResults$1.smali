.class Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults$1;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;->addUserAccountCallback(Landroid/os/Bundle;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

.field final synthetic val$accountId:J

.field final synthetic val$status:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;Landroid/os/Bundle;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2364
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults$1;->this$1:Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults$1;->val$status:Landroid/os/Bundle;

    iput-wide p3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults$1;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults$1;->this$1:Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults$1;->val$status:Landroid/os/Bundle;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults$1;->val$accountId:J

    #calls: Lcom/android/email/activity/setup/AccountSetupBasics;->addUserAccountResponse(Landroid/os/Bundle;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1400(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/os/Bundle;J)V

    .line 2367
    return-void
.end method
