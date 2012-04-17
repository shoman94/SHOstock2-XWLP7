.class public Lcom/android/mms/ui/MmsBGSender;
.super Landroid/content/BroadcastReceiver;
.source "MmsBGSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 682
    const-string v2, "MMSBGSender"

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, uriStr:Ljava/lang/String;
    const-string v2, "com.android.mms.QUICKSND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    const-string v2, "MMSBGSender"

    const-string v3, "Bacvkground  Sending for quick send"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v0, ""

    .line 687
    .local v0, strTemp:Ljava/lang/String;
    const-string v2, "mms_to"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    if-eqz v0, :cond_1

    .line 689
    const-string v2, "MMSBGSender"

    const-string v3, "Sending MMS in background for Quick Send."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    new-instance v2, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;

    invoke-direct {v2, p1}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    .line 696
    .end local v0           #strTemp:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 692
    .restart local v0       #strTemp:Ljava/lang/String;
    :cond_1
    const-string v2, "MMSBGSender"

    const-string v3, "Starting Activity for Quick Send."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/MmsBGSender;->sendQuickmessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendQuickmessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "receivedIntent"

    .prologue
    .line 699
    const-string v6, "MMSBGSender"

    const-string v7, "sendQuickmessage execute method invoked"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 705
    .local v5, newIntent:Landroid/content/Intent;
    const-string v4, ""

    .local v4, mMsgText:Ljava/lang/String;
    move-object v0, v4

    .local v0, mAudioFileName:Ljava/lang/String;
    move-object v2, v4

    .line 706
    .local v2, mImageFileName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, mAudioUri:Landroid/net/Uri;
    move-object v3, v1

    .line 708
    .local v3, mImageUri:Ljava/lang/Object;
    const-string v6, "mms_text"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 709
    const-string v6, "mms_audio"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    const-string v6, "mms_audio_uri"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #mAudioUri:Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .line 711
    .restart local v1       #mAudioUri:Landroid/net/Uri;
    const-string v6, "mms_image"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 712
    const-string v6, "mms_image_uri"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #mImageUri:Ljava/lang/Object;
    check-cast v3, Landroid/net/Uri;

    .line 714
    .local v3, mImageUri:Landroid/net/Uri;
    const-string v6, "MMSBGSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting state for recipientActivity :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v6, "MMSBGSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting state for Audio Content :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v6, "mms_text"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    const-string v6, "mms_audio"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v6, "mms_audio_uri"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 721
    const-string v6, "mms_image"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    const-string v6, "mms_image_uri"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 723
    const-string v6, "mms_save"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 726
    const-string v6, "com.android.mms.NEWMMS"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string v6, "com.android.mms"

    const-string v7, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 731
    const-string v6, "MMSBGSender"

    const-string v7, "sendQuickmessage execute method completed"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void
.end method
