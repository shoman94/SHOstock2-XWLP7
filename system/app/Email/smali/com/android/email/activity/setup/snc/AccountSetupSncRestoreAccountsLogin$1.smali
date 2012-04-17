.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$1;
.super Ljava/lang/Object;
.source "AccountSetupSncRestoreAccountsLogin.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->onCreate(Landroid/os/Bundle;)V
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
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->validateFields()V
    invoke-static {v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    .line 125
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 128
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 131
    return-void
.end method
