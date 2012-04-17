.class public Lcom/android/contacts/activities/NonPhoneActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "NonPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/NonPhoneActivity$NonPhoneDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 63
    return-void
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/android/contacts/activities/NonPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object v2

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/NonPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 57
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "tel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/contacts/activities/NonPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/android/contacts/activities/NonPhoneActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/contacts/activities/NonPhoneActivity;->finish()V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Lcom/android/contacts/activities/NonPhoneActivity$NonPhoneDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/activities/NonPhoneActivity$NonPhoneDialogFragment;-><init>()V

    .line 50
    .local v0, fragment:Lcom/android/contacts/activities/NonPhoneActivity$NonPhoneDialogFragment;
    const-string v2, "PHONE_NUMBER"

    invoke-static {v2, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/NonPhoneActivity$NonPhoneDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/contacts/activities/NonPhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "Fragment"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method
