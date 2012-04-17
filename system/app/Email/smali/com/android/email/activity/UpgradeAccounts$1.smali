.class Lcom/android/email/activity/UpgradeAccounts$1;
.super Ljava/lang/Object;
.source "UpgradeAccounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/email/activity/UpgradeAccounts;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$1;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$1;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UpgradeAccounts;->dismissDialog(I)V

    .line 312
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$1;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts$1;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const v3, 0x7f08014c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$1;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-virtual {v0}, Lcom/android/email/activity/UpgradeAccounts;->finish()V

    .line 314
    return-void
.end method
