.class public Lcom/android/mms/ui/GreekInputHandler;
.super Landroid/content/BroadcastReceiver;
.source "GreekInputHandler.java"


# static fields
.field private static SIPLanguage:Ljava/lang/String;

.field private static isUiVisible:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, ""

    sput-object v0, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "activity"
    .parameter "composer"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lcom/android/mms/ui/GreekInputHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 50
    return-void
.end method

.method public static EncodeGreekCharater(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "msgText"

    .prologue
    .line 152
    const-string v6, "Mms/GreekInputHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msgText.length() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    move-object v0, p0

    .line 155
    .local v0, Tempbuff:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v3, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 161
    .local v5, v:C
    invoke-static {v5}, Lcom/android/mms/ui/GreekInputHandler;->convertGreekCharacter(C)C

    move-result v4

    .line 162
    .local v4, temp:C
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    .local v2, s:Ljava/lang/StringBuffer;
    const-string v6, "Mms/GreekInputHandler"

    const-string v7, "char temp"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v2           #s:Ljava/lang/StringBuffer;
    .end local v4           #temp:C
    .end local v5           #v:C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 171
    return-object p0
.end method

.method public static MappingGreekCharater(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "msg"

    .prologue
    .line 206
    move-object v0, p0

    .line 207
    .local v0, Tempbuff:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 213
    .local v3, temp:C
    sparse-switch v3, :sswitch_data_0

    .line 231
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :sswitch_0
    const/16 v3, 0x41

    goto :goto_1

    .line 215
    :sswitch_1
    const/16 v3, 0x45

    goto :goto_1

    .line 216
    :sswitch_2
    const/16 v3, 0x48

    goto :goto_1

    .line 217
    :sswitch_3
    const/16 v3, 0x49

    goto :goto_1

    .line 218
    :sswitch_4
    const/16 v3, 0x4f

    goto :goto_1

    .line 219
    :sswitch_5
    const/16 v3, 0x59

    goto :goto_1

    .line 220
    :sswitch_6
    const/16 v3, 0x3a9

    goto :goto_1

    .line 221
    :sswitch_7
    const/16 v3, 0x3a3

    goto :goto_1

    .line 222
    :sswitch_8
    const/16 v3, 0x49

    goto :goto_1

    .line 223
    :sswitch_9
    const/16 v3, 0x59

    goto :goto_1

    .line 224
    :sswitch_a
    const/16 v3, 0x59

    goto :goto_1

    .line 225
    :sswitch_b
    const/16 v3, 0x49

    goto :goto_1

    .line 234
    .end local v3           #temp:C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 235
    return-object p0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_0
        0x388 -> :sswitch_1
        0x389 -> :sswitch_2
        0x38a -> :sswitch_3
        0x38c -> :sswitch_4
        0x38e -> :sswitch_5
        0x38f -> :sswitch_6
        0x399 -> :sswitch_b
        0x3a5 -> :sswitch_9
        0x3aa -> :sswitch_8
        0x3ab -> :sswitch_a
        0x3c2 -> :sswitch_7
    .end sparse-switch
.end method

.method private static convertGreekCharacter(C)C
    .locals 1
    .parameter "c"

    .prologue
    .line 176
    move v0, p0

    .line 177
    .local v0, temp:C
    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    :pswitch_0
    return v0

    .line 179
    :pswitch_1
    const/16 v0, 0x45

    goto :goto_0

    .line 180
    :pswitch_2
    const/16 v0, 0x50

    goto :goto_0

    .line 181
    :pswitch_3
    const/16 v0, 0x54

    goto :goto_0

    .line 182
    :pswitch_4
    const/16 v0, 0x59

    goto :goto_0

    .line 183
    :pswitch_5
    const/16 v0, 0x49

    goto :goto_0

    .line 184
    :pswitch_6
    const/16 v0, 0x4f

    goto :goto_0

    .line 185
    :pswitch_7
    const/16 v0, 0x41

    goto :goto_0

    .line 186
    :pswitch_8
    const/16 v0, 0x48

    goto :goto_0

    .line 187
    :pswitch_9
    const/16 v0, 0x4b

    goto :goto_0

    .line 188
    :pswitch_a
    const/16 v0, 0x5a

    goto :goto_0

    .line 189
    :pswitch_b
    const/16 v0, 0x58

    goto :goto_0

    .line 190
    :pswitch_c
    const/16 v0, 0x42

    goto :goto_0

    .line 191
    :pswitch_d
    const/16 v0, 0x4e

    goto :goto_0

    .line 192
    :pswitch_e
    const/16 v0, 0x4d

    goto :goto_0

    .line 193
    :pswitch_f
    const/16 v0, 0x49

    goto :goto_0

    .line 194
    :pswitch_10
    const/16 v0, 0x49

    goto :goto_0

    .line 195
    :pswitch_11
    const/16 v0, 0x59

    goto :goto_0

    .line 196
    :pswitch_12
    const/16 v0, 0x59

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x38a
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_12
    .end packed-switch
.end method

.method public static isGreekInput(C)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 239
    const/16 v0, 0x386

    if-eq v0, p0, :cond_2

    const/16 v0, 0x388

    if-gt v0, p0, :cond_0

    const/16 v0, 0x38a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x38c

    if-gt v0, p0, :cond_1

    const/16 v0, 0x38f

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x3c2

    if-ne v0, p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSIPGreek()Z
    .locals 3

    .prologue
    .line 146
    const-string v1, "el"

    sget-object v2, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    .local v0, result:Z
    return v0
.end method

.method private setUpperCase(Z)V
    .locals 6
    .parameter "value"

    .prologue
    .line 132
    :try_start_0
    const-string v3, "Mms/GreekInputHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set upper:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mms.LANGUAGE_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "caps_status"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    .line 137
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCapsStatus()V
    .locals 5

    .prologue
    .line 118
    iget-object v3, p0, Lcom/android/mms/ui/GreekInputHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isBodyFocused()Z

    move-result v1

    .line 119
    .local v1, isBodyFocused:Z
    iget-object v3, p0, Lcom/android/mms/ui/GreekInputHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isMms()Z

    move-result v2

    .line 120
    .local v2, isMms:Z
    iget-object v3, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    .line 122
    .local v0, inputMode:I
    const-string v3, "el"

    sget-object v4, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 124
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/mms/ui/GreekInputHandler;->setUpperCase(Z)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/mms/ui/GreekInputHandler;->setUpperCase(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreate()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "inputLanguageAction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.swype.android.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    .line 63
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityCreate"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onActivityDestroyed()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityDestroyed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onActivityPause()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/android/mms/ui/GreekInputHandler;->setUpperCase(Z)V

    .line 83
    sput-boolean v0, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    .line 85
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onActivityResume()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/mms/ui/GreekInputHandler;->updateCapsStatus()V

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    .line 77
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 99
    const-string v2, "AxT9IME.inputLanguage"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, skpdLanguage:Ljava/lang/String;
    const-string v2, "swype.inputLanguage"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, swypeLanguage:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 104
    sput-object v0, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    .line 106
    :cond_0
    if-eqz v1, :cond_1

    .line 107
    sput-object v1, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    .line 109
    :cond_1
    const-string v2, "Mms/GreekInputHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, skpd lang:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/android/mms/ui/GreekInputHandler;->isSIPGreek()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/android/mms/ui/GreekInputHandler;->updateCapsStatus()V

    .line 115
    :cond_2
    return-void
.end method

.method public updateCurrentStatus()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/GreekInputHandler;->updateCapsStatus()V

    .line 92
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "updateCurrentStatus"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
