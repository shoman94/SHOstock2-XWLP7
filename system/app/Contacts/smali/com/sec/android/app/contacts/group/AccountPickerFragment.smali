.class public Lcom/sec/android/app/contacts/group/AccountPickerFragment;
.super Landroid/app/Fragment;
.source "AccountPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/contacts/list/OnActionBarClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;,
        Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;
    }
.end annotation


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mHeaderView:Landroid/view/View;

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

.field private mRootView:Landroid/view/View;

.field private mSelectedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    return-object v0
.end method

.method private addAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 1
    .parameter "accountWithDataSet"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method private addAllAccountWithDataSet()V
    .locals 3

    .prologue
    .line 152
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 154
    .local v0, accountWithDataSet:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    .end local v0           #accountWithDataSet:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_0
    return-void
.end method

.method private getAllGoogleAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v2, googleAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v1

    .line 164
    .local v1, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 165
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.google"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return-object v2
.end method

.method private removeAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 1
    .parameter "accountWithDataSet"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method private removeAllAccountWithDataSet()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    return-void
.end method

.method private updateHeaderViewAndDoneButton()V
    .locals 5

    .prologue
    const v4, 0x7f0d0090

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->getCount()I

    move-result v0

    .line 175
    .local v0, total:I
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onDoneButtonStateUpdated(Z)V

    .line 186
    :goto_1
    return-void

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v1, v3}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 88
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v0

    .line 91
    .local v0, allGoogleAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    new-instance v1, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    const v2, 0x7f040016

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;-><init>(Lcom/sec/android/app/contacts/group/AccountPickerFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    .line 103
    const v0, 0x7f040080

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mRootView:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    .line 105
    const v0, 0x7f0400b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onSelectedAction(Ljava/util/List;)V

    .line 249
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
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
    .line 117
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0d0090

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 119
    .local v2, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->removeAllAccountWithDataSet()V

    .line 135
    .end local v2           #checkbox:Landroid/widget/CheckBox;
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->notifyDataSetChanged()V

    .line 136
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 137
    return-void

    .line 122
    .restart local v2       #checkbox:Landroid/widget/CheckBox;
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->addAllAccountWithDataSet()V

    goto :goto_0

    .line 126
    .end local v2           #checkbox:Landroid/widget/CheckBox;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v1, p3, v3

    .line 127
    .local v1, adjPosition:I
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 129
    .local v0, accountWithDataSet:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->removeAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->addAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method public onRevertAction()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onRevertAction()V

    .line 256
    :cond_0
    return-void
.end method

.method public setAccountPickerActionListener(Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    .line 74
    return-void
.end method

.method public setSelectedAccounts(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, selectedAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-nez p1, :cond_0

    .line 78
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    goto :goto_0
.end method
