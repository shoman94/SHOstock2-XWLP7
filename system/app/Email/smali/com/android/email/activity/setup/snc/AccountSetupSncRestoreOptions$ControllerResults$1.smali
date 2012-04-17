.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults$1;
.super Ljava/lang/Object;
.source "AccountSetupSncRestoreOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;->getUserProfileCallback(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;

.field final synthetic val$sncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

.field final synthetic val$status:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults$1;->this$1:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;

    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults$1;->val$status:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults$1;->val$sncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults$1;->this$1:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults$1;->val$status:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults$1;->val$sncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->getProfileResponse(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->access$600(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    .line 374
    return-void
.end method
