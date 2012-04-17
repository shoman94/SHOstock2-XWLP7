.class public Lgnu/inet/imap/IMAPResponse;
.super Ljava/lang/Object;
.source "IMAPResponse.java"


# instance fields
.field protected code:Ljava/util/List;

.field protected count:I

.field protected id:Ljava/lang/String;

.field protected mailbox:Ljava/lang/String;

.field protected tag:Ljava/lang/String;

.field protected text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lgnu/inet/imap/IMAPResponse;->count:I

    .line 79
    iput-object v1, p0, Lgnu/inet/imap/IMAPResponse;->mailbox:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lgnu/inet/imap/IMAPResponse;->count:I

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()Ljava/util/List;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponse;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isContinuation()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    const-string v1, "+"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUntagged()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    const-string v1, "*"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toANSIString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    iget v1, p0, Lgnu/inet/imap/IMAPResponse;->count:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 140
    const-string v1, " \u001b[00;31m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    iget v1, p0, Lgnu/inet/imap/IMAPResponse;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 142
    const-string v1, "\u001b[00m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    :cond_0
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPResponse;->isContinuation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    const-string v1, " \u001b[01m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, "\u001b[00m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_1
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->mailbox:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 152
    const-string v1, " \u001b[00;35m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->mailbox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    const-string v1, "\u001b[00m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    :cond_2
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 158
    const-string v1, " \u001b[00;36m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 160
    const-string v1, "\u001b[00m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_3
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->text:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 164
    const-string v1, " \u001b[00;33m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v1, "\u001b[00m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 173
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    iget v1, p0, Lgnu/inet/imap/IMAPResponse;->count:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 178
    iget v1, p0, Lgnu/inet/imap/IMAPResponse;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 180
    :cond_0
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPResponse;->isContinuation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 183
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    :cond_1
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->mailbox:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->mailbox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    :cond_2
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 192
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 195
    :cond_3
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->text:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
