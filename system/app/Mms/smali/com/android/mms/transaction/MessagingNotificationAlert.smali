.class public Lcom/android/mms/transaction/MessagingNotificationAlert;
.super Landroid/app/Service;
.source "MessagingNotificationAlert.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# instance fields
.field private alertOnCallMode:I

.field private drivingMode:I

.field private initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mServiceStartId:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private speechInfoText:Ljava/lang/String;

.field private toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    .line 78
    new-instance v0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotificationAlert$1;-><init>(Lcom/android/mms/transaction/MessagingNotificationAlert;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 305
    new-instance v0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotificationAlert$2;-><init>(Lcom/android/mms/transaction/MessagingNotificationAlert;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/MessagingNotificationAlert;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->setVolume(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/MessagingNotificationAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->speakNewMessageInfo()V

    return-void
.end method

.method private isOnCall()Z
    .locals 5

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, isOnCall:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 113
    .local v2, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 115
    const-string v3, "Mms/MessagingNotificationAlert"

    const-string v4, "Null Pointer Exception set isOnCall as false"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    .line 126
    .end local v2           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v1

    .line 119
    .restart local v2       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 121
    .end local v2           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 123
    .local v0, e1:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private makeAlertSoundOnCall()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 205
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_ringtone"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, ringtoneStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    .local v1, messageSoundUri:Landroid/net/Uri;
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    .line 209
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 210
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 213
    :cond_0
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 215
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_1

    .line 216
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 217
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 218
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 219
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v4}, Lcom/android/mms/transaction/MessagingNotificationAlert;->setVolume(Landroid/media/MediaPlayer;)V

    .line 220
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_1
    :goto_1
    return-void

    .line 206
    .end local v1           #messageSoundUri:Landroid/net/Uri;
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 222
    .restart local v1       #messageSoundUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Mms/MessagingNotificationAlert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeAlertSound() cated Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private makeTts()V
    .locals 3

    .prologue
    .line 297
    :try_start_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    const-string v1, "New Message TTS"

    const-string v2, "########## TTS create failed !!!!! ##########"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    goto :goto_0
.end method

.method private registerVolumeIntentReceiver()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, intentFilterVolume:Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method private setVolume(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 228
    if-nez p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 233
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 234
    const/high16 v1, -0x4080

    .line 235
    .local v1, volume:F
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    int-to-float v1, v2

    .line 237
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 241
    const v2, 0x3f19999a

    mul-float/2addr v1, v2

    .line 243
    const-string v2, "Mms/MessagingNotificationAlert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeAlertSoundOnCall() - am.getStreamVolume() volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method private speakNewMessageInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 332
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 333
    .local v1, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 335
    .local v3, onCall:Z
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 337
    .local v4, phoneServ:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 343
    .end local v4           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-eqz v3, :cond_1

    .line 344
    const-string v5, "streamType"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :goto_1
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_0

    .line 351
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 352
    const/4 v2, 0x0

    .line 353
    .local v2, nRet:I
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    invoke-virtual {v5, v6, v8, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v2

    .line 354
    const-string v5, "New Message TTS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v5, "utteranceId"

    const-string v6, "New message tts ended"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7, v8, v1}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    move-result v2

    .line 359
    const-string v5, "New Message TTS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playSilence     ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .end local v2           #nRet:I
    :cond_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 340
    .local v0, e1:Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 341
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 347
    .end local v0           #e1:Landroid/os/RemoteException;
    :cond_1
    const-string v5, "streamType"

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private unregisterVolumeIntentReceiver()V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/MessagingNotificationAlert"

    const-string v2, "onDestroy : mVolumeChangeReceiver is not registered."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public isVlingoAvailable()Z
    .locals 10

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 373
    .local v5, mPm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 374
    .local v3, isInstalled:Z
    const/4 v2, 0x0

    .line 375
    .local v2, isAccepted:Z
    const/4 v6, 0x0

    .line 378
    .local v6, result:Z
    const/16 v7, 0x2000

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 380
    .local v4, mInstalledPkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 381
    .local v0, a:Landroid/content/pm/ApplicationInfo;
    const-string v7, "com.vlingo.client.samsung"

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 382
    const/4 v3, 0x1

    .line 399
    .end local v0           #a:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const-string v7, "isVlingoAvailable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isInstalled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return v3

    .line 385
    .restart local v0       #a:Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 105
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->registerVolumeIntentReceiver()V

    .line 106
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 174
    const-string v0, "Mms/MessagingNotificationAlert"

    const-string v1, "########## Destroy called mMediaPlayer.release()!!!!! ##########"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    const-string v0, "Mms/MessagingNotificationAlert"

    const-string v1, "########## Destroy called !!!!! ##########"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->unregisterVolumeIntentReceiver()V

    .line 180
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 191
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 194
    :cond_3
    const-string v0, "New Message TTS"

    const-string v1, "########## Destroy called !!!!! ##########"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alertoncall_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->alertOnCallMode:I

    .line 133
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->drivingMode:I

    .line 135
    iput p2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    .line 137
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->isVlingoAvailable()Z

    move-result v0

    .line 141
    .local v0, isVlingoAvailable:Z
    :try_start_0
    const-string v1, "TTS_INFO"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->isOnCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->alertOnCallMode:I

    if-nez v1, :cond_0

    .line 153
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    .line 165
    :goto_1
    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeAlertSoundOnCall()V

    goto :goto_1

    .line 158
    :cond_1
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->drivingMode:I

    if-ne v1, v4, :cond_2

    if-nez v0, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeTts()V

    goto :goto_1

    .line 162
    :cond_2
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    goto :goto_1

    .line 143
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 366
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    .line 367
    return-void
.end method
