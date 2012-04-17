.class public Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0a0121

    .line 529
    if-nez p1, :cond_0

    .line 551
    :goto_0
    :pswitch_0
    return v0

    .line 530
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 551
    const v0, 0x7f0a011a

    goto :goto_0

    .line 531
    :pswitch_1
    const v0, 0x7f0a011b

    goto :goto_0

    .line 532
    :pswitch_2
    const v0, 0x7f0a011c

    goto :goto_0

    .line 533
    :pswitch_3
    const v0, 0x7f0a011d

    goto :goto_0

    .line 534
    :pswitch_4
    const v0, 0x7f0a011e

    goto :goto_0

    .line 535
    :pswitch_5
    const v0, 0x7f0a011f

    goto :goto_0

    .line 536
    :pswitch_6
    const v0, 0x7f0a0120

    goto :goto_0

    .line 538
    :pswitch_7
    const v0, 0x7f0a0122

    goto :goto_0

    .line 539
    :pswitch_8
    const v0, 0x7f0a0123

    goto :goto_0

    .line 540
    :pswitch_9
    const v0, 0x7f0a0124

    goto :goto_0

    .line 541
    :pswitch_a
    const v0, 0x7f0a0125

    goto :goto_0

    .line 542
    :pswitch_b
    const v0, 0x7f0a0126

    goto :goto_0

    .line 543
    :pswitch_c
    const v0, 0x7f0a0127

    goto :goto_0

    .line 544
    :pswitch_d
    const v0, 0x7f0a0128

    goto :goto_0

    .line 545
    :pswitch_e
    const v0, 0x7f0a0129

    goto :goto_0

    .line 546
    :pswitch_f
    const v0, 0x7f0a012a

    goto :goto_0

    .line 547
    :pswitch_10
    const v0, 0x7f0a012b

    goto :goto_0

    .line 548
    :pswitch_11
    const v0, 0x7f0a012c

    goto :goto_0

    .line 549
    :pswitch_12
    const v0, 0x7f0a012d

    goto :goto_0

    .line 550
    :pswitch_13
    const v0, 0x7f0a012e

    goto :goto_0

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 524
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
