.class Lcom/android/email/activity/setup/snc/AccountSetupWizard$7;
.super Ljava/lang/Object;
.source "AccountSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getAvailableAccountResponse(Landroid/os/Bundle;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 975
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$7;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 978
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 979
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$7;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->finish()V

    .line 980
    return-void
.end method
