.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$1;
.super Ljava/lang/Object;
.source "AccountSetupSncRestoreAccounts.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mSncList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->actionaddaccount(Landroid/app/Activity;ILjava/util/List;)V

    .line 94
    return-void
.end method
