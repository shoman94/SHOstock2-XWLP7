.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$8;
.super Ljava/lang/Object;
.source "AccountSetupAccountTypeForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$8;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 724
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$8;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$1000(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    .line 728
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$8;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->cancelTask()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$1100(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    .line 731
    const/4 v0, 0x1

    .line 733
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
