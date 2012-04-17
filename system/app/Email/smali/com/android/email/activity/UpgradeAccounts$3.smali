.class Lcom/android/email/activity/UpgradeAccounts$3;
.super Ljava/lang/Object;
.source "UpgradeAccounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/UpgradeAccounts;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UpgradeAccounts;

.field final synthetic val$checkboxImei:Landroid/widget/CheckBox;

.field final synthetic val$mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/email/activity/UpgradeAccounts;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$3;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iput-object p2, p0, Lcom/android/email/activity/UpgradeAccounts$3;->val$mSharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/email/activity/UpgradeAccounts$3;->val$checkboxImei:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$3;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/email/activity/UpgradeAccounts;->dismissDialog(I)V

    .line 291
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$3;->val$mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 292
    .local v0, editPref:Landroid/content/SharedPreferences$Editor;
    const-string v1, "isCheckIMEI"

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts$3;->val$checkboxImei:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 293
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$3;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    new-instance v2, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts$3;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget-object v4, p0, Lcom/android/email/activity/UpgradeAccounts$3;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->account_eas:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v4}, Lcom/android/email/activity/UpgradeAccounts;->access$200(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$3;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->account_eas_num:I
    invoke-static {v5}, Lcom/android/email/activity/UpgradeAccounts;->access$300(Lcom/android/email/activity/UpgradeAccounts;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;-><init>(Lcom/android/email/activity/UpgradeAccounts;Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V

    #setter for: Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;
    invoke-static {v1, v2}, Lcom/android/email/activity/UpgradeAccounts;->access$102(Lcom/android/email/activity/UpgradeAccounts;Lcom/android/email/activity/UpgradeAccounts$ConversionTask;)Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    .line 296
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$3;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$100(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    return-void
.end method
