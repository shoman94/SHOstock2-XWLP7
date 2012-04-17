.class Lcom/android/email/activity/setup/AccountSetupExchange$3;
.super Ljava/lang/Object;
.source "AccountSetupExchange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupExchange;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

.field final synthetic val$checkboxImei:Landroid/widget/CheckBox;

.field final synthetic val$mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupExchange;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$3;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupExchange$3;->val$mSharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSetupExchange$3;->val$checkboxImei:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$3;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupExchange;->dismissDialog(I)V

    .line 248
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$3;->val$mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 249
    .local v0, editPref:Landroid/content/SharedPreferences$Editor;
    const-string v1, "isCheckIMEI"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchange$3;->val$checkboxImei:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$3;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onNext()V

    .line 252
    return-void
.end method
