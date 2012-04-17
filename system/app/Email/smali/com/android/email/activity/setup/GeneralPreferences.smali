.class public Lcom/android/email/activity/setup/GeneralPreferences;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAutoAdvance:Landroid/preference/ListPreference;

.field private mDeleteEmailConfirm:Landroid/preference/CheckBoxPreference;

.field mLineSummaries:[Ljava/lang/CharSequence;

.field private mPreView:Landroid/preference/ListPreference;

.field private mPreferences:Lcom/android/email/Preferences;

.field mSizeSummaries:[Ljava/lang/CharSequence;

.field private mSplitMode:Landroid/preference/CheckBoxPreference;

.field private mTopMode:Landroid/preference/ListPreference;

.field mTopModeSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private loadSettings()V
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    .line 158
    const-string v1, "auto_advance"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    .line 159
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getAutoAdvanceDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 160
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    const-string v1, "preview_line"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreView:Landroid/preference/ListPreference;

    .line 171
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreView:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getPreViewLine()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 172
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreView:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    const-string v1, "general_preference"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 175
    .local v0, generalPreferenceCategory:Landroid/preference/PreferenceCategory;
    const-string v1, "delete_email_confirm"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mDeleteEmailConfirm:Landroid/preference/CheckBoxPreference;

    .line 176
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mDeleteEmailConfirm:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mDeleteEmailConfirm:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0802ae

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 178
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mDeleteEmailConfirm:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 179
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mDeleteEmailConfirm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mDeleteEmailConfirm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_0
    const-string v1, "split_mode"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSplitMode:Landroid/preference/CheckBoxPreference;

    .line 191
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSplitMode:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getSplitMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 192
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSplitMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    const-string v1, "top_line_info_mode"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTopMode:Landroid/preference/ListPreference;

    .line 206
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTopMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getTopLineInfoMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 207
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTopMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->reloadDynamicSummaries()V

    .line 210
    return-void
.end method

.method private reloadDynamicSummaries()V
    .locals 6

    .prologue
    .line 216
    iget-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    .line 218
    .local v1, textZoomIndex:I
    iget-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 230
    .local v0, summary:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getPreViewLine()I

    move-result v2

    .line 232
    .local v2, textpreviewlineIndex:I
    iget-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mLineSummaries:[Ljava/lang/CharSequence;

    if-nez v4, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mLineSummaries:[Ljava/lang/CharSequence;

    .line 236
    :cond_1
    const/4 v0, 0x0

    .line 237
    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mLineSummaries:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 238
    iget-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mLineSummaries:[Ljava/lang/CharSequence;

    aget-object v0, v4, v2

    .line 240
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreView:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getTopLineInfoMode()I

    move-result v3

    .line 257
    .local v3, topmode:I
    iget-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTopModeSummaries:[Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    .line 258
    invoke-virtual {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTopModeSummaries:[Ljava/lang/CharSequence;

    .line 261
    :cond_3
    const/4 v0, 0x0

    .line 262
    if-ltz v3, :cond_4

    iget-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTopModeSummaries:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 263
    iget-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTopModeSummaries:[Ljava/lang/CharSequence;

    aget-object v0, v4, v3

    .line 265
    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTopMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/GeneralPreferences;->addPreferencesFromResource(I)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/GeneralPreferences;->setHasOptionsMenu(Z)V

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 272
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 103
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, key:Ljava/lang/String;
    const-string v1, "auto_advance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    iget-object v3, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/email/Preferences;->setAutoAdvanceDirection(I)V

    move v1, v2

    .line 152
    :goto_0
    return v1

    .line 115
    .restart local p2
    :cond_0
    const-string v1, "preview_line"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    iget-object v3, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreView:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/email/Preferences;->setPreViewLine(I)V

    .line 118
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/widget/WidgetManager;->updateAllWidgets()V

    .line 119
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->reloadDynamicSummaries()V

    move v1, v2

    .line 120
    goto :goto_0

    .line 133
    .restart local p2
    :cond_1
    const-string v1, "split_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v3, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSplitMode:Landroid/preference/CheckBoxPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/email/Preferences;->setSplitMode(Z)V

    move v1, v2

    .line 136
    goto :goto_0

    .line 146
    .restart local p2
    :cond_2
    const-string v1, "top_line_info_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    iget-object v3, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTopMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/email/Preferences;->setTopLineInfoMode(I)V

    .line 148
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->reloadDynamicSummaries()V

    move v1, v2

    .line 149
    goto :goto_0

    .line 152
    .restart local p2
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 279
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 280
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 281
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->loadSettings()V

    .line 98
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 99
    return-void
.end method
