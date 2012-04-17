.class Lcom/android/contacts/editor/ContactEditorFragment$5;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2043
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1200(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2044
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1200(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 2045
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v0, :cond_0

    .line 2046
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1300(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 2055
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    :goto_0
    return-void

    .line 2053
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->createContact()V
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1400(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 2054
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v2, 0x0

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1502(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0
.end method
