.class Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;
.super Ljava/lang/Object;
.source "GroupMemberPickerFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .parameter "queryText"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 226
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    :goto_0
    return v0

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 230
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSearchMode(Z)V

    :cond_1
    :goto_1
    move v0, v1

    .line 237
    goto :goto_0

    .line 234
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSearchMode(Z)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "queryText"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$000(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$000(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 245
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
