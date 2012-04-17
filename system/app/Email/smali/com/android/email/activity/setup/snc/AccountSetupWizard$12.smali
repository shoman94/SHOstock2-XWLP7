.class Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;
.super Ljava/lang/Object;
.source "AccountSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showGetMDNDialog(ZLjava/lang/String;)V
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
    .line 1154
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1156
    iget-object v5, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNView:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$1100(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1157
    .local v0, MDN:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1158
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1159
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const-string v5, "MDN is Empty..."

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    const v7, 0x7f080042

    invoke-virtual {v6, v7}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/setup/snc/AccountSetupWizard$12$1;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$12$1;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1167
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1168
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1180
    .end local v1           #alert:Landroid/app/AlertDialog;
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 1171
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$1200(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1172
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "MDN"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1173
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1174
    iget-object v5, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->createProgressDialog()V
    invoke-static {v5}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$1300(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    .line 1175
    const/4 v5, 0x5

    const/16 v6, 0x9

    invoke-static {v5, v6}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v4

    .line 1177
    .local v4, mType:I
    iget-object v5, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-static {v5}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/Controller;->getAvailableAccounts(I)V

    .line 1178
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
