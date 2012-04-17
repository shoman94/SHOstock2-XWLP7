.class Lcom/android/contacts/list/PostalAddressPickerFragment$1;
.super Ljava/lang/Object;
.source "PostalAddressPickerFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/PostalAddressPickerFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/PostalAddressPickerFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/PostalAddressPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment$1;->this$0:Lcom/android/contacts/list/PostalAddressPickerFragment;

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

    .line 115
    iget-object v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment$1;->this$0:Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    :goto_0
    return v0

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment$1;->this$0:Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-virtual {v2, p1, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 119
    iget-object v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment$1;->this$0:Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment$1;->this$0:Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setSearchMode(Z)V

    :cond_1
    :goto_1
    move v0, v1

    .line 126
    goto :goto_0

    .line 123
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment$1;->this$0:Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setSearchMode(Z)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .parameter "queryText"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment$1;->this$0:Lcom/android/contacts/list/PostalAddressPickerFragment;

    #getter for: Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->access$000(Lcom/android/contacts/list/PostalAddressPickerFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment$1;->this$0:Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 137
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment$1;->this$0:Lcom/android/contacts/list/PostalAddressPickerFragment;

    #getter for: Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->access$000(Lcom/android/contacts/list/PostalAddressPickerFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment$1;->this$0:Lcom/android/contacts/list/PostalAddressPickerFragment;

    #getter for: Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->access$000(Lcom/android/contacts/list/PostalAddressPickerFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 142
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
