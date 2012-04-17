.class Lcom/android/mms/transaction/MessagingNotificationAlert$2;
.super Ljava/lang/Object;
.source "MessagingNotificationAlert.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotificationAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MessagingNotificationAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 308
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-virtual {v4}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_default_lang"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, mDefaultLanguage:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-virtual {v4}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_default_country"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, mDefaultCountry:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-virtual {v4}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_default_variant"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, mDefaultLocVariant:Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 313
    .local v0, locale:Ljava/util/Locale;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 314
    new-instance v0, Ljava/util/Locale;

    .end local v0           #locale:Ljava/util/Locale;
    invoke-direct {v0, v2, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .restart local v0       #locale:Ljava/util/Locale;
    :goto_0
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    #getter for: Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$200(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    #getter for: Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$200(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    #getter for: Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$200(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 321
    :cond_0
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    #getter for: Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$200(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 325
    :goto_1
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    #calls: Lcom/android/mms/transaction/MessagingNotificationAlert;->speakNewMessageInfo()V
    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$300(Lcom/android/mms/transaction/MessagingNotificationAlert;)V

    .line 326
    return-void

    .line 316
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_0

    .line 323
    :cond_2
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    #getter for: Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$200(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_1
.end method
