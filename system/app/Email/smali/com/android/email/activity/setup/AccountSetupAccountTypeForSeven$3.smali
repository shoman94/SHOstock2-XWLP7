.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;
.super Ljava/lang/Object;
.source "AccountSetupAccountTypeForSeven.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initCurrentStage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

.field final synthetic val$layout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;->val$layout:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "view"
    .parameter "isChecked"

    .prologue
    .line 341
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;->val$layout:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    if-eqz p2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const v3, 0x7f1000a8

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 345
    .local v1, username:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const v3, 0x7f1000aa

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 346
    .local v0, password:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_USERNAME:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "username"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_USERNAME:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "password"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    .end local v0           #password:Landroid/widget/EditText;
    .end local v1           #username:Landroid/widget/EditText;
    :cond_0
    return-void

    .line 341
    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    .line 346
    .restart local v0       #password:Landroid/widget/EditText;
    .restart local v1       #username:Landroid/widget/EditText;
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_USERNAME:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 351
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_PASSWORD:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
