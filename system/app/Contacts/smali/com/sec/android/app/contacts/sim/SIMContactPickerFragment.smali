.class public Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "SIMContactPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mHeaderView:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

.field private mNoMatchView:Landroid/view/View;

.field private mSelectedInfoHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 71
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 72
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setQuickContactEnabled(Z)V

    .line 75
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectAllChecked(Z)V

    return-void
.end method

.method private addContactFromSelectAll(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method private addSelectedContact(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    const-string v0, "SIMContactPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSelectedContact : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is added in array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onSelectedInfoChanged()V

    .line 270
    return-void
.end method

.method private isSelectedContact(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private refreshSelectAllState()V
    .locals 6

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 315
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v3, 0x0

    .local v3, position:I
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 316
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 317
    .local v1, id:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    .line 315
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 321
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 326
    .end local v1           #id:J
    :goto_1
    return-void

    .line 325
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private removeContact(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 262
    const-string v0, "SIMContactPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeContact : id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is removed in array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onSelectedInfoChanged()V

    .line 264
    return-void
.end method

.method private removeContactFromSelectAll(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method private setDoneButton(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 273
    if-nez p1, :cond_1

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onAllDataDeleted()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    if-lez p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onOneDataInputed()V

    goto :goto_0
.end method

.method private setSelectAllChecked(Z)V
    .locals 5
    .parameter "isChecked"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 291
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v3, 0x0

    .local v3, position:I
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 292
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 294
    .local v1, id:J
    if-nez p1, :cond_0

    .line 295
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->addContactFromSelectAll(J)V

    .line 291
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->removeContactFromSelectAll(J)V

    goto :goto_1

    .line 301
    .end local v1           #id:J
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onSelectedInfoChanged()V

    .line 302
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 3

    .prologue
    .line 179
    const-string v1, "SIMContactPickerFragment"

    const-string v2, " === configureAdapter() === "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 183
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 186
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setEmptyListEnabled(Z)V

    .line 187
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    const-string v1, "SIMContactPickerFragment"

    const-string v2, " === createListAdapter() === "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, adapter:Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 164
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 165
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setDisplayPhotos(Z)V

    .line 166
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setQuickContactEnabled(Z)V

    .line 167
    iget v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setActionCode(I)V

    .line 173
    .end local v0           #adapter:Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;
    :goto_0
    return-object v0

    .line 170
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 172
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 191
    const-string v0, "SIMContactPickerFragment"

    const-string v1, " === inflateView() === "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const v0, 0x7f0400c0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mView:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onCancelAction()V

    .line 243
    return-void
.end method

.method public onCopyResult()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onCopyAction(Ljava/util/HashSet;)V

    .line 235
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mActionCode:I

    .line 118
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v2, 0x0

    .line 126
    const-string v0, "SIMContactPickerFragment"

    const-string v1, " === onCreateView === "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 128
    iput-object v2, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    .line 129
    const v0, 0x7f0400b1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0d0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment$1;-><init>(Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    .line 144
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3
    .parameter "position"
    .parameter "id"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 151
    .local v0, selectedId:J
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->isSelectedContact(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->removeContact(J)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->addSelectedContact(J)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
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
    .line 228
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 230
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->refreshSelectAllState()V

    .line 231
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 101
    const-string v0, "SIMContactPickerFragment"

    const-string v1, " === onSaveInstanceState === "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setSelectedInfoHashSet(Ljava/util/HashSet;)V

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDoneButton(I)V

    .line 253
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->refreshSelectAllState()V

    .line 254
    return-void
.end method

.method public reloadData()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 89
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 107
    const-string v0, "SIMContactPickerFragment"

    const-string v1, " === restoreSavedState === "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 109
    if-nez p1, :cond_0

    .line 112
    :cond_0
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 85
    return-void
.end method

.method public setOnSIMContactPickerActionListener(Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    .line 81
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 4
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 199
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 205
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    if-eqz v0, :cond_2

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    if-eqz v0, :cond_4

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 220
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
