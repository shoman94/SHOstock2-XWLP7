.class final Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactBrowserActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactBrowserActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1108
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onAddToFavoritesAction(Landroid/net/Uri;)V
    .locals 4
    .parameter "contactUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1159
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1160
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "starred"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1161
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1162
    return-void
.end method

.method public onCallContactAction(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1174
    return-void
.end method

.method public onDeleteContactAction(Landroid/net/Uri;)V
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 1184
    return-void
.end method

.method public onEditContactAction(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactLookupUri"

    .prologue
    .line 1149
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1150
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1151
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1154
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 1155
    return-void
.end method

.method public onInvalidSelection()V
    .locals 4

    .prologue
    const/4 v3, -0x6

    .line 1194
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 1195
    .local v0, currentFilter:Lcom/android/contacts/list/ContactListFilter;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v2, v3, :cond_0

    .line 1197
    const/4 v2, -0x2

    invoke-static {v2}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 1199
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 1205
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 1206
    return-void

    .line 1201
    .end local v1           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_0
    invoke-static {v3}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 1203
    .restart local v1       #filter:Lcom/android/contacts/list/ContactListFilter;
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_0
.end method

.method public onRemoveFromFavoritesAction(Landroid/net/Uri;)V
    .locals 4
    .parameter "contactUri"

    .prologue
    const/4 v3, 0x0

    .line 1166
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1167
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "starred"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1168
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1169
    return-void
.end method

.method public onSelectionChange()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$1200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSelectedContactUri()Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/android/contacts/activities/PeopleActivity;->setupContactDetailFragment(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->access$1400(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V

    .line 1115
    :cond_0
    return-void
.end method

.method public onSmsContactAction(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForTextMessage(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1179
    return-void
.end method

.method public onViewContactAction(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactLookupUri"

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #calls: Lcom/android/contacts/activities/PeopleActivity;->setupContactDetailFragment(Landroid/net/Uri;)V
    invoke-static {v1, p1}, Lcom/android/contacts/activities/PeopleActivity;->access$1400(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V

    .line 1135
    :goto_0
    return-void

    .line 1122
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1132
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ignoreDefaultUpBehavior"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1133
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
