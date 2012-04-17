.class public Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountSettingsSecurityOptionsFragment.java"


# instance fields
.field private encryptAlgorithm:I

.field private isEncryptChecked:Ljava/lang/Boolean;

.field private isSignChecked:Ljava/lang/Boolean;

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountId:J

.field private mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

.field private mSmimeEncryptAllPolicyApplied:Z

.field private mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

.field private mSmimeEncryptionAlgorithmPolicyApplied:Z

.field private mSmimeOwnCertificateAlias:Ljava/lang/String;

.field private mSmimeSignAlgorithm:Landroid/preference/ListPreference;

.field private mSmimeSignAlgorithmPolicyApplied:Z

.field private mSmimeSignAll:Landroid/preference/CheckBoxPreference;

.field private mSmimeSignAllPolicyApplied:Z

.field private policiesList:Landroid/preference/PreferenceScreen;

.field private signAlgorithm:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    .line 98
    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->signAlgorithm:I

    .line 99
    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->encryptAlgorithm:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    return-wide v0
.end method

.method private setCertificateSummary()V
    .locals 2

    .prologue
    .line 356
    const-string v1, "account_own_certificate"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 357
    .local v0, ownCertificatePref:Landroid/preference/Preference;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    const v1, 0x7f0804cc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 366
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 368
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 369
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 370
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "inside on activity result*********"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 372
    .local v1, result:Landroid/os/Bundle;
    const-string v3, "CERTIFICATE_ALIAS"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, alias:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 374
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 375
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->setCertificateSummary()V

    .line 389
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #result:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 379
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeOwnCertificate()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, tmpSmimeCertAlias:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 384
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 385
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->setCertificateSummary()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    if-eqz p1, :cond_0

    .line 111
    const-string v5, "SmimeSignAll"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->isSignChecked:Ljava/lang/Boolean;

    .line 112
    const-string v5, "SmimeSignAlgorithm"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->signAlgorithm:I

    .line 113
    const-string v5, "SmimeEncryptAll"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->isEncryptChecked:Ljava/lang/Boolean;

    .line 114
    const-string v5, "SmimeEncryptionAlgorithm"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->encryptAlgorithm:I

    .line 117
    :cond_0
    const v5, 0x7f06000f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->addPreferencesFromResource(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "account_id"

    invoke-virtual {v5, v6, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    .line 120
    iget-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    cmp-long v5, v5, v11

    if-nez v5, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 122
    .local v1, pa:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1, p0, v8, v10}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 125
    .end local v1           #pa:Landroid/preference/PreferenceActivity;
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 127
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v5, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 129
    .restart local v1       #pa:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1, p0, v8, v10}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 132
    .end local v1           #pa:Landroid/preference/PreferenceActivity;
    :cond_2
    const-string v5, "account_own_certificate"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 133
    .local v0, ownCertificatePref:Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeOwnCertificate()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->setCertificateSummary()V

    .line 135
    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$1;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)V

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 163
    const-string v5, "account_smime_encrypt_all"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    .line 164
    const-string v5, "account_smime_sign_all"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    .line 166
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v3

    .line 169
    .local v3, sp:Lcom/android/email/SecurityPolicy;
    iget-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v2

    .line 171
    .local v2, ps:Lcom/android/emailcommon/service/PolicySet;
    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAllPolicyApplied:Z

    .line 172
    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAllPolicyApplied:Z

    .line 174
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAllPolicyApplied:Z

    if-eqz v5, :cond_4

    .line 175
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 176
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 184
    :goto_0
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAllPolicyApplied:Z

    if-eqz v5, :cond_6

    .line 185
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 186
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 195
    :goto_1
    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v5, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0804e9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 200
    .end local v4           #text:Ljava/lang/String;
    :cond_3
    const-string v5, "account_smime_sign_algorithm"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    .line 201
    const-string v5, "account_smime_encryption_algorithm"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    .line 202
    const-string v5, "security_policy_list"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->policiesList:Landroid/preference/PreferenceScreen;

    .line 228
    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-eqz v5, :cond_8

    .line 229
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget v6, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 230
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 245
    :goto_2
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-eqz v5, :cond_9

    .line 265
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget v6, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 266
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 283
    :goto_3
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->policiesList:Landroid/preference/PreferenceScreen;

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$4;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 297
    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->setHasOptionsMenu(Z)V

    .line 298
    return-void

    .line 178
    :cond_4
    if-eqz p1, :cond_5

    .line 179
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    const-string v6, "com.android.email.securitypreference.encrypt"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 181
    :cond_5
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 188
    :cond_6
    if-eqz p1, :cond_7

    .line 189
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    const-string v6, "com.android.email.securitypreference.sign"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 191
    :cond_7
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 232
    :cond_8
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 233
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 234
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$2;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    .line 268
    :cond_9
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 269
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 270
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$3;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 307
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 308
    const v0, 0x7f0f0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 309
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 320
    .local v1, pa:Landroid/preference/PreferenceActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 348
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 322
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 323
    .local v0, data:Landroid/content/Intent;
    const-string v2, "SmimeOwnCertificateAlias"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAllPolicyApplied:Z

    if-nez v2, :cond_0

    .line 325
    const-string v2, "SmimeEncryptAll"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    :cond_0
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAllPolicyApplied:Z

    if-nez v2, :cond_1

    .line 328
    const-string v2, "SmimeSignAll"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    :cond_1
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithmPolicyApplied:Z

    if-nez v2, :cond_2

    .line 332
    const-string v2, "SmimeSignAlgorithm"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    :cond_2
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithmPolicyApplied:Z

    if-nez v2, :cond_3

    .line 337
    const-string v2, "SmimeEncryptionAlgorithm"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    :cond_3
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 344
    .end local v0           #data:Landroid/content/Intent;
    :pswitch_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x7f1002b8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 313
    const v0, 0x7f1002b8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 314
    const v0, 0x7f1002b9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 315
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 302
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 303
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 393
    const-string v0, "com.android.email.securitypreference.sign"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    const-string v0, "com.android.email.securitypreference.encrypt"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 395
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 396
    return-void
.end method
