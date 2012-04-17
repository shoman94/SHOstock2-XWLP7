.class public Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;
.super Ljava/lang/Object;
.source "ContactBrowseListContextMenuAdapter.java"

# interfaces
.implements Lcom/android/contacts/widget/ContextMenuAdapter;


# instance fields
.field private final mContactListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 99
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .local v4, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v8, p0, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;->mContactListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 106
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    iget-object v8, p0, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;->mContactListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    .line 107
    .local v3, headerViewsCount:I
    iget v8, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    sub-int v5, v8, v3

    .line 109
    .local v5, position:I
    invoke-virtual {v0, v5}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 110
    .local v1, contactUri:Landroid/net/Uri;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    move v6, v7

    .line 146
    .end local v0           #adapter:Lcom/android/contacts/list/ContactListAdapter;
    .end local v1           #contactUri:Landroid/net/Uri;
    .end local v3           #headerViewsCount:I
    .end local v4           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v5           #position:I
    :goto_0
    return v6

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v6, "LightContactBrowserContextMenuAdapter"

    const-string v8, "Bad menuInfo"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 102
    goto :goto_0

    .line 112
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v0       #adapter:Lcom/android/contacts/list/ContactListAdapter;
    .restart local v1       #contactUri:Landroid/net/Uri;
    .restart local v3       #headerViewsCount:I
    .restart local v4       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v5       #position:I
    :pswitch_0
    iget-object v7, p0, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;->mContactListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v7, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 117
    :pswitch_1
    invoke-virtual {v0, v5}, Lcom/android/contacts/list/ContactListAdapter;->isContactStarred(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    iget-object v7, p0, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;->mContactListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v7, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->removeFromFavorites(Landroid/net/Uri;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;->mContactListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v7, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->addToFavorites(Landroid/net/Uri;)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v7, p0, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;->mContactListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v7, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->callContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v7, p0, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;->mContactListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v7, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->smsContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 136
    :pswitch_4
    iget-object v7, p0, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;->mContactListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v7, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->editContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 141
    :pswitch_5
    iget-object v7, p0, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;->mContactListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v7, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->deleteContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 13
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x0

    .line 57
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v7, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v9, p0, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;->mContactListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    .line 64
    .local v1, adapter:Lcom/android/contacts/list/ContactListAdapter;
    iget-object v9, p0, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;->mContactListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v6

    .line 65
    .local v6, headerViewsCount:I
    iget v9, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    sub-int v8, v9, v6

    .line 68
    .local v8, position:I
    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 71
    const/4 v9, 0x1

    const v10, 0x7f0a001f

    invoke-interface {p1, v11, v9, v11, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 73
    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactListAdapter;->getHasPhoneNumber(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 74
    iget-object v9, p0, Lcom/android/contacts/list/ContactBrowseListContextMenuAdapter;->mContactListFragment:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 75
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v4

    .line 76
    .local v4, hasPhoneApp:Z
    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v5

    .line 78
    .local v5, hasSmsApp:Z
    if-eqz v4, :cond_0

    const/4 v9, 0x2

    const v10, 0x7f0a0025

    invoke-interface {p1, v11, v9, v11, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 80
    :cond_0
    if-eqz v5, :cond_1

    const/4 v9, 0x3

    const v10, 0x7f0a0026

    invoke-interface {p1, v11, v9, v11, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 84
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #hasPhoneApp:Z
    .end local v5           #hasSmsApp:Z
    :cond_1
    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactListAdapter;->isContactStarred(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 85
    const v9, 0x7f0a0021

    invoke-interface {p1, v11, v12, v11, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 91
    :goto_0
    const/4 v9, 0x4

    const v10, 0x7f0a0023

    invoke-interface {p1, v11, v9, v11, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 92
    const/4 v9, 0x5

    const v10, 0x7f0a0024

    invoke-interface {p1, v11, v9, v11, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 93
    .end local v1           #adapter:Lcom/android/contacts/list/ContactListAdapter;
    .end local v6           #headerViewsCount:I
    .end local v7           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v8           #position:I
    :goto_1
    return-void

    .line 58
    :catch_0
    move-exception v3

    .line 59
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v9, "LightContactBrowserContextMenuAdapter"

    const-string v10, "Bad menuInfo"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 87
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v1       #adapter:Lcom/android/contacts/list/ContactListAdapter;
    .restart local v6       #headerViewsCount:I
    .restart local v7       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v8       #position:I
    :cond_2
    const v9, 0x7f0a0022

    invoke-interface {p1, v11, v12, v11, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method
