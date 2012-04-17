.class Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$2;
.super Ljava/lang/Object;
.source "AccountSetupIncomingForSevenFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showDialog(I)V
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
    .line 488
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$2;->this$1:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 490
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://socialhub.samsungmobile.com/store/device/disclaimer.sh?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$2;->this$1:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/seven/util/SamsungUrlEncryptionUtils;->getIMSIOfSubscriptionRenewalParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, url:Ljava/lang/String;
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$2;->this$1:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->startActivity(Landroid/content/Intent;)V

    .line 499
    return-void
.end method
