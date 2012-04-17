.class public Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;
.super Landroid/app/ListFragment;
.source "ContactHistoryViewByListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$1;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mItemNameInHistory:[I


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

.field private mAllitem:Landroid/widget/LinearLayout;

.field private mHeaderAllCheckBox:Landroid/widget/CheckBox;

.field private mItemArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;

.field public mOptionIsChanged:Z

.field private mSortOptions:[Z

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x6bt 0x2t 0xat 0x7ft
        0x6ct 0x2t 0xat 0x7ft
        0x6dt 0x2t 0xat 0x7ft
        0x6et 0x2t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mOptionIsChanged:Z

    .line 215
    return-void
.end method

.method private CheckOptionsChanged()Z
    .locals 4

    .prologue
    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    aget-boolean v1, v1, v0

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 119
    const/4 v1, 0x1

    .line 121
    :goto_1
    return v1

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private linkOptionToListItem()V
    .locals 4

    .prologue
    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->updateAllCheckState()V

    .line 155
    return-void
.end method

.method private setAllItemCheckState(Z)V
    .locals 3
    .parameter "bCheckState"

    .prologue
    .line 164
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 165
    .local v0, dataCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 166
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method private setItemArrayList()V
    .locals 3

    .prologue
    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemArrayList:Ljava/util/ArrayList;

    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 144
    new-instance v1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$1;)V

    .line 145
    .local v1, item:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;
    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    aget v2, v2, v0

    iput v2, v1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;->itemNameResId:I

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v1           #item:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;
    :cond_0
    return-void
.end method

.method private updateAllCheckState()V
    .locals 6

    .prologue
    .line 171
    const/4 v3, 0x1

    .line 172
    .local v3, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 173
    .local v2, everyBodyIsOff:Z
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 174
    .local v1, dataCount:I
    if-nez v1, :cond_1

    .line 175
    const/4 v3, 0x0

    .line 176
    const/4 v2, 0x1

    .line 188
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 189
    return-void

    .line 178
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 179
    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_0

    or-int v5, v3, v2

    if-eqz v5, :cond_0

    .line 180
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 181
    .local v0, checked:Z
    if-nez v0, :cond_2

    .line 182
    const/4 v3, 0x0

    .line 179
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getSelectAllCheckBox()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getSortOptions()[Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    return-object v0
.end method

.method public linkListItemToOption()V
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 128
    sput-object p1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    .line 130
    :try_start_0
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnViewByItemsCheckedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 79
    const v0, 0x7f040034

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mView:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 86
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040033

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAllitem:Landroid/widget/LinearLayout;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const v1, 0x7f0d00e1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 92
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setItemArrayList()V

    .line 94
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040036

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->setFragment(Landroid/app/Fragment;)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    const-string v1, "ContactHistoryViewByListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mHeaderAllCheckBox is checked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-nez p3, :cond_2

    .line 106
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 107
    .local v0, checked:Z
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setAllItemCheckState(Z)V

    .line 113
    .end local v0           #checked:Z
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->CheckOptionsChanged()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;->onChangedOptionItems(Z)V

    .line 114
    return-void

    .restart local v0       #checked:Z
    :cond_0
    move v1, v3

    .line 107
    goto :goto_0

    :cond_1
    move v2, v3

    .line 108
    goto :goto_1

    .line 110
    .end local v0           #checked:Z
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->updateAllCheckState()V

    goto :goto_2
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .parameter "extras"

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    .line 194
    const-string v0, "options"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->linkOptionToListItem()V

    .line 197
    return-void
.end method

.method public setSelectAllCheckBox(Z)V
    .locals 1
    .parameter "boolean1"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 209
    return-void
.end method

.method public setSortOptions([Z)V
    .locals 0
    .parameter "booleanArray"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    .line 205
    return-void
.end method
