.class Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$9;
.super Ljava/lang/Object;
.source "AccountSetupIncomingForSevenFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showPopupReport(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$9;->this$1:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$9;->this$1:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mShowingPopupDialog:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$302(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Z)Z

    .line 576
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$9;->this$1:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 577
    return-void
.end method
