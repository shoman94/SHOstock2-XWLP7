.class Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults$1;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->modifyUserAccountCallback(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1090
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults$1;->val$bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1091
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults$1;->val$bundle:Landroid/os/Bundle;

    const-string v3, "status_code"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1092
    .local v1, resultCode:I
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults$1;->val$bundle:Landroid/os/Bundle;

    const-string v3, "status_text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, errorMessage:Ljava/lang/String;
    const-string v2, "AccountSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyUserAccountCallback - resultCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errorMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    if-nez v1, :cond_1

    .line 1096
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;

    iget-object v3, v3, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08057f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1103
    .end local v0           #errorMessage:Ljava/lang/String;
    .end local v1           #resultCode:I
    :cond_0
    :goto_0
    return-void

    .line 1100
    .restart local v0       #errorMessage:Ljava/lang/String;
    .restart local v1       #resultCode:I
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
