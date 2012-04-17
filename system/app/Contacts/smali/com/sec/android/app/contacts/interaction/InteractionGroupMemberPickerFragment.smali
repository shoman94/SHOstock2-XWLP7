.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "InteractionGroupMemberPickerFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$Listener;
.implements Lcom/sec/android/app/contacts/list/OnActionBarClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTask;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/sec/android/app/contacts/list/OnActionBarClickListener;",
        "Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$Listener;"
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurrentCount:I

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

.field private mFromSelectAll:Z

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mHeaderView:Landroid/view/View;

.field private mIsDoneButtonClicked:Z

.field private mIsSelectAllRunning:Z

.field private mLimitedCount:I

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field private mMaxcount:I

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

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectAllEnabled:Z

.field private mSelectedContactHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 94
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    .line 100
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z

    .line 102
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    .line 122
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 123
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 125
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setQuickContactEnabled(Z)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSelectAllEnabled(Z)V

    .line 130
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDirectorySearchMode(I)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSweepActionEnabled(Z)V

    .line 135
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAll()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSelectAllChecked(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z

    return p1
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;Ljava/lang/String;)V
    .locals 4
    .parameter "dataInfo"
    .parameter "partition"

    .prologue
    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, keyString:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, dataString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    .line 465
    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 959
    goto :goto_1

    :cond_3
    move v2, v1

    .line 960
    goto :goto_2
.end method

.method private excuteSelectAll()V
    .locals 2

    .prologue
    .line 311
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    if-nez v1, :cond_0

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    .line 313
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;)V

    .line 314
    .local v0, selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 316
    .end local v0           #selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTask;
    :cond_0
    return-void
.end method

.method private isMaxAdded()Z
    .locals 2

    .prologue
    .line 904
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMaxcount:I

    if-lt v0, v1, :cond_0

    .line 905
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "isMaxAddedtrue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v0, 0x1

    .line 908
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectedContact(Ljava/lang/String;I)Z
    .locals 3
    .parameter "id"
    .parameter "partition"

    .prologue
    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;)Ljava/lang/String;
    .locals 5
    .parameter "dataInfo"

    .prologue
    .line 502
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 503
    .local v0, dataId:Ljava/lang/String;
    iget-object v1, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 504
    .local v1, displayName:Ljava/lang/String;
    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;->data:Ljava/lang/String;

    .line 506
    .local v3, selectedInfo:Ljava/lang/String;
    const-string v4, ";"

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, result:Ljava/lang/String;
    return-object v2
.end method

.method private margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "args1"
    .parameter "args2"
    .parameter "args3"
    .parameter "token"

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshSelectAllState()V
    .locals 7

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    .line 881
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    const/4 v4, 0x0

    .local v4, position:I
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 883
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 884
    .local v1, id:J
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 886
    .local v3, partition:I
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    .line 881
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 890
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 891
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 897
    .end local v1           #id:J
    .end local v3           #partition:I
    :goto_1
    return-void

    .line 896
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private removeContact(Ljava/lang/String;I)V
    .locals 3
    .parameter "id"
    .parameter "partition"

    .prologue
    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    .line 449
    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;I)V
    .locals 3
    .parameter "id"
    .parameter "partition"

    .prologue
    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    return-void
.end method

.method private setDoneButton(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 947
    if-nez p1, :cond_1

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    if-lez p1, :cond_0

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onOneDataInputed()V

    goto :goto_0
.end method

.method private setSelectAllChecked(Z)Z
    .locals 13
    .parameter "isChecked"

    .prologue
    .line 835
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 836
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    .line 840
    .local v1, adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 841
    .local v0, CurrentSelectItem:I
    const-string v9, "InteractionGroupMemberPickerFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CurrentSelectItem ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v7, 0x0

    .local v7, position:I
    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getCount()I

    move-result v9

    if-ge v7, v9, :cond_4

    .line 843
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    .line 844
    iget v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMaxcount:I

    if-lt v0, v9, :cond_0

    .line 845
    const-string v9, "InteractionGroupMemberPickerFragment"

    const-string v11, "isMaxAdded "

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v9, 0x0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    :goto_1
    return v9

    .line 849
    :cond_0
    :try_start_1
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v8

    .line 850
    .local v8, uri:Landroid/net/Uri;
    if-nez v8, :cond_2

    .line 842
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 853
    :cond_2
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 854
    .local v2, contactId:Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 855
    .local v4, id:J
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 856
    .local v6, partition:I
    if-nez p1, :cond_3

    .line 857
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 858
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v6, v9}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 859
    add-int/lit8 v0, v0, 0x1

    .line 860
    const-string v9, "InteractionGroupMemberPickerFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CurrentSelectItem = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 867
    .end local v2           #contactId:Ljava/lang/String;
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v8           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 868
    .local v3, e:Ljava/lang/IllegalStateException;
    const/4 v9, 0x1

    :try_start_2
    monitor-exit v10

    goto :goto_1

    .line 873
    .end local v0           #CurrentSelectItem:I
    .end local v1           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    .end local v3           #e:Ljava/lang/IllegalStateException;
    .end local v7           #position:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 864
    .restart local v0       #CurrentSelectItem:I
    .restart local v1       #adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    .restart local v2       #contactId:Ljava/lang/String;
    .restart local v4       #id:J
    .restart local v6       #partition:I
    .restart local v7       #position:I
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_3
    const/4 v9, 0x0

    :try_start_3
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    .line 865
    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 869
    .end local v2           #contactId:Ljava/lang/String;
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v8           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v3

    .line 870
    .local v3, e:Landroid/database/StaleDataException;
    const/4 v9, 0x1

    :try_start_4
    monitor-exit v10

    goto :goto_1

    .line 873
    .end local v3           #e:Landroid/database/StaleDataException;
    :cond_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 875
    const/4 v9, 0x1

    goto :goto_1
.end method

.method private showMaxCountAlertDialog()V
    .locals 6

    .prologue
    .line 912
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02e2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 915
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 341
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 343
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 346
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 347
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 323
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setDisplayPhotos(Z)V

    .line 324
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setQuickContactEnabled(Z)V

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setModifiedMemeberIds(Ljava/util/List;)V

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setExceptedAccounts(Ljava/util/List;)V

    .line 328
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setActionCode(I)V

    .line 329
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setMode(I)V

    .line 335
    .end local v0           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    :goto_0
    return-object v0

    .line 332
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 333
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 334
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;)Ljava/lang/String;
    .locals 2
    .parameter "contactDatas"

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 486
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;->mDisplayName:Ljava/lang/String;

    .line 488
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 228
    const-string v1, "InteractionGroupMemberPickerFragment"

    const-string v2, "inflateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const v1, 0x7f04003c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0a01ac

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 203
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 205
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMaxcount:I

    .line 206
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 210
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    .line 215
    const v0, 0x7f0400b1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0d0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method public onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;Ljava/lang/String;Z)V
    .locals 4
    .parameter "dataInfo"
    .parameter "partition"
    .parameter "checked"

    .prologue
    .line 660
    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    .line 662
    .local v0, dataid:J
    if-eqz p3, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    .line 665
    .local v2, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 667
    .end local v2           #serviceIntent:Landroid/content/Intent;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method public onDoneClicked()V
    .locals 0

    .prologue
    .line 967
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 919
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 921
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 922
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAll()V

    .line 924
    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 8
    .parameter "position"
    .parameter "id"

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v5, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 373
    .local v4, uri:Landroid/net/Uri;
    :goto_0
    if-nez v4, :cond_1

    .line 403
    :goto_1
    return-void

    .line 371
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, contactId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 379
    .local v1, partition:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 380
    .local v2, targetId:J
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    sparse-switch v5, :sswitch_data_0

    .line 399
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid or unhandled action code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 385
    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 386
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->removeContact(Ljava/lang/String;I)V

    .line 387
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 389
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v5

    if-nez v5, :cond_3

    .line 391
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 392
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 394
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog()V

    goto :goto_1

    .line 380
    nop

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
    .end sparse-switch
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 361
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 363
    return-void
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
    .line 351
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->configureEmptyView(Z)V

    .line 352
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 353
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->refreshSelectAllState()V

    .line 354
    return-void

    .line 351
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPickerResult()V
    .locals 2

    .prologue
    .line 411
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "onPickerResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z

    .line 417
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickGroupDataAction(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    .line 408
    return-void
.end method

.method public onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Z)V
    .locals 5
    .parameter "cursor"
    .parameter "partition"
    .parameter "flag"

    .prologue
    const/4 v4, 0x0

    .line 424
    const-string v2, "InteractionGroupMemberPickerFragment"

    const-string v3, " === onQueryCompleted === "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Landroid/database/Cursor;Ljava/lang/String;Z)V

    .line 429
    .local v0, contactDatas:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;
    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 430
    iget v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;->mAvailableDataCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 431
    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;->mPartition:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;Ljava/lang/String;)V

    .line 441
    :goto_0
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    .line 443
    :cond_0
    return-void

    .line 434
    :cond_1
    new-instance v1, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;-><init>()V

    .line 435
    .local v1, dialog:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;
    invoke-virtual {v1, p0, v4}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 436
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->setName(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->setContactDatas(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;)V

    .line 438
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DataBrowseDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRevertAction()V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onRevertAction()V

    .line 944
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDoneButton(I)V

    .line 481
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->refreshSelectAllState()V

    .line 482
    return-void
.end method

.method public pickContact(Landroid/net/Uri;IZ)V
    .locals 5
    .parameter "uri"
    .parameter "partition"
    .parameter "flag"

    .prologue
    .line 932
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, contactId:Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setFromSelectall(Z)V

    .line 935
    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V

    .line 936
    .local v1, dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 937
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 195
    if-nez p1, :cond_0

    .line 199
    :cond_0
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
    .line 180
    .local p1, exceptedAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    .line 183
    :cond_0
    return-void
.end method

.method public setFromSelectall(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 900
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    .line 901
    return-void
.end method

.method public setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .parameter "groupInfo"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 167
    return-void
.end method

.method public setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 143
    return-void
.end method

.method public setMMSinformation(III)V
    .locals 0
    .parameter "ActionCode"
    .parameter "LimitedCount"
    .parameter "CurrentCount"

    .prologue
    .line 970
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    .line 971
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    .line 972
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    .line 973
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 158
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMode:I

    .line 159
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
    .line 174
    .local p1, modifiedMemberIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 175
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    .line 177
    :cond_0
    return-void
.end method

.method public setSelectAllEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectAllEnabled:Z

    .line 151
    return-void
.end method
