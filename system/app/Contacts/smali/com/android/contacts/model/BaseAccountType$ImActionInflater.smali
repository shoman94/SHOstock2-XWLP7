.class public Lcom/android/contacts/model/BaseAccountType$ImActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    const-string v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    const-string v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0a0157

    .line 645
    if-nez p1, :cond_0

    .line 656
    :goto_0
    :pswitch_0
    return v0

    .line 646
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 647
    :pswitch_1
    const v0, 0x7f0a014f

    goto :goto_0

    .line 648
    :pswitch_2
    const v0, 0x7f0a0150

    goto :goto_0

    .line 649
    :pswitch_3
    const v0, 0x7f0a0151

    goto :goto_0

    .line 650
    :pswitch_4
    const v0, 0x7f0a0152

    goto :goto_0

    .line 651
    :pswitch_5
    const v0, 0x7f0a0153

    goto :goto_0

    .line 652
    :pswitch_6
    const v0, 0x7f0a0154

    goto :goto_0

    .line 653
    :pswitch_7
    const v0, 0x7f0a0155

    goto :goto_0

    .line 654
    :pswitch_8
    const v0, 0x7f0a0156

    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
