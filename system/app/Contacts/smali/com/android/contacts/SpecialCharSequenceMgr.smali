.class public Lcom/android/contacts/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;,
        Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    }
.end annotation


# static fields
.field private static DebugCallDropKeystring:[Ljava/lang/String;

.field private static PersoKeystring:[Ljava/lang/String;

.field private static SellOutSMS:[Ljava/lang/String;

.field private static keystring:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    const/16 v0, 0x5d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#197328640#"

    aput-object v1, v0, v3

    const-string v1, "*#0011#"

    aput-object v1, v0, v4

    const-string v1, "*#0228#"

    aput-object v1, v0, v5

    const-string v1, "*#9900#"

    aput-object v1, v0, v6

    const-string v1, "*#0283#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*#32489#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*#2580#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*#0782#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "*#9090#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "*#7284#"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "*#872564#"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "*#4238378#"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "*#745#"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "*#746#"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "*#2263#"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "*#1575#"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "*#6984125*#"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "#*2886#"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "*#2767*2878#"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "*#147852#"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "*#369852#"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "*#3214789650#"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "*#03#"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "*#0589#"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "*#1111#"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "*#2222#"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "*#3214789#"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "*#338439#"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "*#3282*727336*#"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "*#273283*255*3282*#"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "*#273283*255*663282*#"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "*#12580*369#"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "*#1234#"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "*#44336#"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "*#737425#"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "*#5238973#"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "*#22888973#"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "*#0*#"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "*#0842#"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "*#0673#"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "*#0289#"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "*#2663#"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "*#0588#"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "*#3264#"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "*#2664#"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "*#34971539#"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "*#7412365#"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "*#*#28346#*#*"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "*#232337#"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "*#232331#"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "*#46744674#"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "*#80#"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "*#07#"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "*#232339#"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "*#526#"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "*#528#"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "*#232338#"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "*#272886#"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "*#0002*28346#"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "*#0368#"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "*2767*3855#"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "*#7594#"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "*#8736364#"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "*#3695147#"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "*#6854123#"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "*#232332#"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "*#0599#"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "*#7298#"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "*#2424#"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "*#865625#"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "*#742690#"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "*#367#"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "*#1*#"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "*#7353#"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "*#22558463#"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "*#4732#"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "*#22558463#"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "*#866622728*#"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "*#6328377466#"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "*#6328378#"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "*#28777#"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "*#222875#"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "*#87976633#"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "*#87976633#"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "*#251#"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "*#250#"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "*#350#"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "*#86824#"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "*#4327#"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "*#22235#"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "*#28346#"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "*#301279#"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "*#9920#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    .line 136
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*2767*73876766#"

    aput-object v1, v0, v3

    const-string v1, "*2767*738767633#"

    aput-object v1, v0, v4

    const-string v1, "*2767*7387678378#"

    aput-object v1, v0, v5

    const-string v1, "*2767*7387677763#"

    aput-object v1, v0, v6

    const-string v1, "*2767*4387264636#"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    .line 142
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#7465625#"

    aput-object v1, v0, v3

    const-string v1, "*7465625*638*#"

    aput-object v1, v0, v4

    const-string v1, "#7465625*638*#"

    aput-object v1, v0, v5

    const-string v1, "*7465625*782*#"

    aput-object v1, v0, v6

    const-string v1, "#7465625*782*#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*7465625*77*#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#7465625*77*#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*7465625*27*#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#7465625*27*#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    .line 151
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*#22553767#"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->DebugCallDropKeystring:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method static IsDebugCallDropKeyString(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 325
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->DebugCallDropKeystring:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 327
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->DebugCallDropKeystring:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    const/4 v1, 0x1

    .line 330
    :goto_1
    return v1

    .line 325
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static IsKeyString(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 347
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 351
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const/4 v1, 0x1

    .line 357
    :goto_1
    return v1

    .line 347
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static IsPersoKeyString(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 372
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 374
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const/4 v1, 0x1

    .line 378
    :goto_1
    return v1

    .line 372
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static IsSellOutKeyString(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 361
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 363
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    const/4 v1, 0x1

    .line 367
    :goto_1
    return v1

    .line 361
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 13
    .parameter "context"
    .parameter "input"
    .parameter "textField"

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 403
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    .line 405
    .local v9, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v11

    .line 454
    :goto_0
    return v1

    .line 409
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 410
    .local v10, len:I
    if-le v10, v12, :cond_1

    const/4 v1, 0x5

    if-ge v10, v1, :cond_1

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    const/4 v1, 0x0

    add-int/lit8 v3, v10, -0x1

    :try_start_0
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 423
    .local v8, index:I
    new-instance v0, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 426
    .local v0, handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v1, v8, -0x1

    const/4 v3, -0x1

    invoke-direct {v2, v1, v0, v3}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 430
    .local v2, sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v1, v8, -0x1

    iput v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 431
    invoke-virtual {v2, p2}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 434
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 435
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0a0084

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 436
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0a0083

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 438
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 439
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 440
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 444
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 447
    const/4 v1, -0x1

    const-string v3, "content://icc/adn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "number"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v12

    .line 449
    goto/16 :goto_0

    .line 450
    .end local v0           #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v2           #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v8           #index:I
    :catch_0
    move-exception v1

    :cond_1
    move v1, v11

    .line 454
    goto/16 :goto_0
.end method

.method static handleCallDropViewScreen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "input"

    .prologue
    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 313
    .local v1, len:I
    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsDebugCallDropKeyString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 317
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    const/4 v2, 0x1

    .line 321
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 1
    .parameter "context"
    .parameter "input"
    .parameter "textField"

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z
    .locals 5
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"
    .parameter "textField"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0, p3}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestmodeSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v2, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestMode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v1

    .line 180
    :cond_1
    const-string v3, "SpecialCharSequenceMgr"

    const-string v4, "GGSM_DBG_SCR_FOR_CD Check"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v3, "SpecialCharSequenceMgr"

    const-string v4, "GGSM_DBG_SCR_FOR_CD handleCallDropViewScreen is called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCallDropViewScreen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "GGSM_DBG_SCR_FOR_CD return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_2
    const-string v1, "SpecialCharSequenceMgr"

    const-string v3, "GGSM_DBG_SCR_FOR_CD return false"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 193
    goto :goto_0
.end method

.method static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"

    .prologue
    const/4 v2, 0x1

    .line 471
    const-string v1, "*#06#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 475
    .local v0, phoneType:I
    if-ne v0, v2, :cond_0

    .line 476
    invoke-static {p0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->showIMEIPanel(Landroid/content/Context;Z)V

    move v1, v2

    .line 484
    .end local v0           #phoneType:I
    :goto_0
    return v1

    .line 478
    .restart local v0       #phoneType:I
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 479
    invoke-static {p0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->showMEIDPanel(Landroid/content/Context;Z)V

    move v1, v2

    .line 480
    goto :goto_0

    .line 484
    .end local v0           #phoneType:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v1, 0x0

    .line 458
    const-string v2, "**04"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "**05"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 467
    :cond_1
    :goto_0
    return v1

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "Failed to handlePinMmi due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "input"

    .prologue
    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 208
    .local v1, len:I
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const-string v2, "*#*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "#*#*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    add-int/lit8 v5, v1, -0x4

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    const/4 v2, 0x1

    .line 215
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static handleTestMode(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "keyPressValue"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 220
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 221
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, imsi:Ljava/lang/String;
    const-string v5, "ril.FS"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, fs_prop:Ljava/lang/String;
    if-nez p1, :cond_4

    .line 225
    const-string v5, "15"

    invoke-virtual {p2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1-5"

    invoke-virtual {p2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "999999999999999"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v4, :cond_3

    :cond_1
    const-string v5, "15"

    invoke-virtual {p2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "1-5"

    invoke-virtual {p2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    const-string v5, "true"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 229
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    const-string v6, "android_secret_code://$$15"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 231
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static handleTestmodeSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 242
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, IMEIstr:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 245
    .local v3, len:I
    const-string v4, "*#272*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, get:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    const-string v6, "android_secret_code://83052020100812173552301071192687#"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 262
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 307
    .end local v1           #get:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v4

    .line 266
    :cond_0
    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeyString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 269
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 272
    goto :goto_0

    .line 274
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const/16 v4, 0xc

    if-le v3, v4, :cond_2

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsSellOutKeyString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 276
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 278
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 279
    goto :goto_0

    .line 281
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v4, 0x7

    if-le v3, v4, :cond_5

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsPersoKeyString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 285
    const-string v4, "*#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 287
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_perso_get_status_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 289
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    move v4, v5

    .line 304
    goto/16 :goto_0

    .line 291
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 293
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_perso_lock_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 295
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 299
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_perso_unlock_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 301
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 307
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method static showIMEIPanel(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "useSystemWindow"

    .prologue
    .line 488
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, imeiStr:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a007b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 498
    .local v0, alert:Landroid/app/AlertDialog;
    return-void
.end method

.method static showMEIDPanel(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "useSystemWindow"

    .prologue
    .line 501
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, meidStr:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a007c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 511
    .local v0, alert:Landroid/app/AlertDialog;
    return-void
.end method
