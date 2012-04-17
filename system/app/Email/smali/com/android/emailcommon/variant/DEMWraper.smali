.class public Lcom/android/emailcommon/variant/DEMWraper;
.super Ljava/lang/Object;
.source "DEMWraper.java"


# static fields
.field private static sInstance:Lcom/android/emailcommon/variant/DEMWraper;


# instance fields
.field private mContext:Landroid/content/Context;

.field mDEM:Landroid/dirEncryption/DirEncryptionManager;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/android/emailcommon/variant/DEMWraper;->sInstance:Lcom/android/emailcommon/variant/DEMWraper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    .line 23
    iput-object v0, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 28
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    invoke-direct {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    .line 29
    iput-object p1, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DEMWraper;
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    sget-object v0, Lcom/android/emailcommon/variant/DEMWraper;->sInstance:Lcom/android/emailcommon/variant/DEMWraper;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/android/emailcommon/variant/DEMWraper;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/variant/DEMWraper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/emailcommon/variant/DEMWraper;->sInstance:Lcom/android/emailcommon/variant/DEMWraper;

    .line 36
    :cond_0
    sget-object v0, Lcom/android/emailcommon/variant/DEMWraper;->sInstance:Lcom/android/emailcommon/variant/DEMWraper;

    return-object v0
.end method

.method private isSDMounted()Z
    .locals 11

    .prologue
    .line 68
    const/4 v5, 0x0

    .line 70
    .local v5, status:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v9, :cond_0

    .line 71
    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    const-string v10, "storage"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    iput-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 74
    :cond_0
    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 75
    .local v7, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v3, v7

    .line 76
    .local v3, length:I
    const/4 v0, 0x0

    .line 78
    .local v0, extStorageVolume:Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 79
    aget-object v6, v7, v1

    .line 81
    .local v6, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, subsystem:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, state:Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v9, "usb"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "removed"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 85
    :cond_1
    if-nez v2, :cond_3

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 78
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_3
    move-object v0, v6

    goto :goto_1

    .line 93
    .end local v4           #state:Ljava/lang/String;
    .end local v6           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v8           #subsystem:Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    .line 94
    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 97
    :cond_5
    const-string v9, "mounted"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 98
    const/4 v9, 0x1

    .line 100
    :goto_2
    return v9

    :cond_6
    const/4 v9, 0x0

    goto :goto_2
.end method


# virtual methods
.method public checkSDStatus()I
    .locals 4

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, status:I
    iget-object v2, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 53
    .local v0, savedPolicy:Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {p0}, Lcom/android/emailcommon/variant/DEMWraper;->isSDMounted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 55
    const/4 v1, 0x1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 57
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public isDeviceEncrypted()Z
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v0

    .line 46
    .local v0, dpmWraper:Lcom/android/emailcommon/variant/DPMWraper;
    invoke-virtual {v0}, Lcom/android/emailcommon/variant/DPMWraper;->getStorageEncryptionStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEncryptionSupported()Z
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v0

    .line 64
    .local v0, dpmWraper:Lcom/android/emailcommon/variant/DPMWraper;
    invoke-virtual {v0}, Lcom/android/emailcommon/variant/DPMWraper;->getStorageEncryptionStatus()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
