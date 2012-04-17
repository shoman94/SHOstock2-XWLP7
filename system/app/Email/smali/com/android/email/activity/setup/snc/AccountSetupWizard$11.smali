.class Lcom/android/email/activity/setup/snc/AccountSetupWizard$11;
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
    .line 1144
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$11;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$11;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$1100(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$11;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1148
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$11;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$1100(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1151
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1152
    return-void
.end method
