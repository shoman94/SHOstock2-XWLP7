.class Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;
.super Ljava/lang/Thread;
.source "PhoneVoiceRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;
    }
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mSaveFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/PhoneVoiceRecorder;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 236
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 238
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    .line 239
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 240
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 461
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;Lcom/android/phone/PhoneVoiceRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVoiceRecorder;)V

    return-void
.end method

.method private buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "prefix"
    .parameter "num"

    .prologue
    .line 407
    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, t:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 409
    .end local v0           #t:Ljava/lang/String;
    :cond_0
    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_0

    .line 412
    .end local v0           #t:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_0
.end method

.method private createFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->createNewFileName()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, fileName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 379
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PhoneVoiceRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFilePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    return-object v1
.end method

.method private isPhoneNumberChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 458
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 435
    if-nez p1, :cond_1

    .line 436
    const/4 p1, 0x0

    .line 454
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 438
    .restart local p1
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 444
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 445
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 447
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 448
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 449
    .local v0, c:C
    invoke-direct {p0, v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->isPhoneNumberChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 450
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 454
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public cancelRecording()V
    .locals 0

    .prologue
    .line 477
    return-void
.end method

.method public checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "title"
    .parameter "context"

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, dir:Ljava/io/File;
    const/4 v2, 0x0

    .line 421
    .local v2, files:[Ljava/io/File;
    new-instance v1, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;-><init>(Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;Ljava/lang/String;)V

    .line 423
    .local v1, filenameFilter:Ljava/io/FilenameFilter;
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v3, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 426
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 429
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 431
    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public createNewFileName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 384
    const-string v3, "PhoneVoiceRecorder"

    const-string v4, "createNewFileName()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v0, fileName:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e03b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const/4 v1, 0x1

    .line 392
    .local v1, num:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, prefix:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 395
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 396
    add-int/lit8 v1, v1, 0x1

    .line 397
    goto :goto_0

    .line 401
    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    return-object v3
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 293
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 295
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 298
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo mr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    const/16 v0, 0x321

    if-ne p2, v0, :cond_1

    .line 301
    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "onInfo - MediaRecorder.MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()V

    .line 304
    :cond_1
    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "releaseMediaRecorder..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 366
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 367
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 368
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 369
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$102(Lcom/android/phone/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J
    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$402(Lcom/android/phone/PhoneVoiceRecorder;J)J

    .line 373
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 244
    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v3, "PhoneVoiceRecorder"

    const-string v4, "run"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, CallRecordingDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 250
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3, v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$102(Lcom/android/phone/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 253
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 254
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 257
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 258
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 259
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->createFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/16 v4, 0x2fa8

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 263
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 264
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/16 v4, 0x1f40

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 265
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 268
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-wide/16 v4, 0x0

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J
    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$402(Lcom/android/phone/PhoneVoiceRecorder;J)J

    .line 278
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iput-boolean v6, v3, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    .line 283
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/CallCard;->visibleRecInfoView()V

    .line 284
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$600()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 287
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e03ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v4, v7, v7, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 289
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 269
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 270
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PhoneVoiceRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    iget-object v5, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e03b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v4, v7, v7, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 273
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public stopRecording()V
    .locals 15

    .prologue
    .line 307
    const-string v9, "PhoneVoiceRecorder"

    const-string v10, "stopRecording"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :try_start_0
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaRecorder;->stop()V

    .line 311
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    .line 312
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 314
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 315
    .local v5, retriever:Landroid/media/MediaMetadataRetriever;
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 316
    const/4 v8, 0x0

    .line 317
    .local v8, value:Ljava/lang/String;
    const/16 v9, 0x9

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 318
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v1, v9

    .line 319
    .local v1, fileDuration:J
    const-wide/16 v9, 0x3e8

    cmp-long v9, v1, v9

    if-gez v9, :cond_0

    .line 320
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 321
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$600()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 322
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x66

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e03b6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 324
    .local v4, msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    .end local v1           #fileDuration:J
    .end local v5           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v8           #value:Ljava/lang/String;
    :goto_0
    return-void

    .line 327
    .end local v4           #msg:Landroid/os/Message;
    .restart local v1       #fileDuration:J
    .restart local v5       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v8       #value:Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/io/File;

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v7, tempFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v6, saveFile:Ljava/io/File;
    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 330
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v3, mediaStore:Landroid/content/ContentValues;
    const-string v9, "title"

    iget-object v10, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v9, "mime_type"

    const-string v10, "audio/amr"

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v9, "_data"

    iget-object v10, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v9, "duration"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    const-string v9, "_size"

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    const-string v9, "date_modified"

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 337
    const-string v9, "is_sound"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 352
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$600()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 356
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x65

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e03b5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 358
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 339
    .end local v1           #fileDuration:J
    .end local v3           #mediaStore:Landroid/content/ContentValues;
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v6           #saveFile:Ljava/io/File;
    .end local v7           #tempFile:Ljava/io/File;
    .end local v8           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "PhoneVoiceRecorder"

    const-string v10, "Exception"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 342
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$600()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 343
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x66

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e03b6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 345
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
