.class public Lcom/android/email/mail/store/imap/ImapList;
.super Lcom/android/email/mail/store/imap/ImapElement;
.source "ImapList.java"


# static fields
.field public static final EMPTY:Lcom/android/email/mail/store/imap/ImapList;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/store/imap/ImapElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/android/email/mail/store/imap/ImapList$1;

    invoke-direct {v0}, Lcom/android/email/mail/store/imap/ImapList$1;-><init>()V

    sput-object v0, Lcom/android/email/mail/store/imap/ImapList;->EMPTY:Lcom/android/email/mail/store/imap/ImapList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapElement;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method private final flatten(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "sb"

    .prologue
    .line 205
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 207
    if-lez v1, :cond_0

    .line 208
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 211
    .local v0, e:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/android/email/mail/store/imap/ImapList;->flatten(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 206
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isString()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 217
    .end local v0           #e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_3
    const/16 v2, 0x5d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    return-object p1
.end method


# virtual methods
.method add(Lcom/android/email/mail/store/imap/ImapElement;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t add null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const/4 v1, 0x1

    .line 171
    :goto_1
    return v1

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 176
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapElement;

    .line 178
    .local v0, e:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->destroy()V

    goto :goto_0

    .line 180
    .end local v0           #e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    .line 182
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapElement;->destroy()V

    .line 183
    return-void
.end method

.method public equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z
    .locals 5
    .parameter "that"

    .prologue
    const/4 v3, 0x0

    .line 223
    invoke-super {p0, p1}, Lcom/android/email/mail/store/imap/ImapElement;->equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 235
    :goto_0
    return v2

    :cond_0
    move-object v1, p1

    .line 226
    check-cast v1, Lcom/android/email/mail/store/imap/ImapList;

    .line 227
    .local v1, thatList:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v4

    if-eq v2, v4, :cond_1

    move v2, v3

    .line 228
    goto :goto_0

    .line 230
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 231
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapElement;

    invoke-virtual {v1, v0}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/email/mail/store/imap/ImapElement;->equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 232
    goto :goto_0

    .line 230
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final flatten()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapList;->flatten(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;
    .locals 1
    .parameter "index"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/android/email/mail/store/imap/ImapElement;->NONE:Lcom/android/email/mail/store/imap/ImapElement;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapElement;

    goto :goto_0
.end method

.method final getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapElement;
    .locals 2
    .parameter "key"
    .parameter "prefixMatch"

    .prologue
    .line 120
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 121
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapElement;

    .line 125
    :goto_1
    return-object v1

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 125
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;
    .locals 1
    .parameter "key"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyedListOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapList;
    .locals 1
    .parameter "key"
    .parameter "prefixMatch"

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 142
    .local v0, e:Lcom/android/email/mail/store/imap/ImapElement;
    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapList;

    .end local v0           #e:Lcom/android/email/mail/store/imap/ImapElement;
    :goto_0
    return-object v0

    .restart local v0       #e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_0
    sget-object v0, Lcom/android/email/mail/store/imap/ImapList;->EMPTY:Lcom/android/email/mail/store/imap/ImapList;

    goto :goto_0
.end method

.method public final getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;
    .locals 1
    .parameter "key"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;
    .locals 1
    .parameter "key"
    .parameter "prefixMatch"

    .prologue
    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 159
    .local v0, e:Lcom/android/email/mail/store/imap/ImapElement;
    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapString;

    .end local v0           #e:Lcom/android/email/mail/store/imap/ImapElement;
    :goto_0
    return-object v0

    .restart local v0       #e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_0
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    goto :goto_0
.end method

.method public final getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;
    .locals 2
    .parameter "index"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 103
    .local v0, el:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapList;

    .end local v0           #el:Lcom/android/email/mail/store/imap/ImapElement;
    :goto_0
    return-object v0

    .restart local v0       #el:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_0
    sget-object v0, Lcom/android/email/mail/store/imap/ImapList;->EMPTY:Lcom/android/email/mail/store/imap/ImapList;

    goto :goto_0
.end method

.method public final getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;
    .locals 2
    .parameter "index"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 112
    .local v0, el:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isString()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapString;

    .end local v0           #el:Lcom/android/email/mail/store/imap/ImapElement;
    :goto_0
    return-object v0

    .restart local v0       #el:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_0
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    goto :goto_0
.end method

.method public final is(ILjava/lang/String;)Z
    .locals 1
    .parameter "index"
    .parameter "s"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final is(ILjava/lang/String;Z)Z
    .locals 1
    .parameter "index"
    .parameter "s"
    .parameter "prefixMatch"

    .prologue
    .line 82
    if-nez p3, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/mail/store/imap/ImapString;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isList()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public final isString()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
