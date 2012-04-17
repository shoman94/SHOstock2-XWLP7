.class public Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;
.super Landroid/app/Activity;
.source "AccountSetupDisclaimerWeb.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private acceptButton:Landroid/widget/Button;

.field private acceptCheck:Landroid/widget/CheckBox;

.field private isErrorReceived:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->isErrorReceived:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->isErrorReceived:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptButton:Landroid/widget/Button;

    return-object v0
.end method

.method public static actionNewAccountPremium(Landroid/app/Activity;)V
    .locals 1
    .parameter "fromActivity"

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->actionNewAccountPremium(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method public static actionNewAccountPremium(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 323
    if-eqz p1, :cond_0

    .line 324
    const-class v0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 328
    :goto_0
    const/high16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 329
    const/16 v0, 0x3f3

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 330
    return-void

    .line 326
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "seed"
    .parameter "plainText"

    .prologue
    const/4 v2, 0x0

    .line 100
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-object v2

    .line 103
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 106
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 107
    .local v1, secretKeyBytes:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->encryptBytesByAES([B[B)[B

    move-result-object v0

    .line 109
    .local v0, cipherTextBytes:[B
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static encryptBytesByAES([B[B)[B
    .locals 5
    .parameter "secretKeyBytes"
    .parameter "plainTextBytes"

    .prologue
    .line 127
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 129
    .local v3, secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v2, 0x0

    .line 132
    .local v2, outBytes:[B
    :try_start_0
    const-string v4, "AES/ECB/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 133
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 134
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 147
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :goto_0
    return-object v2

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 138
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 140
    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 142
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v1

    .line 144
    .local v1, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 157
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 159
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, IMSI:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #IMSI:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #IMSI:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static hexStringToBytes(Ljava/lang/String;)[B
    .locals 5
    .parameter "hexString"

    .prologue
    .line 113
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 114
    :cond_0
    const/4 v2, 0x0

    .line 122
    :cond_1
    return-object v2

    .line 116
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 117
    .local v1, length:I
    new-array v2, v1, [B

    .line 119
    .local v2, outBytes:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 120
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initAcceptButton()V
    .locals 2

    .prologue
    .line 249
    const v0, 0x7f100053

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptButton:Landroid/widget/Button;

    .line 251
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$2;-><init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    return-void
.end method

.method private initCancelButton()V
    .locals 2

    .prologue
    .line 266
    const v1, 0x7f100054

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 267
    .local v0, cancelButton:Landroid/widget/Button;
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$3;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$3;-><init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    return-void
.end method

.method private initCheckBox()V
    .locals 2

    .prologue
    .line 278
    const v0, 0x7f100052

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptCheck:Landroid/widget/CheckBox;

    .line 279
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptCheck:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$4;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$4;-><init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 285
    return-void
.end method

.method private initUnreadCount()V
    .locals 7

    .prologue
    .line 361
    const/4 v6, 0x0

    .line 363
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 365
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    if-eqz v6, :cond_0

    .line 376
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_0
    return-void

    .line 375
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 376
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private initWebView()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 167
    new-instance v3, Ljava/io/File;

    const v6, 0x7f0803d6

    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v3, file:Ljava/io/File;
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imsi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, IMSI:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://socialhub.samsungmobile.com/store/device/disclaimer.sh?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "fe134abce420daeccf3253abe99dd321"

    const/16 v8, 0xf

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .end local v0           #IMSI:Ljava/lang/String;
    .local v1, disclaimerUrl:Ljava/lang/String;
    :goto_0
    const v6, 0x7f100051

    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    .line 193
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    new-instance v7, Landroid/webkit/WebViewClient;

    invoke-direct {v7}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 194
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 195
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 196
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    sget-object v7, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 198
    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->showWebViewProgressDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_1
    iput-boolean v11, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->isErrorReceived:Z

    .line 207
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;-><init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 242
    return-void

    .line 175
    .end local v1           #disclaimerUrl:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 176
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 177
    .local v4, path:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .restart local v1       #disclaimerUrl:Ljava/lang/String;
    goto :goto_0

    .line 179
    .end local v1           #disclaimerUrl:Ljava/lang/String;
    .end local v4           #path:Landroid/net/Uri;
    :cond_1
    const v6, 0x7f0803d7

    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, url:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 183
    invoke-static {v10}, Lcom/seven/Z7/app/SubscriptionStatus;->setApplicationUsageDisclaimerAccepted(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->finish()V

    .line 187
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/seven/util/SamsungUrlEncryptionUtils;->getSubscriptionRenewalParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #disclaimerUrl:Ljava/lang/String;
    goto/16 :goto_0

    .line 200
    .end local v5           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 201
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected dismissWebViewProgressDialog()V
    .locals 2

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 393
    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 394
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->setResult(I)V

    .line 395
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 396
    const-string v0, "AccountSetupDisclaimerWeb"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f040014

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 74
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 75
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initWebView()V

    .line 76
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initAcceptButton()V

    .line 77
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initCancelButton()V

    .line 78
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initCheckBox()V

    .line 79
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initUnreadCount()V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 90
    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 382
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 384
    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 385
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->setResult(I)V

    .line 386
    const/4 v0, 0x1

    .line 388
    :cond_0
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 347
    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getInstance()Lcom/android/email/activity/setup/AccountSetupCustomer;

    move-result-object v0

    .line 348
    .local v0, customer:Lcom/android/email/activity/setup/AccountSetupCustomer;
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->isCombinedEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 349
    invoke-static {p0}, Lcom/digc/seven/SevenSyncProvider;->checkSevenApkVer(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    :cond_0
    return-void
.end method

.method protected showWebViewProgressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 288
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 290
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 291
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080461

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$5;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$5;-><init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 310
    return-void
.end method
