.class public Lcom/android/contacts/activities/GroupBrowserActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupBrowserActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 33
    return-void
.end method

.method private configureContentView(ZLandroid/os/Bundle;)V
    .locals 1
    .parameter "createContentView"
    .parameter "savedState"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    const v0, 0x7f040073

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/GroupBrowserActivity;->setContentView(I)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/activities/GroupBrowserActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/GroupBrowserActivity;->setIntent(Landroid/content/Intent;)V

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/activities/GroupBrowserActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 45
    return-void
.end method
