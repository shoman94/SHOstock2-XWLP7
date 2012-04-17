.class public Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
.super Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.source "GroupMemberBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;
    }
.end annotation


# instance fields
.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mGroupType:I

.field private mIsEditable:Z

.field private mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    .line 193
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setPhotoLoaderEnabled(Z)V

    .line 195
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .locals 1
    .parameter "isEmpty"

    .prologue
    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    .line 602
    return-void
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 3
    .parameter "anchorView"

    .prologue
    .line 501
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 503
    .local v1, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 505
    .local v0, menu:Landroid/view/Menu;
    const v2, 0x7f10000f

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 507
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Landroid/widget/PopupMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 519
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 521
    return-object v1
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const v4, 0x7f0d0276

    const v3, 0x7f0d0239

    const/4 v2, 0x0

    .line 530
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    if-nez v0, :cond_0

    .line 531
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 532
    const v0, 0x7f0d0277

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 536
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 537
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 539
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 540
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 541
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 542
    const v0, 0x7f0d0238

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 544
    :cond_2
    return-void
.end method

.method private updateAddBtnVisible()V
    .locals 3

    .prologue
    .line 550
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    if-nez v1, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 554
    .local v0, addBtn:Landroid/widget/ImageButton;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 558
    .end local v0           #addBtn:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method private updateMenuBtnVisible(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/16 v3, 0x8

    .line 564
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0198

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 568
    .local v0, menuBtn:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 592
    :goto_0
    return-void

    .line 580
    :cond_1
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 584
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 588
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected createCustomSearchbar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 347
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 351
    .local v0, addBtn:Landroid/widget/ImageButton;
    const v2, 0x7f020010

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 353
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 375
    .local v1, menuBtn:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 413
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d00ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 415
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 417
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 419
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 421
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 423
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0a01ac

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$3;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 491
    return-void

    .line 383
    :cond_1
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;-><init>(Landroid/content/Context;)V

    .line 264
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setDisplayPhotos(Z)V

    .line 270
    return-object v0
.end method

.method public isLoading()Z
    .locals 3

    .prologue
    .line 802
    const/4 v0, 0x0

    .line 804
    .local v0, isLoading:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getFakeQueryStatus()I

    move-result v1

    .line 808
    .local v1, status:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isFakeQueryModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 820
    :goto_0
    return v0

    .line 810
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 814
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isLoading()Z

    move-result v0

    goto :goto_0
.end method

.method public loadGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 2
    .parameter "groupInfo"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 227
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .line 231
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setMode(I)V

    .line 233
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 235
    return-void
.end method

.method public loadGroupWithReload(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .parameter "groupInfo"

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->loadGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->reloadData()V

    .line 240
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 696
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 734
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 700
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 708
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 710
    .local v0, contactUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 712
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "CONTACT_URI"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 714
    const-string v3, "mode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 716
    const-string v3, "direct_launch"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 718
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 726
    .end local v0           #contactUri:Landroid/net/Uri;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 696
    :sswitch_data_0
    .sparse-switch
        0x7f0d024e -> :sswitch_1
        0x7f0d024f -> :sswitch_2
        0x7f0d0269 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 14
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 610
    iget v11, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 684
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    move-object/from16 v7, p3

    .line 620
    check-cast v7, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 622
    .local v7, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    iget v11, v7, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v12

    sub-int v1, v11, v12

    .line 624
    .local v1, adjPosition:I
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 626
    .local v4, contactUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 630
    .local v2, contactId:J
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 634
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    .line 636
    .local v6, inflater:Landroid/view/MenuInflater;
    const v11, 0x7f10000b

    invoke-virtual {v6, v11, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 642
    iget v11, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 644
    const/4 v11, 0x1

    new-array v8, v11, [J

    const/4 v11, 0x0

    aput-wide v2, v8, v11

    .line 646
    .local v8, membersToEditArray:[J
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    const/4 v13, 0x4

    invoke-static {v11, v12, v8, v13}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JI)Landroid/content/Intent;

    move-result-object v9

    .line 650
    .local v9, removeIntent:Landroid/content/Intent;
    const v11, 0x7f0d0269

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 662
    .end local v8           #membersToEditArray:[J
    .end local v9           #removeIntent:Landroid/content/Intent;
    :goto_1
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 664
    .local v10, sendInfoIntent:Landroid/content/Intent;
    invoke-virtual {v10, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 666
    const v11, 0x7f0d024e

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 672
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->isContactStarred(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 674
    const v11, 0x7f0d024f

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const v12, 0x7f0a0022

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->isContactStarred(I)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    :goto_2
    invoke-static {v12, v4, v11}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v5

    .line 682
    .local v5, favoriteIntent:Landroid/content/Intent;
    const v11, 0x7f0d024f

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 654
    .end local v5           #favoriteIntent:Landroid/content/Intent;
    .end local v10           #sendInfoIntent:Landroid/content/Intent;
    :cond_2
    const v11, 0x7f0d0269

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 678
    .restart local v10       #sendInfoIntent:Landroid/content/Intent;
    :cond_3
    const/4 v11, 0x0

    goto :goto_2
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 279
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 280
    const v1, 0x7f0400d2

    invoke-virtual {p1, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 281
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 282
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 2
    .parameter "position"
    .parameter "id"

    .prologue
    .line 744
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 746
    return-void
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
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 309
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->configureEmptyView(Z)V

    .line 311
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 317
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->updateMenuBtnVisible(Z)V

    .line 319
    return-void

    :cond_0
    move v0, v2

    .line 309
    goto :goto_0

    :cond_1
    move v1, v2

    .line 317
    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mStartedLoading:Z

    .line 287
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadData()V

    .line 289
    return-void
.end method

.method public setIsEditableGroup(Z)V
    .locals 0
    .parameter "isEditable"

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    .line 245
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->updateAddBtnVisible()V

    .line 246
    return-void
.end method

.method public setListener(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    .line 207
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 219
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 4
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 770
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getFakeQueryStatus()I

    move-result v1

    .line 772
    .local v1, status:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isFakeQueryModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    if-gt v1, v3, :cond_0

    .line 788
    :goto_0
    return-void

    .line 780
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 782
    .local v0, size:I
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mUserProfileExists:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    sub-int/2addr v0, v3

    .line 784
    if-gez v0, :cond_1

    move v0, v2

    .line 786
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;->onGroupSizeUpdated(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v2

    .line 782
    goto :goto_1
.end method
