.class public Lcom/android/emailcommon/variant/DPMWraper;
.super Ljava/lang/Object;
.source "DPMWraper.java"


# static fields
.field private static sInstance:Lcom/android/emailcommon/variant/DPMWraper;


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/emailcommon/variant/DPMWraper;->sInstance:Lcom/android/emailcommon/variant/DPMWraper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 38
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    sget-object v0, Lcom/android/emailcommon/variant/DPMWraper;->sInstance:Lcom/android/emailcommon/variant/DPMWraper;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/emailcommon/variant/DPMWraper;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/variant/DPMWraper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/emailcommon/variant/DPMWraper;->sInstance:Lcom/android/emailcommon/variant/DPMWraper;

    .line 44
    :cond_0
    sget-object v0, Lcom/android/emailcommon/variant/DPMWraper;->sInstance:Lcom/android/emailcommon/variant/DPMWraper;

    return-object v0
.end method


# virtual methods
.method public checkPassword(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .parameter "cp"
    .parameter "password"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->checkPassword(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllowBluetoothMode(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "cp"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "cp"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getAllowCamera(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "cp"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getAllowDesktopSync(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "cp"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getAllowInternetSharing(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "cp"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getAllowIrDA(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "cp"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAllowIrDA(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "cp"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getAllowTextMessaging(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "cp"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getAllowWifi(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "cp"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "cp"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .locals 2
    .parameter "cp"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;)J
    .locals 2
    .parameter "cp"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;)J
    .locals 2
    .parameter "cp"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "cp"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "cp"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "cp"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "cp"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordRecoverable(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "cp"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getSimplePasswordEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "cp"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getStorageEncryptionStatus()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    return v0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isActivePasswordSufficient()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v0

    return v0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "cp"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "cp"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 129
    return-void
.end method

.method public setAdminPermissions(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "cp"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->setAdminPermissions(Landroid/content/ComponentName;)V

    .line 125
    return-void
.end method

.method public setAllowBluetoothMode(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V

    .line 185
    return-void
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setAllowBrowser(Landroid/content/ComponentName;Z)V

    .line 177
    return-void
.end method

.method public setAllowCamera(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    .line 157
    return-void
.end method

.method public setAllowDesktopSync(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setAllowDesktopSync(Landroid/content/ComponentName;Z)V

    .line 189
    return-void
.end method

.method public setAllowInternetSharing(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V

    .line 181
    return-void
.end method

.method public setAllowIrDA(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setAllowIrDA(Landroid/content/ComponentName;Z)V

    .line 173
    return-void
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V

    .line 169
    return-void
.end method

.method public setAllowStorageCard(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setAllowStorageCard(Landroid/content/ComponentName;Z)V

    .line 153
    return-void
.end method

.method public setAllowTextMessaging(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V

    .line 165
    return-void
.end method

.method public setAllowWifi(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setAllowWifi(Landroid/content/ComponentName;Z)V

    .line 161
    return-void
.end method

.method public setExternalSDEncryption(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V

    .line 221
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 145
    return-void
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 141
    return-void
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 205
    return-void
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 209
    return-void
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 137
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 213
    return-void
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 133
    return-void
.end method

.method public setPasswordRecoverable(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V

    .line 149
    return-void
.end method

.method public setRecoveryPasswordState(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V

    .line 193
    return-void
.end method

.method public setSimplePasswordEnabled(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setSimplePasswordEnabled(Landroid/content/ComponentName;Z)V

    .line 225
    return-void
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "cp"
    .parameter "value"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    .line 217
    return-void
.end method

.method public wipeData(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/emailcommon/variant/DPMWraper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 197
    return-void
.end method
