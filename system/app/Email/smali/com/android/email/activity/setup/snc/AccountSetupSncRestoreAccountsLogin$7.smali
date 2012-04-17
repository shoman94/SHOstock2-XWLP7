.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$7;
.super Ljava/lang/Object;
.source "AccountSetupSncRestoreAccountsLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->addUserAccountResponse(Landroid/os/Bundle;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$7;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 421
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 422
    return-void
.end method
