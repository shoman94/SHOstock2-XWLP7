.class public Lcom/seven/Z7/common/Z7ServiceCallback;
.super Ljava/lang/Object;
.source "Z7ServiceCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/seven/Z7/common/Z7ServiceCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field obj:Ljava/lang/Object;

.field params:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/seven/Z7/common/Z7ServiceCallback$1;

    invoke-direct {v0}, Lcom/seven/Z7/common/Z7ServiceCallback$1;-><init>()V

    sput-object v0, Lcom/seven/Z7/common/Z7ServiceCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/seven/Z7/common/Z7ServiceCallback$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/seven/Z7/common/Z7ServiceCallback;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountId()I
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v1, "account_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v1, "error_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventId()I
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v1, "what"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->obj:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v2, "obj"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v2, "obj"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/seven/Z7/util/Z7Marshaller;->decode([B)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->obj:Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v2, "obj"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->obj:Ljava/lang/Object;

    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Z7ServiceCallback"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getReferenceId()I
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v1, "ref_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getResultCode()I
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v1, "result_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSystemCallbackType()Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v1, "what"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->fromId(I)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v0

    return-object v0
.end method

.method public getTokenId()I
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v1, "token_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasErrorCode()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasErrorText()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v1, "error_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasReferenceId()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v1, "ref_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasTokenId()Z
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v1, "token_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v0, sb:Ljava/lang/StringBuffer;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    const-string v3, "what"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {p0}, Lcom/seven/Z7/common/Z7ServiceCallback;->hasReferenceId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const-string v1, "refId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/seven/Z7/common/Z7ServiceCallback;->getReferenceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/seven/Z7/common/Z7ServiceCallback;->hasTokenId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    const-string v1, "tokenId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/seven/Z7/common/Z7ServiceCallback;->getTokenId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 204
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/seven/Z7/common/Z7ServiceCallback;->params:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method
