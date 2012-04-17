.class public Lcom/seven/Z7/common/Z7Preference;
.super Ljava/lang/Object;
.source "Z7Preference.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/seven/Z7/common/Z7Preference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private key:Ljava/lang/String;

.field private type:I

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/seven/Z7/common/Z7Preference$1;

    invoke-direct {v0}, Lcom/seven/Z7/common/Z7Preference$1;-><init>()V

    sput-object v0, Lcom/seven/Z7/common/Z7Preference;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Lcom/seven/Z7/common/Z7Preference;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "object"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/seven/Z7/common/Z7Preference;->key:Ljava/lang/String;

    .line 48
    invoke-direct {p0, p2}, Lcom/seven/Z7/common/Z7Preference;->setValue(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static getType(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, type:I
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 31
    const/4 v0, 0x4

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 33
    const/4 v0, 0x3

    goto :goto_0

    .line 34
    :cond_2
    instance-of v1, p0, Ljava/lang/Integer;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/lang/Short;

    if-eqz v1, :cond_4

    .line 35
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 36
    :cond_4
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 37
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/common/Z7Preference;->key:Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/seven/Z7/common/Z7Preference;->readValue(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/common/Z7Preference;->value:Ljava/lang/Object;

    .line 100
    return-void
.end method

.method private readValue(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/seven/Z7/common/Z7Preference;->type:I

    .line 74
    iget v1, p0, Lcom/seven/Z7/common/Z7Preference;->type:I

    if-nez v1, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 77
    :cond_0
    iget v1, p0, Lcom/seven/Z7/common/Z7Preference;->type:I

    packed-switch v1, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot handle type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/seven/Z7/common/Z7Preference;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 83
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setValue(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 64
    invoke-static {p1}, Lcom/seven/Z7/common/Z7Preference;->getType(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/seven/Z7/common/Z7Preference;->type:I

    .line 65
    iget v0, p0, Lcom/seven/Z7/common/Z7Preference;->type:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value cannot be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/seven/Z7/common/Z7Preference;->value:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method private writeValue(Landroid/os/Parcel;ILjava/lang/Object;)V
    .locals 3
    .parameter "dest"
    .parameter "valueType"
    .parameter "mValue"

    .prologue
    const/4 v0, 0x0

    .line 109
    if-nez p3, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    .end local p3
    :goto_0
    return-void

    .line 114
    .restart local p3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    packed-switch p2, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot handle type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :pswitch_0
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 120
    .restart local p3
    :pswitch_1
    check-cast p3, Ljava/lang/Long;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 123
    .restart local p3
    :pswitch_2
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .restart local p3
    :pswitch_3
    check-cast p3, Ljava/lang/Boolean;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/seven/Z7/common/Z7Preference;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/seven/Z7/common/Z7Preference;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/seven/Z7/common/Z7Preference;->type:I

    iget-object v1, p0, Lcom/seven/Z7/common/Z7Preference;->value:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/seven/Z7/common/Z7Preference;->writeValue(Landroid/os/Parcel;ILjava/lang/Object;)V

    .line 106
    return-void
.end method
