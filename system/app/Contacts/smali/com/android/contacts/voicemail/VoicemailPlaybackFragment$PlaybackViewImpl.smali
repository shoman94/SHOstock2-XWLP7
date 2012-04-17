.class final Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;
.super Ljava/lang/Object;
.source "VoicemailPlaybackFragment.java"

# interfaces
.implements Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackViewImpl"
.end annotation


# instance fields
.field private final mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

.field private final mApplicationContext:Landroid/content/Context;

.field private final mPlaybackSeek:Landroid/widget/SeekBar;

.field private final mPlaybackSpeakerphone:Landroid/widget/ImageButton;

.field private final mRateDecreaseButton:Landroid/widget/ImageButton;

.field private final mRateIncreaseButton:Landroid/widget/ImageButton;

.field private final mStartStopButton:Landroid/widget/ImageButton;

.field private final mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;


# direct methods
.method public constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "activityReference"
    .parameter "applicationContext"
    .parameter "playbackLayout"

    .prologue
    .line 190
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    .line 195
    iput-object p2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    .line 196
    const v0, 0x7f0d01cf

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    .line 197
    const v0, 0x7f0d01cc

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    .line 199
    const v0, 0x7f0d01cd

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    .line 201
    const v0, 0x7f0d01d2

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    .line 203
    const v0, 0x7f0d01d3

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    .line 205
    new-instance v2, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v0, 0x7f0d01d0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d01d1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v2, v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    .line 208
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableProximitySensor()V
    .locals 2

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 285
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/contacts/ProximitySensorAware;

    if-eqz v1, :cond_0

    .line 286
    check-cast v0, Lcom/android/contacts/ProximitySensorAware;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/ProximitySensorAware;->disableProximitySensor(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method public disableUiElements()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 344
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 346
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 347
    return-void
.end method

.method public enableProximitySensor()V
    .locals 2

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 276
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/contacts/ProximitySensorAware;

    if-eqz v1, :cond_0

    .line 277
    check-cast v0, Lcom/android/contacts/ProximitySensorAware;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/android/contacts/ProximitySensorAware;->enableProximitySensor()V

    .line 279
    :cond_0
    return-void
.end method

.method public enableUiElements()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 358
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 359
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 363
    return-void
.end method

.method public getDataSourceContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDesiredClipPosition()I
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public isSpeakerPhoneOn()Z
    .locals 1

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public playbackError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->disableUiElements()V

    .line 352
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v1, 0x7f0a01c9

    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 353
    const-string v0, "VoicemailPlayback"

    const-string v1, "Could not play voicemail"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    return-void
.end method

.method public playbackStarted()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    const v1, 0x7f020193

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 265
    return-void
.end method

.method public playbackStopped()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 270
    return-void
.end method

.method public queryHasContent(Landroid/net/Uri;)Z
    .locals 9
    .parameter "voicemailUri"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 373
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 374
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->access$200()[Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 377
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    const-string v1, "has_content"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v7, :cond_0

    move v1, v7

    .line 382
    :goto_0
    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 384
    :goto_1
    return v1

    :cond_0
    move v1, v8

    .line 378
    goto :goto_0

    .line 382
    :cond_1
    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    move v1, v8

    .line 384
    goto :goto_1

    .line 382
    :catchall_0
    move-exception v1

    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    throw v1
.end method

.method public registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 2
    .parameter "uri"
    .parameter "observer"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 293
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 221
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 224
    :cond_0
    return-void
.end method

.method public sendFetchVoicemailRequest(Landroid/net/Uri;)V
    .locals 2
    .parameter "voicemailUri"

    .prologue
    .line 367
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FETCH_VOICEMAIL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 368
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method public setClipPosition(II)V
    .locals 4
    .parameter "clipPositionInMillis"
    .parameter "clipLengthInMillis"

    .prologue
    .line 302
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 303
    .local v1, seekBarPosition:I
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 304
    .local v0, seekBarMax:I
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 305
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 308
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    sub-int v3, v0, v1

    #calls: Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->formatAsMinutesAndSeconds(I)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->access$100(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public setFetchContentTimeout()V
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->disableUiElements()V

    .line 331
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v1, 0x7f0a01cc

    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public setIsBuffering()V
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->disableUiElements()V

    .line 319
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v1, 0x7f0a01ca

    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public setIsFetchingContent()V
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->disableUiElements()V

    .line 325
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v1, 0x7f0a01cb

    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public setPositionSeekListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 260
    return-void
.end method

.method public setRateDecreaseButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    return-void
.end method

.method public setRateDisplay(FI)V
    .locals 5
    .parameter "rate"
    .parameter "stringResourceId"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setTemporaryText(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 255
    return-void
.end method

.method public setRateIncreaseButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method public setSpeakerPhoneOn(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 399
    if-eqz p1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v1, 0x7f0201c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v1, 0x7f0201c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setSpeakerphoneListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void
.end method

.method public setStartStopListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 2
    .parameter "streamType"

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 409
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 412
    :cond_0
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 298
    return-void
.end method
