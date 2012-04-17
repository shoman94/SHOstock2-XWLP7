.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$2;
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

.field final synthetic val$portOut:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$2;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$2;->val$portOut:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "view"
    .parameter "isChecked"

    .prologue
    .line 326
    if-eqz p2, :cond_1

    const-string v0, "25"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$2;->val$portOut:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$2;->val$portOut:Landroid/widget/EditText;

    const-string v1, "465"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    if-nez p2, :cond_0

    const-string v0, "465"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$2;->val$portOut:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$2;->val$portOut:Landroid/widget/EditText;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
