.class public abstract Lcom/android/emailcommon/mail/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Body;
.implements Lcom/android/emailcommon/mail/Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/mail/Message$RecipientType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/android/emailcommon/mail/Message;


# instance fields
.field private mFlags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/emailcommon/mail/Flag;",
            ">;"
        }
    .end annotation
.end field

.field protected mFolder:Lcom/android/emailcommon/mail/Folder;

.field protected mInternalDate:Ljava/util/Date;

.field private mMessageId_original:J

.field private mTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    sput-object v0, Lcom/android/emailcommon/mail/Message;->EMPTY_ARRAY:[Lcom/android/emailcommon/mail/Message;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/emailcommon/mail/Message;->mFlags:Ljava/util/HashSet;

    .line 39
    iput-object v0, p0, Lcom/android/emailcommon/mail/Message;->mTags:Ljava/util/HashMap;

    return-void
.end method

.method private getFlagSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/emailcommon/mail/Flag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mFlags:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/mail/Message;->mFlags:Ljava/util/HashSet;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mFlags:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public abstract getBody()Lcom/android/emailcommon/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getFlags()[Lcom/android/emailcommon/mail/Flag;
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method public abstract getFrom()[Lcom/android/emailcommon/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getImportance()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getInternalDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mInternalDate:Ljava/util/Date;

    return-object v0
.end method

.method public abstract getMessageId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getMessageId_original()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/android/emailcommon/mail/Message;->mMessageId_original:J

    return-wide v0
.end method

.method public abstract getReadReceiptTo()[Lcom/android/emailcommon/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getReceivedDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getReplyTo()[Lcom/android/emailcommon/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getSentDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getSubject()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getTagsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mTags:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mTags:Ljava/util/HashMap;

    .line 197
    :goto_0
    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/mail/Message;->mTags:Ljava/util/HashMap;

    .line 196
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mTags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 197
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mTags:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public isSet(Lcom/android/emailcommon/mail/Flag;)Z
    .locals 1
    .parameter "flag"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract setBody(Lcom/android/emailcommon/mail/Body;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public setFlag(Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 0
    .parameter "flag"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/android/emailcommon/mail/Message;->setFlagDirectlyForTest(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 175
    return-void
.end method

.method public final setFlagDirectlyForTest(Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 1
    .parameter "flag"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 166
    if-eqz p2, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFlags([Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 4
    .parameter "flags"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p1

    .local v0, arr$:[Lcom/android/emailcommon/mail/Flag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 185
    .local v1, flag:Lcom/android/emailcommon/mail/Flag;
    invoke-virtual {p0, v1, p2}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v1           #flag:Lcom/android/emailcommon/mail/Flag;
    :cond_0
    return-void
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public setInternalDate(Ljava/util/Date;)V
    .locals 0
    .parameter "internalDate"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/emailcommon/mail/Message;->mInternalDate:Ljava/util/Date;

    .line 81
    return-void
.end method

.method public setMessageId_original(J)V
    .locals 0
    .parameter "set"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/android/emailcommon/mail/Message;->mMessageId_original:J

    .line 52
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tagName"
    .parameter "value"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mTags:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/mail/Message;->mTags:Ljava/util/HashMap;

    .line 205
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mTags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mTags:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mTags:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_1
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/emailcommon/mail/Message;->mUid:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Message;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method
