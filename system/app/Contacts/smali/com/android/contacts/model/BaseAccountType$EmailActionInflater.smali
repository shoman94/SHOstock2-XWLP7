.class public Lcom/android/contacts/model/BaseAccountType$EmailActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 594
    if-nez p1, :cond_0

    const v0, 0x7f0a014a

    .line 600
    :goto_0
    return v0

    .line 595
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 600
    const v0, 0x7f0a0149

    goto :goto_0

    .line 596
    :pswitch_0
    const v0, 0x7f0a0145

    goto :goto_0

    .line 597
    :pswitch_1
    const v0, 0x7f0a0147

    goto :goto_0

    .line 598
    :pswitch_2
    const v0, 0x7f0a0148

    goto :goto_0

    .line 599
    :pswitch_3
    const v0, 0x7f0a0146

    goto :goto_0

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
