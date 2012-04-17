.class Lcom/android/email/activity/MessageListXL$4;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->loadAccounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$4;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1965
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->createLoader(Landroid/content/Context;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1970
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$4;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->updateAccountList(Landroid/database/Cursor;)V
    invoke-static {v0, p2}, Lcom/android/email/activity/MessageListXL;->access$3800(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)V

    .line 1971
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1962
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageListXL$4;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1975
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$4;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1000(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$4;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1000(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountSelectorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1978
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$4;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1979
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$4;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$4;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$1000(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1981
    :cond_1
    return-void
.end method
