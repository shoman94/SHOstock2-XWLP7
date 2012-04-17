.class public Lcom/android/mms/ui/FontSizePreference;
.super Landroid/preference/ListPreference;
.source "FontSizePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

.field private mFontSize:[Ljava/lang/String;

.field private mFontSizeName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    .line 28
    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method private savePreferences(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 48
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_font_size"

    iget-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x3

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FontSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 100
    invoke-direct {p0, p2}, Lcom/android/mms/ui/FontSizePreference;->savePreferences(I)V

    .line 101
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 102
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    .line 106
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 107
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .parameter "builder"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, fontSizes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x3

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    if-nez v3, :cond_1

    .line 84
    new-instance v3, Lcom/android/mms/ui/FontSizeAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/mms/ui/FontSizeAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    .line 85
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSelectedFontSizeIndexByPref(Landroid/content/Context;)I

    move-result v2

    .line 87
    .local v2, selected:I
    add-int/lit8 v2, v2, -0x3

    .line 88
    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    invoke-virtual {p1, v3, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    return-void
.end method

.method public setSummaryByIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 66
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FontSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 92
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FontSizePreference;->setEntries(I)V

    .line 93
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FontSizePreference;->setEntryValues(I)V

    .line 95
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method
