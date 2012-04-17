.class public Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "InteractionPickerFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$DataQueryTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;"
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCounterHeaderView:Landroid/view/View;

.field private mCurrentCount:I

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFromSelectAll:Z

.field protected mGroupFilter:Z

.field protected mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mHeaderView:Landroid/view/View;

.field private mIsDoneButtonClicked:Z

.field private mIsSelectAllRunning:Z

.field private mLimitedCount:I

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field protected mSearchView:Landroid/widget/SearchView;

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

.field private mSpeedDial:Z

.field private nUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 94
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsSelectAllRunning:Z

    .line 96
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsDoneButtonClicked:Z

    .line 107
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHasPhoneData:Z

    .line 108
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHasPhoneSearchData:Z

    .line 109
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHasGalSearchData:Z

    .line 116
    const-string v0, "InteractionPickerFragment"

    const-string v1, "InteractionPickerFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 118
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 123
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setQuickContactEnabled(Z)V

    .line 124
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDirectorySearchMode(I)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSweepActionEnabled(Z)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mActionCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->excuteSelectAllVcard()V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsSelectAllRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsDoneButtonClicked:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsDoneButtonClicked:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSelectAllCheckedContacts(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->excuteSelectAllContacts()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mFromSelectAll:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->nUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSelectAllCheckedVcard(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->showMaxCountAlertDialog()V

    return-void
.end method

.method private addContactFromSelectAll(JILandroid/net/Uri;)V
    .locals 4
    .parameter "id"
    .parameter "partition"
    .parameter "uri"

    .prologue
    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, keyString:Ljava/lang/String;
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, selectedLookup:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    return-void
.end method

.method private addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 4
    .parameter "id"
    .parameter "partition"
    .parameter "uri"

    .prologue
    .line 648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, keyString:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, selectedLookup:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onSelectedInfoChanged()V

    .line 653
    return-void
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .parameter "dataInfo"
    .parameter "partition"
    .parameter "uri"

    .prologue
    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, keyString:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, dataString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSpeedDial:Z

    if-eqz v2, :cond_0

    .line 628
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V

    .line 632
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onSelectedInfoChanged()V

    goto :goto_0
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 4
    .parameter "dataInfo"
    .parameter "partition"
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, keyString:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, dataString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSpeedDial:Z

    if-eqz v2, :cond_0

    .line 641
    invoke-virtual {p0, p3, p4, p5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V

    .line 645
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onSelectedInfoChanged()V

    goto :goto_0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1222
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1226
    goto :goto_1

    :cond_3
    move v2, v1

    .line 1227
    goto :goto_2
.end method

.method private excuteSelectAllContacts()V
    .locals 2

    .prologue
    .line 283
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsSelectAllRunning:Z

    if-nez v1, :cond_0

    .line 284
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsSelectAllRunning:Z

    .line 285
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$1;)V

    .line 286
    .local v0, selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 288
    .end local v0           #selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;
    :cond_0
    return-void
.end method

.method private excuteSelectAllVcard()V
    .locals 2

    .prologue
    .line 275
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsSelectAllRunning:Z

    if-nez v1, :cond_0

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsSelectAllRunning:Z

    .line 277
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$1;)V

    .line 278
    .local v0, selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 280
    .end local v0           #selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;
    :cond_0
    return-void
.end method

.method private isMaxAdded()Z
    .locals 3

    .prologue
    .line 816
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mLimitedCount:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 817
    const/4 v0, 0x1

    .line 819
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
    .line 610
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

    .line 612
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;)Ljava/lang/String;
    .locals 7
    .parameter "dataInfo"

    .prologue
    .line 685
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 686
    .local v0, dataId:Ljava/lang/String;
    iget-object v1, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 687
    .local v1, displayName:Ljava/lang/String;
    iget-object v4, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->data:Ljava/lang/String;

    const-string v5, ","

    const-string v6, "P"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    const-string v6, "W"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, selectedInfo:Ljava/lang/String;
    const-string v4, ";"

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 690
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
    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshSelectAllState()V
    .locals 7

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 793
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    const/4 v4, 0x0

    .local v4, position:I
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 795
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 796
    .local v1, id:J
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 798
    .local v3, partition:I
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    .line 793
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 802
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 803
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 809
    .end local v1           #id:J
    .end local v3           #partition:I
    :goto_1
    return-void

    .line 808
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private removeContact(Ljava/lang/String;I)V
    .locals 3
    .parameter "id"
    .parameter "partition"

    .prologue
    .line 616
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

    .line 617
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onSelectedInfoChanged()V

    .line 619
    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;I)V
    .locals 3
    .parameter "id"
    .parameter "partition"

    .prologue
    .line 667
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

    .line 668
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    return-void
.end method

.method private removeVcardFromSelectAll(JI)V
    .locals 3
    .parameter "id"
    .parameter "partition"

    .prologue
    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    return-void
.end method

.method private setDoneButton(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 672
    if-nez p1, :cond_1

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    if-lez p1, :cond_0

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onOneDataInputed()V

    goto :goto_0
.end method

.method private setSelectAllCheckedContacts(Z)Z
    .locals 13
    .parameter "isChecked"

    .prologue
    .line 747
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 748
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 752
    .local v1, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 753
    .local v0, CurrentSelectItem:I
    const/4 v7, 0x0

    .local v7, position:I
    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v9

    if-ge v7, v9, :cond_4

    .line 754
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mFromSelectAll:Z

    .line 755
    iget v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mLimitedCount:I

    iget v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mCurrentCount:I

    sub-int/2addr v9, v11

    if-lt v0, v9, :cond_0

    .line 756
    const-string v9, "InteractionPickerFragment"

    const-string v11, "isMaxAdded "

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v9, 0x0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    :goto_1
    return v9

    .line 760
    :cond_0
    :try_start_1
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v8

    .line 761
    .local v8, uri:Landroid/net/Uri;
    if-nez v8, :cond_2

    .line 753
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 764
    :cond_2
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 765
    .local v2, contactId:Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 766
    .local v4, id:J
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 767
    .local v6, partition:I
    if-nez p1, :cond_3

    .line 768
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 769
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v6, v9}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 770
    add-int/lit8 v0, v0, 0x1

    .line 771
    const-string v9, "InteractionPickerFragment"

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

    .line 779
    .end local v2           #contactId:Ljava/lang/String;
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v8           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 780
    .local v3, e:Ljava/lang/IllegalStateException;
    const/4 v9, 0x1

    :try_start_2
    monitor-exit v10

    goto :goto_1

    .line 785
    .end local v0           #CurrentSelectItem:I
    .end local v1           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v3           #e:Ljava/lang/IllegalStateException;
    .end local v7           #position:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 775
    .restart local v0       #CurrentSelectItem:I
    .restart local v1       #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .restart local v2       #contactId:Ljava/lang/String;
    .restart local v4       #id:J
    .restart local v6       #partition:I
    .restart local v7       #position:I
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_3
    const/4 v9, 0x0

    :try_start_3
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mFromSelectAll:Z

    .line 776
    const-string v9, "InteractionPickerFragment"

    const-string v11, "mFromSelectAll set false"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 781
    .end local v2           #contactId:Ljava/lang/String;
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v8           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v3

    .line 782
    .local v3, e:Landroid/database/StaleDataException;
    const/4 v9, 0x1

    :try_start_4
    monitor-exit v10

    goto :goto_1

    .line 785
    .end local v3           #e:Landroid/database/StaleDataException;
    :cond_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 787
    const/4 v9, 0x1

    goto :goto_1
.end method

.method private setSelectAllCheckedVcard(Z)Z
    .locals 10
    .parameter "isChecked"

    .prologue
    const/4 v8, 0x1

    .line 707
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 708
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 713
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    const/4 v5, 0x0

    .local v5, position:I
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-ge v5, v7, :cond_4

    .line 715
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isMaxAdded()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_0

    .line 716
    const/4 v7, 0x0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 743
    :goto_1
    return v7

    .line 718
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 719
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v7, v5}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v6

    .line 723
    .local v6, uri:Landroid/net/Uri;
    :goto_2
    if-nez v6, :cond_2

    .line 713
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 721
    .end local v6           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {v7, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #uri:Landroid/net/Uri;
    goto :goto_2

    .line 726
    :cond_2
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 727
    .local v2, id:J
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v4

    .line 729
    .local v4, partition:I
    if-nez p1, :cond_3

    .line 730
    invoke-direct {p0, v2, v3, v4, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->addContactFromSelectAll(JILandroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 735
    .end local v2           #id:J
    .end local v4           #partition:I
    .end local v6           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 736
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v7, v8

    goto :goto_1

    .line 733
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .restart local v2       #id:J
    .restart local v4       #partition:I
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_3
    :try_start_5
    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->removeVcardFromSelectAll(JI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 737
    .end local v2           #id:J
    .end local v4           #partition:I
    .end local v6           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 738
    .local v1, e:Landroid/database/StaleDataException;
    :try_start_6
    monitor-exit v9

    move v7, v8

    goto :goto_1

    .line 741
    .end local v1           #e:Landroid/database/StaleDataException;
    :cond_4
    monitor-exit v9

    move v7, v8

    .line 743
    goto :goto_1

    .line 741
    .end local v0           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v5           #position:I
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v7
.end method

.method private showMaxCountAlertDialog()V
    .locals 6

    .prologue
    .line 823
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02e2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mLimitedCount:I

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

    .line 826
    return-void
.end method


# virtual methods
.method public clearSelectedArray()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 581
    return-void
.end method

.method protected configureAdapter()V
    .locals 3

    .prologue
    .line 316
    const-string v1, "InteractionPickerFragment"

    const-string v2, "configureAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 320
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 321
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    const-string v1, "InteractionPickerFragment"

    const-string v2, "createListAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 296
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mGroupFilter:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setGroupFilter(Z)V

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setGroupExtra(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 298
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 299
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setDisplayPhotos(Z)V

    .line 300
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setQuickContactEnabled(Z)V

    .line 301
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setActionCode(I)V

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setTopDividerEnabled(Z)V

    .line 310
    .end local v0           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_0
    :goto_0
    return-object v0

    .line 307
    :cond_1
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 309
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;)Ljava/lang/String;
    .locals 2
    .parameter "contactDatas"

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 573
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mDisplayName:Ljava/lang/String;

    .line 575
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 202
    const-string v1, "InteractionPickerFragment"

    const-string v2, " === inflateView() === "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const v1, 0x7f04003c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0a01ac

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchQuery()V

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 163
    const-string v0, "InteractionPickerFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 169
    const-string v1, "InteractionPickerFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mListContainer:Landroid/view/View;

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mEmptyView:Landroid/view/View;

    .line 176
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, headerContainer:Landroid/widget/FrameLayout;
    const v1, 0x7f0400d2

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mCounterHeaderView:Landroid/view/View;

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mCounterHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isMultiSelectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const v1, 0x7f0400b1

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHeaderView:Landroid/view/View;

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f0d0090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHeaderView:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 7
    .parameter "dataInfo"
    .parameter "partition"
    .parameter "checked"
    .parameter "uri"

    .prologue
    .line 982
    const-wide/16 v4, 0x0

    .line 985
    .local v4, dataid:J
    :try_start_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    .line 987
    if-eqz p3, :cond_0

    .line 988
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v6

    .line 990
    .local v6, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #serviceIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 994
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 995
    return-void

    .line 992
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 830
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 832
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 833
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mActionCode:I

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mActionCode:I

    const/16 v1, 0xfa

    if-ne v0, v1, :cond_2

    .line 835
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->excuteSelectAllVcard()V

    .line 840
    :cond_1
    :goto_0
    return-void

    .line 837
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->excuteSelectAllContacts()V

    goto :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 6
    .parameter "position"
    .parameter "id"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 339
    .local v2, uri:Landroid/net/Uri;
    :goto_0
    if-nez v2, :cond_1

    .line 381
    :goto_1
    return-void

    .line 337
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v2

    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, contactId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 346
    .local v1, partition:I
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mActionCode:I

    sparse-switch v3, :sswitch_data_0

    .line 376
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid or unhandled action code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mActionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 350
    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_1

    .line 353
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isMaxAdded()Z

    move-result v3

    if-nez v3, :cond_3

    .line 355
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto :goto_1

    .line 357
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->showMaxCountAlertDialog()V

    goto :goto_1

    .line 364
    :sswitch_1
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 365
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_1

    .line 367
    :cond_4
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_1

    .line 372
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->pickContact(Landroid/net/Uri;)V

    goto :goto_1

    .line 346
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_1
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
    .line 326
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 328
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 7
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
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 386
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mEnabled:Z

    if-nez v2, :cond_0

    .line 463
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 391
    .local v1, loaderId:I
    if-ne v1, v6, :cond_5

    .line 392
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mDirectoryListStatus:I

    .line 393
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 394
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->startLoading()V

    .line 447
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 448
    if-nez v1, :cond_2

    .line 449
    if-eqz p2, :cond_e

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_e

    .line 451
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHasPhoneData:Z

    .line 455
    :cond_2
    :goto_2
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHasPhoneData:Z

    if-nez v2, :cond_f

    :goto_3
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->configureEmptyView(Z)V

    .line 458
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isMultiSelectEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 459
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->refreshSelectAllState()V

    .line 461
    :cond_4
    const-string v2, "InteractionPickerFragment"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    :cond_5
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 401
    if-eqz p2, :cond_8

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 402
    if-nez v1, :cond_7

    .line 404
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHasPhoneSearchData:Z

    .line 419
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getDirectorySearchMode()I

    move-result v0

    .line 420
    .local v0, directorySearchMode:I
    if-eqz v0, :cond_6

    .line 421
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_a

    .line 422
    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mDirectoryListStatus:I

    .line 423
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 430
    :cond_6
    :goto_5
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHasPhoneSearchData:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHasGalSearchData:Z

    if-nez v2, :cond_b

    move v2, v3

    :goto_6
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->configureEmptyView(Z)V

    goto :goto_1

    .line 406
    .end local v0           #directorySearchMode:I
    :cond_7
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    .line 410
    :cond_8
    if-nez v1, :cond_9

    .line 411
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_4

    .line 414
    :cond_9
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    .line 425
    .restart local v0       #directorySearchMode:I
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->startLoading()V

    goto :goto_5

    :cond_b
    move v2, v4

    .line 430
    goto :goto_6

    .line 432
    .end local v0           #directorySearchMode:I
    :cond_c
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mDirectoryListStatus:I

    .line 433
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 436
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_1

    .line 437
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mFakeQueryStatus:I

    if-ne v2, v3, :cond_d

    .line 438
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mFakeQueryStatus:I

    .line 439
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->startFullQuery()V

    goto/16 :goto_1

    .line 440
    :cond_d
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    .line 441
    const/4 v2, 0x4

    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mFakeQueryStatus:I

    goto/16 :goto_1

    .line 453
    :cond_e
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mHasPhoneData:Z

    goto/16 :goto_2

    :cond_f
    move v3, v4

    .line 455
    goto/16 :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPickerResult()V
    .locals 3

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsDoneButtonClicked:Z

    .line 540
    :goto_0
    return-void

    .line 524
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    .line 537
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unhandled action code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickDataAction(Ljava/util/HashMap;)V

    goto :goto_0

    .line 533
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    goto :goto_0

    .line 524
    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_1
    .end sparse-switch
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    .line 504
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;)V

    .line 509
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;J)V
    .locals 1
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;J)V

    .line 515
    return-void
.end method

.method public onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 8
    .parameter "cursor"
    .parameter "partition"
    .parameter "uri"
    .parameter "flag"

    .prologue
    const/4 v7, 0x0

    .line 547
    const-string v1, "InteractionPickerFragment"

    const-string v2, " === onQueryCompleted === "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 550
    .local v0, contactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 551
    iget v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mAvailableDataCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 552
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;

    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mPartition:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;)V

    .line 563
    :goto_0
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mFromSelectAll:Z

    .line 565
    :cond_0
    return-void

    .line 555
    :cond_1
    new-instance v6, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    invoke-direct {v6}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;-><init>()V

    .line 556
    .local v6, dialog:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;
    invoke-virtual {v6, p0, v7}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 557
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->setName(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v6, v0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->setContactDatas(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;)V

    .line 559
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->setUri(Landroid/net/Uri;)V

    .line 560
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DataBrowseDialogFragment"

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onPickerResult()V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 602
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDoneButton(I)V

    .line 604
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->refreshSelectAllState()V

    goto :goto_0
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onPickerResult(Landroid/net/Uri;)V

    .line 585
    return-void
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V
    .locals 1
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 589
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onPickerResult(Landroid/net/Uri;J)V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDoneButton(I)V

    .line 591
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onInteractionPickerAction(Landroid/net/Uri;)V

    .line 467
    return-void
.end method

.method public pickContact(Landroid/net/Uri;IZ)V
    .locals 5
    .parameter "uri"
    .parameter "partition"
    .parameter "flag"

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, contactId:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setUri(Landroid/net/Uri;)V

    .line 472
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setFromSelectall(Z)V

    .line 473
    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$DataQueryTask;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$DataQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V

    .line 474
    .local v1, dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$DataQueryTask;
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

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 475
    return-void
.end method

.method public reloadData()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 145
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 156
    if-nez p1, :cond_0

    .line 159
    :cond_0
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 141
    return-void
.end method

.method public setFromSelectall(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 812
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mFromSelectAll:Z

    .line 813
    return-void
.end method

.method public setMMSinformation(III)V
    .locals 0
    .parameter "ActionCode"
    .parameter "LimitedCount"
    .parameter "CurrentCount"

    .prologue
    .line 1231
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mActionCode:I

    .line 1232
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mLimitedCount:I

    .line 1233
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mCurrentCount:I

    .line 1234
    return-void
.end method

.method public setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 136
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 479
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 480
    return-void
.end method

.method public setSearchQuery()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 259
    return-void
.end method

.method public setSpeedDial(Z)V
    .locals 0
    .parameter "SpeedDial"

    .prologue
    .line 1237
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSpeedDial:Z

    .line 1239
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 568
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->nUri:Landroid/net/Uri;

    .line 569
    return-void
.end method
