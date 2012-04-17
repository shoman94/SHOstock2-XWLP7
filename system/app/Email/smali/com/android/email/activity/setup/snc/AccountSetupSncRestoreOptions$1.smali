.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;
.super Ljava/lang/Object;
.source "AccountSetupSncRestoreOptions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 107
    const-string v2, "AccountSetupSncRestoreOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In OnClickSelected Item ::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    #setter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I
    invoke-static {v2, p3}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->access$002(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;I)I

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;

    .line 111
    .local v0, holder:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->access$100(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;->notifyDataSetChanged()V

    .line 113
    const-string v2, "AccountSetupSncRestoreOptions"

    const-string v3, "User Pressed Next"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 129
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 120
    const-string v2, "AccountSetupSncRestoreOptions"

    const-string v3, "User pressed the next button more than once"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    #setter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z
    invoke-static {v2, v5}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->access$202(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;Z)Z

    .line 124
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->createProgressDialog()V
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->access$300(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)V

    .line 125
    const/4 v2, 0x5

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    .line 127
    .local v1, mType:I
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/email/Controller;->getUserProfile(I)V

    .line 128
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->setDefaultAccount()V
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)V

    goto :goto_0
.end method
