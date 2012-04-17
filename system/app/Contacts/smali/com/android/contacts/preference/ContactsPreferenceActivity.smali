.class public final Lcom/android/contacts/preference/ContactsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ContactsPreferenceActivity.java"


# instance fields
.field private mOnlyPhones:Z

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "onlyContactWithPhonesChanged"

    iget-boolean v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mOnlyPhones:Z

    iget-object v3, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlyPhones()Z

    move-result v3

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->finish()V

    .line 99
    return-void

    .line 96
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f050001

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x4

    .line 47
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 52
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 55
    :cond_0
    new-instance v1, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v1, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 56
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 57
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "only_phones"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mOnlyPhones:Z

    .line 58
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 89
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 85
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->onBackPressed()V

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
