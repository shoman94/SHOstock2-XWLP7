.class public Lcom/android/contacts/group/GroupDetailFragment;
.super Landroid/app/Fragment;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupDetailFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mAccountTypeString:Ljava/lang/String;

.field private mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

.field private mCloseActivityAfterDelete:Z

.field private final mContactTileListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/lang/String;

.field private mGroupId:J

.field private final mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private mGroupSize:Landroid/widget/TextView;

.field private mGroupSourceView:Landroid/view/View;

.field private mGroupSourceViewContainer:Landroid/view/ViewGroup;

.field private mGroupTitle:Landroid/widget/TextView;

.field private mGroupUri:Landroid/net/Uri;

.field private mIsReadOnly:Z

.field private mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

.field private mMemberListView:Landroid/widget/ListView;

.field private mOptionsMenuGroupDeletable:Z

.field private mOptionsMenuGroupPresent:Z

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mRootView:Landroid/view/View;

.field private mShowGroupActionInActionBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 205
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$1;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactTileListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    .line 217
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$2;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 249
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$3;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupDetailFragment;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->bindGroupMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startGroupMembersLoader()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupDetailFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->updateSize(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupDetailFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupDetailFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/list/ContactTileAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    return-object v0
.end method

.method private bindGroupMetaData(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 268
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 269
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    .line 271
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    .line 272
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    .line 273
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    .line 274
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsReadOnly:Z

    .line 275
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupDetailFragment;->updateTitle(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 279
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, accountTypeString:Ljava/lang/String;
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, dataSet:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->updateAccountType(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .end local v0           #accountTypeString:Ljava/lang/String;
    .end local v1           #dataSet:Ljava/lang/String;
    :cond_0
    return-void

    .line 274
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private configurePhotoLoader()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 179
    :cond_2
    return-void
.end method

.method private startGroupMembersLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 201
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 203
    return-void
.end method

.method private startGroupMetadataLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 195
    return-void
.end method

.method private updateAccountType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "accountTypeString"
    .parameter "dataSet"

    .prologue
    .line 328
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mShowGroupActionInActionBar:Z

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v2, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onAccountTypeUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 334
    .local v1, manager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 339
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewGroupActivity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 340
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 341
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->getNewGroupSourceView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    .line 345
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 346
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 351
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    invoke-static {v2, v3, p1, p2}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->bindGroupSourceView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    new-instance v3, Lcom/android/contacts/group/GroupDetailFragment$4;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/group/GroupDetailFragment$4;-><init>(Lcom/android/contacts/group/GroupDetailFragment;Lcom/android/contacts/model/AccountType;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 364
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSize(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 299
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 300
    const/4 v1, 0x0

    .line 310
    .local v1, groupSizeString:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_1
    return-void

    .line 302
    .end local v1           #groupSizeString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0006

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, groupSizeTemplateString:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 306
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #groupSizeString:Ljava/lang/String;
    goto :goto_0

    .line 313
    .end local v0           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v2           #groupSizeTemplateString:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v3, v1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onGroupSizeUpdated(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v0, p1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onGroupTitleUpdated(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public isGroupDeletable()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsReadOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupPresent()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 2

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupDeletable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupPresent:Z

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupPresent()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadGroup(Landroid/net/Uri;)V
    .locals 0
    .parameter "groupUri"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    .line 160
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startGroupMetadataLoader()V

    .line 161
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 126
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    .line 127
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 129
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 130
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 132
    .local v0, columnCount:I
    new-instance v2, Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactTileListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    sget-object v4, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-direct {v2, p1, v3, v0, v4}, Lcom/android/contacts/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter$Listener;ILcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    .line 135
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->configurePhotoLoader()V

    .line 136
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 385
    const v0, 0x7f10000f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 386
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupDetailFragment;->setHasOptionsMenu(Z)V

    .line 147
    const v0, 0x7f040079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0d017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    .line 152
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    .line 153
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    .line 142
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 415
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 426
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 417
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    .line 421
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mCloseActivityAfterDelete:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->show(Landroid/app/FragmentManager;JLjava/lang/String;Z)V

    .line 423
    const/4 v0, 0x1

    goto :goto_1

    .line 415
    :pswitch_data_0
    .packed-switch 0x7f0d0277
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupDeletable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    .line 404
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupPresent:Z

    .line 406
    const v2, 0x7f0d0277

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 407
    .local v1, editMenu:Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupPresent:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 409
    const v2, 0x7f0d0278

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 410
    .local v0, deleteMenu:Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 411
    return-void

    .end local v0           #deleteMenu:Landroid/view/MenuItem;
    .end local v1           #editMenu:Landroid/view/MenuItem;
    :cond_0
    move v2, v4

    .line 403
    goto :goto_0

    :cond_1
    move v3, v4

    .line 404
    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 372
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 376
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/group/GroupDetailFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    .line 183
    return-void
.end method

.method public setQuickContact(Z)V
    .locals 1
    .parameter "enableQuickContact"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->enableQuickContact(Z)V

    .line 165
    return-void
.end method
