.class Lcom/android/email/activity/UpgradeAccounts$6;
.super Ljava/lang/Object;
.source "UpgradeAccounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/UpgradeAccounts;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$6;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iput p2, p0, Lcom/android/email/activity/UpgradeAccounts$6;->val$i:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 657
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 658
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$1002(Z)Z

    .line 659
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$6;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/UpgradeAccounts$6;->val$i:I

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts$6;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const v3, 0x7f080109

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$6;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-virtual {v0}, Lcom/android/email/activity/UpgradeAccounts;->finish()V

    .line 662
    return-void
.end method
