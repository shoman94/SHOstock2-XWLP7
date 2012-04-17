.class public Lgnu/mail/treeutil/StatusEvent;
.super Ljava/util/EventObject;
.source "StatusEvent.java"


# instance fields
.field protected maximum:I

.field protected minimum:I

.field protected operation:Ljava/lang/String;

.field protected type:I

.field protected value:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 54
    iput v0, p0, Lgnu/mail/treeutil/StatusEvent;->minimum:I

    .line 56
    iput v0, p0, Lgnu/mail/treeutil/StatusEvent;->maximum:I

    .line 58
    iput v0, p0, Lgnu/mail/treeutil/StatusEvent;->value:I

    .line 66
    packed-switch p2, :pswitch_data_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :pswitch_0
    iput p2, p0, Lgnu/mail/treeutil/StatusEvent;->type:I

    .line 76
    iput-object p3, p0, Lgnu/mail/treeutil/StatusEvent;->operation:Ljava/lang/String;

    .line 77
    return-void

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 84
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 54
    iput v0, p0, Lgnu/mail/treeutil/StatusEvent;->minimum:I

    .line 56
    iput v0, p0, Lgnu/mail/treeutil/StatusEvent;->maximum:I

    .line 58
    iput v0, p0, Lgnu/mail/treeutil/StatusEvent;->value:I

    .line 85
    packed-switch p2, :pswitch_data_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :pswitch_0
    iput p2, p0, Lgnu/mail/treeutil/StatusEvent;->type:I

    .line 95
    iput-object p3, p0, Lgnu/mail/treeutil/StatusEvent;->operation:Ljava/lang/String;

    .line 96
    iput p4, p0, Lgnu/mail/treeutil/StatusEvent;->minimum:I

    .line 97
    iput p5, p0, Lgnu/mail/treeutil/StatusEvent;->maximum:I

    .line 98
    iput p6, p0, Lgnu/mail/treeutil/StatusEvent;->value:I

    .line 99
    return-void

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lgnu/mail/treeutil/StatusEvent;->type:I

    return v0
.end method
