.class Lcom/android/email/activity/UpgradeAccounts$4;
.super Ljava/lang/Object;
.source "UpgradeAccounts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/UpgradeAccounts;->fetchCredentialsDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UpgradeAccounts;

.field final synthetic val$mShowPassword:Landroid/widget/CheckBox;

.field final synthetic val$passwordEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/email/activity/UpgradeAccounts;Landroid/widget/CheckBox;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$4;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iput-object p2, p0, Lcom/android/email/activity/UpgradeAccounts$4;->val$mShowPassword:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/email/activity/UpgradeAccounts$4;->val$passwordEdit:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$4;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$4;->val$mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts$4;->val$passwordEdit:Landroid/widget/EditText;

    #calls: Lcom/android/email/activity/UpgradeAccounts;->showHidePassword(ZLandroid/widget/EditText;)V
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UpgradeAccounts;->access$900(Lcom/android/email/activity/UpgradeAccounts;ZLandroid/widget/EditText;)V

    .line 628
    return-void
.end method
