.class public Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactMultiSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarButtonUpdateListener;,
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;,
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionCode:I

.field private mCustomActionBarView:Landroid/view/View;

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

.field private mIsAutoAdd:Z

.field protected mListFragment:Landroid/app/Fragment;

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
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    .line 85
    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->updateDoneButtonState(Z)V

    return-void
.end method

.method private configureActivityTitle(Landroid/app/ActionBar;)V
    .locals 2
    .parameter "actionBar"

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 171
    const-string v0, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    iget v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 174
    const v0, 0x7f0a0223

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 177
    const v0, 0x7f0a0224

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 180
    :cond_2
    const-string v0, "com.sec.android.app.contacts.action.GROUP_DELETE"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    const v0, 0x7f0a028e

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 182
    :cond_3
    const-string v0, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const v0, 0x7f0a021d

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private getIntentInfo(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    .line 190
    const-string v0, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    const-string v0, "EditMode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    .line 193
    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "DTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MAX"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    :cond_0
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    const-string v1, "accountType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accountName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "groupId"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "systemId"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 205
    :goto_0
    const-string v0, "AutoAdd"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsAutoAdd:Z

    .line 207
    const-string v0, "ModifiedIds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    .line 208
    const-string v0, "ExceptedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    .line 212
    :cond_1
    :goto_1
    return-void

    .line 202
    :cond_2
    const-string v0, "GroupInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    goto :goto_0

    .line 209
    :cond_3
    const-string v0, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "SelectedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedAccounts:Ljava/util/List;

    goto :goto_1
.end method

.method private updateDoneButtonState(Z)V
    .locals 3
    .parameter "isEnable"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    const v2, 0x7f0d009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 329
    .local v0, saveMenuItem:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 330
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 4

    .prologue
    .line 219
    const-string v1, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;-><init>()V

    .line 221
    .local v0, fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setMode(I)V

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 224
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsAutoAdd:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setAutoAdd(Z)V

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setModifiedMemberIds(Ljava/util/List;)V

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setExceptedAccounts(Ljava/util/List;)V

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setDirectorySearchMode(I)V

    .line 229
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    .line 239
    .end local v0           #fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d00e6

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 241
    return-void

    .line 230
    :cond_1
    const-string v1, "com.sec.android.app.contacts.action.GROUP_DELETE"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;-><init>()V

    .line 232
    .local v0, fragment:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0

    .line 233
    .end local v0           #fragment:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
    :cond_2
    const-string v1, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    new-instance v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;-><init>()V

    .line 235
    .local v0, fragment:Lcom/sec/android/app/contacts/group/AccountPickerFragment;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->setSelectedAccounts(Ljava/util/List;)V

    .line 236
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 89
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    if-eqz v0, :cond_1

    .line 90
    check-cast p1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setupActionListener()V

    .line 97
    return-void

    .line 91
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v0, :cond_2

    .line 92
    check-cast p1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0

    .line 93
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedState"

    .prologue
    const/4 v8, -0x2

    .line 101
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    if-eqz p1, :cond_0

    .line 104
    const-string v5, "actionCode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 108
    .local v2, intent:Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getIntentInfo(Landroid/content/Intent;)V

    .line 110
    const v5, 0x7f04003b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setContentView(I)V

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 113
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 114
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 115
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040018

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    .line 116
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    const v6, 0x7f0d009e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 117
    .local v4, saveMenuItem:Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    const v6, 0x7f0d009f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 126
    .local v3, revertMenuItem:Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const/16 v5, 0x1e

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 137
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 141
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->configureActivityTitle(Landroid/app/ActionBar;)V

    .line 143
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #revertMenuItem:Landroid/view/View;
    .end local v4           #saveMenuItem:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->configureListFragment()V

    .line 144
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, action:Ljava/lang/String;
    const-string v1, "deleteCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->onDeleteCompleted()V

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 248
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finish()V

    .line 252
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    return-void
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarButtonUpdateListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarButtonUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->setActionBarButtonUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->setAccountPickerActionListener(Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;)V

    goto :goto_0
.end method
