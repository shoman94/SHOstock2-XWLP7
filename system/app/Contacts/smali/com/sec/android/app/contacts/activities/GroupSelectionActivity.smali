.class public Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupSelectionActivity.java"


# static fields
.field public static mSaveMenuItem:Landroid/view/View;


# instance fields
.field private mCheckedGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

.field private mRawContactId:J

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mRawContactId:J

    return-wide v0
.end method

.method public static onUpdateSaveMenuItem(Z)V
    .locals 3
    .parameter "status"

    .prologue
    .line 169
    sget-object v1, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mSaveMenuItem:Landroid/view/View;

    const v2, 0x7f0d009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, saveMenuItem:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 171
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 173
    :cond_0
    return-void

    .line 171
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 59
    instance-of v0, p1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .line 62
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->finish()V

    .line 153
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x1e

    const/4 v7, -0x2

    .line 65
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v5, 0x7f040083

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 68
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 72
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 73
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040018

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, customActionBarView:Landroid/view/View;
    const v5, 0x7f0d009e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mSaveMenuItem:Landroid/view/View;

    .line 75
    sget-object v5, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mSaveMenuItem:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v5, 0x7f0d009f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 95
    .local v4, revertMenuItem:Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v0, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0245

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 110
    .end local v1           #customActionBarView:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #revertMenuItem:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.RAWCONTACT_ID"

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mRawContactId:J

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 112
    .local v2, extras:Landroid/os/Bundle;
    const-string v5, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mCheckedGroupList:Ljava/util/ArrayList;

    .line 114
    const-string v5, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mTitles:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0d019a

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .line 118
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->loadData(Landroid/os/Bundle;)V

    .line 119
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 127
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    if-nez v6, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, action:Ljava/lang/String;
    const-string v6, "android.intent.action.EDIT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    const-string v6, "title"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, strTitle:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 134
    .local v4, groupUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 136
    .local v2, extras:Landroid/os/Bundle;
    const-string v6, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 138
    .local v3, groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v6, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 139
    .local v0, Titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mCheckedGroupList:Ljava/util/ArrayList;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mTitles:Ljava/util/ArrayList;

    .line 141
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->loadData(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 158
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->finish()V

    .line 159
    const/4 v0, 0x1

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 123
    return-void
.end method
