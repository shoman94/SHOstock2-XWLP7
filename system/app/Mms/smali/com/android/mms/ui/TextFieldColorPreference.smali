.class public Lcom/android/mms/ui/TextFieldColorPreference;
.super Landroid/preference/ListPreference;
.source "TextFieldColorPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageData:[I

.field private mTextFieldColor:[Ljava/lang/String;

.field private mTextFieldColorListAdapter:Lcom/android/mms/ui/TextFieldColorAdapter;

.field private mTextFieldColorName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorListAdapter:Lcom/android/mms/ui/TextFieldColorAdapter;

    .line 27
    iput-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColor:[Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorName:[Ljava/lang/String;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mImageData:[I

    .line 43
    iput-object p1, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColor:[Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorName:[Ljava/lang/String;

    .line 51
    return-void

    .line 32
    nop

    :array_0
    .array-data 0x4
        0x6t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private savePreferences(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 54
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColor:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_text_field_color"

    iget-object v2, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColor:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorName:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/TextFieldColorPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 94
    invoke-direct {p0, p2}, Lcom/android/mms/ui/TextFieldColorPreference;->savePreferences(I)V

    .line 95
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 96
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorListAdapter:Lcom/android/mms/ui/TextFieldColorAdapter;

    .line 101
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 102
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6
    .parameter "builder"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, adiArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/AlertDialogItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 76
    new-instance v3, Lcom/android/mms/ui/AlertDialogItem;

    iget-object v4, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mImageData:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorName:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v3, v4, v5}, Lcom/android/mms/ui/AlertDialogItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorListAdapter:Lcom/android/mms/ui/TextFieldColorAdapter;

    if-nez v3, :cond_1

    .line 79
    new-instance v3, Lcom/android/mms/ui/TextFieldColorAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f030032

    invoke-direct {v3, v4, v5, v0}, Lcom/android/mms/ui/TextFieldColorAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorListAdapter:Lcom/android/mms/ui/TextFieldColorAdapter;

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Landroid/content/Context;)I

    move-result v2

    .line 82
    .local v2, selected:I
    iget-object v3, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorListAdapter:Lcom/android/mms/ui/TextFieldColorAdapter;

    invoke-virtual {p1, v3, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    return-void
.end method

.method public setSummaryByIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 65
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColor:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorName:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TextFieldColorPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 86
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TextFieldColorPreference;->setEntries(I)V

    .line 87
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TextFieldColorPreference;->setEntryValues(I)V

    .line 89
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method
