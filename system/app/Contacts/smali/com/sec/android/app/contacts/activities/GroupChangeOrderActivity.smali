.class public Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupChangeOrderActivity.java"


# instance fields
.field private mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    return-object v0
.end method

.method private configureContentView(ZLandroid/os/Bundle;)V
    .locals 1
    .parameter "createContentView"
    .parameter "savedState"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    const v0, 0x7f040074

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setContentView(I)V

    .line 72
    :cond_0
    return-void
.end method

.method private setActionBar()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 76
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 77
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 78
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040018

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, customActionBarView:Landroid/view/View;
    const v5, 0x7f0d009e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 81
    .local v4, saveMenuItem:Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v5, 0x7f0d009f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, revertMenuItem:Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const/16 v5, 0x1e

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 100
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 104
    const v5, 0x7f0a022a

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 106
    .end local v1           #customActionBarView:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #revertMenuItem:Landroid/view/View;
    .end local v4           #saveMenuItem:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d0179

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setActionBar()V

    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 113
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->finish()V

    .line 117
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
