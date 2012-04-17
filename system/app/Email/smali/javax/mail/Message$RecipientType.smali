.class public Ljavax/mail/Message$RecipientType;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecipientType"
.end annotation


# static fields
.field public static final BCC:Ljavax/mail/Message$RecipientType;

.field public static final CC:Ljavax/mail/Message$RecipientType;

.field public static final TO:Ljavax/mail/Message$RecipientType;


# instance fields
.field protected type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljavax/mail/Message$RecipientType;

    const-string v1, "To"

    invoke-direct {v0, v1}, Ljavax/mail/Message$RecipientType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    .line 73
    new-instance v0, Ljavax/mail/Message$RecipientType;

    const-string v1, "Cc"

    invoke-direct {v0, v1}, Ljavax/mail/Message$RecipientType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    .line 79
    new-instance v0, Ljavax/mail/Message$RecipientType;

    const-string v1, "Bcc"

    invoke-direct {v0, v1}, Ljavax/mail/Message$RecipientType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;

    const-string v1, "To"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    .line 104
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;

    const-string v1, "Cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;

    const-string v1, "Bcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown RecipientType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;

    return-object v0
.end method
