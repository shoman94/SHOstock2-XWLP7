.class public Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
.super Ljava/lang/Object;
.source "CallTypeHelper.java"


# instance fields
.field private final mIncomingName:Ljava/lang/CharSequence;

.field private final mMissedName:Ljava/lang/CharSequence;

.field private final mNewMissedColor:I

.field private final mNewVoicemailColor:I

.field private final mOutgoingName:Ljava/lang/CharSequence;

.field private final mVoicemailName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "resources"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const v0, 0x7f0a0095

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    .line 45
    const v0, 0x7f0a0096

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    .line 46
    const v0, 0x7f0a0097

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    .line 47
    const v0, 0x7f0a0098

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    .line 48
    const v0, 0x7f07000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mNewMissedColor:I

    .line 49
    const v0, 0x7f07000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mNewVoicemailColor:I

    .line 50
    return-void
.end method


# virtual methods
.method public getHighlightedColor(I)Ljava/lang/Integer;
    .locals 3
    .parameter "callType"

    .prologue
    const/4 v0, 0x0

    .line 85
    sparse-switch p1, :sswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :sswitch_0
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mNewMissedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 109
    :goto_0
    :sswitch_1
    return-object v0

    .line 103
    :sswitch_2
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mNewVoicemailColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 106
    :sswitch_3
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mNewVoicemailColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 109
    :sswitch_4
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->mNewVoicemailColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_0
        0xf -> :sswitch_1
        0x32 -> :sswitch_1
    .end sparse-switch
.end method
