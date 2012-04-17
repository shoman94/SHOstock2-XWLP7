.class public Lcom/android/systemui/usb/UsbStorageActivity;
.super Landroid/app/Activity;
.source "UsbStorageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAsyncStorageHandler:Landroid/os/Handler;

.field private mBanner:Landroid/widget/TextView;

.field private mDestroyed:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mMountButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mUIHandler:Landroid/os/Handler;

.field private mUnmountButton:Landroid/widget/Button;

.field private mUsbStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 92
    new-instance v0, Lcom/android/systemui/usb/UsbStorageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbStorageActivity$1;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    new-instance v0, Lcom/android/systemui/usb/UsbStorageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbStorageActivity$2;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/UsbStorageActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->handleUsbStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/UsbStorageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->findMediaVolumePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/usb/UsbStorageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->checkStorageUsersAsync()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplay(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplayAsync(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/usb/UsbStorageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private checkStorageUsers()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/usb/UsbStorageActivity$9;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    return-void
.end method

.method private checkStorageUsersAsync()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 312
    .local v3, ims:Landroid/os/storage/IMountService;
    if-nez v3, :cond_0

    .line 314
    invoke-direct {p0, v8}, Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V

    .line 316
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, extStoragePath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 319
    .local v5, showDialog:Z
    :try_start_0
    invoke-interface {v3, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    .line 320
    .local v6, stUsers:[I
    if-eqz v6, :cond_2

    array-length v7, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v7, :cond_2

    .line 321
    const/4 v5, 0x1

    .line 334
    .end local v6           #stUsers:[I
    :cond_1
    :goto_0
    if-eqz v5, :cond_3

    .line 336
    invoke-direct {p0, v9}, Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V

    .line 341
    :goto_1
    return-void

    .line 324
    .restart local v6       #stUsers:[I
    :cond_2
    :try_start_1
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbStorageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 325
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v4

    .line 326
    .local v4, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-lez v7, :cond_1

    .line 327
    const/4 v5, 0x1

    goto :goto_0

    .line 330
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v4           #infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6           #stUsers:[I
    :catch_0
    move-exception v1

    .line 332
    .local v1, e:Landroid/os/RemoteException;
    invoke-direct {p0, v8}, Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V

    goto :goto_0

    .line 338
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v7, "UsbStorageActivity"

    const-string v8, "onClick !!! (Enabling UMS)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0, v9}, Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V

    goto :goto_1
.end method

.method private findMediaVolumePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 365
    iget-object v2, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    .line 366
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 367
    iget-object v2, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const-string v2, "UsbStorageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findMediaVolumePath :: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v2, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 373
    :goto_1
    return-object v2

    .line 366
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 230
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 231
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 232
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 234
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleUsbStateChanged(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 223
    .local v0, connected:Z
    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->finish()V

    .line 227
    :cond_0
    return-void
.end method

.method private scheduleShowDialog(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 263
    const-string v0, "UsbStorageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialogInner :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity$6;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method

.method private switchDisplay(Z)V
    .locals 2
    .parameter "usbStorageInUse"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity$3;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    return-void
.end method

.method private switchDisplayAsync(Z)V
    .locals 5
    .parameter "usbStorageInUse"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 163
    const-string v0, "UsbStorageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchDisplayAsync :: usbStorageInUse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    const v1, 0x1080747

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    const v1, 0x10404be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    const v1, 0x10404bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    const v1, 0x1080746

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    const v1, 0x10404b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    const v1, 0x10404b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private switchUsbMassStorage(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/usb/UsbStorageActivity$7;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity$8;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 354
    const-string v0, "UsbStorageActivity"

    const-string v1, "onCancel !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->finish()V

    .line 356
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->checkStorageUsers()V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 348
    const-string v0, "UsbStorageActivity"

    const-string v1, "onClick !!! (Disabling UMS)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 111
    const-string v1, "UsbStorageActivity"

    const-string v2, "onCreate !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 115
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 116
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_2

    .line 117
    const-string v1, "UsbStorageActivity"

    const-string v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SystemUI UsbStorageActivity"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, thr:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 130
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 134
    :cond_1
    const v1, 0x10900c6

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->setContentView(I)V

    .line 136
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    .line 137
    const v1, 0x1020350

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    .line 138
    const v1, 0x102000b

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    .line 140
    const v1, 0x1020351

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    .line 141
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v1, 0x1020352

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    .line 143
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v1, 0x102000d

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 145
    return-void

    .line 119
    .end local v0           #thr:Landroid/os/HandlerThread;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    goto/16 :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const v3, 0x10404c6

    const/4 v0, 0x0

    .line 239
    packed-switch p1, :pswitch_data_0

    .line 259
    :goto_0
    return-object v0

    .line 241
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x10404c3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/usb/UsbStorageActivity$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/usb/UsbStorageActivity$5;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x10404c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x10404c5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x10404b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mDestroyed:Z

    .line 151
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 213
    const-string v0, "UsbStorageActivity"

    const-string v1, "onPause !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbStorageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 219
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 183
    const-string v3, "UsbStorageActivity"

    const-string v4, "onResume !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 186
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 187
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/usb/UsbStorageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/usb/UsbStorageActivity$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/usb/UsbStorageActivity$4;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    const/4 v2, 0x0

    .line 200
    .local v2, restrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    const-string v3, "enterprise_policy"

    invoke-virtual {p0, v3}, Lcom/android/systemui/usb/UsbStorageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 201
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 204
    :cond_0
    if-eqz v2, :cond_1

    .line 205
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMassStorageEnabled(Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    :cond_1
    return-void

    .line 195
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v2           #restrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    :catch_0
    move-exception v1

    .line 196
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "UsbStorageActivity"

    const-string v4, "Failed to read UMS enable state"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
