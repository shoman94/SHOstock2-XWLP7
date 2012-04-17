.class public Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "GroupMemberPickerFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/list/OnActionBarClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;,
        Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/sec/android/app/contacts/list/OnActionBarClickListener;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mEmptyView:Landroid/view/View;

.field private mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mHeaderView:Landroid/view/View;

.field private mIsAutoAdd:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

.field private mMode:I

.field private mModifiedMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectAllEnabled:Z

.field private mSelectAllVisible:Z

.field private mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 74
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->NOTLOADED:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    .line 78
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    .line 79
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    .line 82
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setQuickContactEnabled(Z)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSelectAllVisible(Z)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setDirectorySearchMode(I)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;)Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private addAllMember()V
    .locals 7

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    .line 366
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getCount()I

    move-result v1

    .line 367
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 368
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 371
    .local v3, targetId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    .line 367
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 375
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 378
    .end local v3           #targetId:J
    :cond_2
    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 385
    goto :goto_1

    :cond_3
    move v2, v1

    .line 386
    goto :goto_2
.end method

.method private configureSelectAll()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0d008e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, headerLayout:Landroid/view/View;
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 199
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    if-nez v2, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    .line 205
    :goto_1
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 207
    .end local v0           #headerLayout:Landroid/view/View;
    :cond_1
    return-void

    .line 199
    .restart local v0       #headerLayout:Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 202
    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    goto :goto_1
.end method

.method private configureUri(I)Landroid/net/Uri;
    .locals 5
    .parameter "mode"

    .prologue
    .line 464
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, title:Ljava/lang/String;
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 475
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 469
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 473
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private removeAllMember()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 362
    return-void
.end method

.method private updateHeaderViewAndDoneButton()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 390
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v5

    .line 391
    .local v5, total:I
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v9, 0x7f0d0090

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 397
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isSearchMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 399
    const/4 v3, 0x1

    .line 401
    .local v3, isAllContain:Z
    const/4 v4, 0x0

    .local v4, position:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 402
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6, v4}, Lcom/android/contacts/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 405
    .local v1, id:J
    const-wide/16 v9, 0x0

    cmp-long v6, v1, v9

    if-nez v6, :cond_1

    .line 401
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 408
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 409
    const/4 v3, 0x0

    .line 414
    .end local v1           #id:J
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 420
    .end local v3           #isAllContain:Z
    .end local v4           #position:I
    :goto_1
    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 421
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    invoke-interface {v6, v8}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onDoneButtonStateUpdated(Z)V

    .line 425
    :goto_2
    return-void

    .line 416
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_3

    .line 423
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    invoke-interface {v6, v7}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 304
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 306
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 307
    return-void
.end method

.method protected configureSearchbar()V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0a01ac

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 248
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 284
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setDisplayPhotos(Z)V

    .line 285
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setQuickContactEnabled(Z)V

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setModifiedMemeberIds(Ljava/util/List;)V

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setExceptedAccounts(Ljava/util/List;)V

    .line 289
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setMode(I)V

    .line 291
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setAutoAdd(Z)V

    .line 298
    .end local v0           #adapter:Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    :goto_0
    return-object v0

    .line 295
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 296
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 297
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 311
    const v0, 0x7f04003c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 156
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->runQuery()V

    .line 160
    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    .line 180
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    if-eqz v0, :cond_0

    .line 181
    const v0, 0x7f0400b1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    .line 183
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureSelectAll()V

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureSearchbar()V

    .line 189
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDetach()V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->cancelOperation(I)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    .line 172
    :cond_1
    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onSelectedAction(Ljava/util/List;)V

    .line 351
    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 5
    .parameter "position"
    .parameter "id"

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    .line 269
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 270
    .local v1, targetId:J
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 275
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->notifyDataSetChanged()V

    .line 276
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    if-eqz v3, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 278
    :cond_0
    return-void

    .line 273
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    if-nez p3, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f0d0090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 254
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->removeAllMember()V

    .line 259
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 260
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 264
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :goto_1
    return-void

    .line 257
    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->addAllMember()V

    goto :goto_0

    .line 262
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    .line 316
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "GroupMemberPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished : QueryStatus is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureEmptyView(Z)V

    .line 318
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 319
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 320
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onRevertAction()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onRevertAction()V

    .line 358
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 147
    if-nez p1, :cond_0

    .line 150
    :cond_0
    return-void
.end method

.method public setAutoAdd(Z)V
    .locals 0
    .parameter "isAutoAdd"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    .line 122
    return-void
.end method

.method public setExceptedAccounts(Ljava/util/List;)V
    .locals 0
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
    .line 136
    .local p1, exceptedAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz p1, :cond_0

    .line 137
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    .line 139
    :cond_0
    return-void
.end method

.method public setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .parameter "groupInfo"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 117
    return-void
.end method

.method public setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    .line 95
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 108
    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    .line 109
    return-void
.end method

.method public setModifiedMemberIds(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, modifiedMemberIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 131
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    .line 133
    :cond_0
    return-void
.end method

.method public setSelectAllVisible(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    .line 102
    return-void
.end method
