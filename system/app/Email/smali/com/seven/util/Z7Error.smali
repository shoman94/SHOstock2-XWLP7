.class public Lcom/seven/util/Z7Error;
.super Ljava/lang/Exception;
.source "Z7Error.java"


# instance fields
.field private m_cause:Ljava/lang/Throwable;

.field private m_description:Ljava/lang/String;

.field private m_errorCode:Lcom/seven/util/Z7ErrorCode;

.field private m_nestedError:Lcom/seven/util/Z7Error;

.field private transient m_parameters:[Ljava/lang/String;

.field private m_resultCode:Lcom/seven/util/Z7Result;


# direct methods
.method public constructor <init>(Lcom/seven/util/Z7ErrorCode;Lcom/seven/util/Z7Result;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "errorCode"
    .parameter "resultCode"
    .parameter "description"
    .parameter "thr"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/seven/util/Z7Error;->m_description:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/seven/util/Z7Error;->m_nestedError:Lcom/seven/util/Z7Error;

    .line 24
    iput-object v0, p0, Lcom/seven/util/Z7Error;->m_parameters:[Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/seven/util/Z7Error;->init(Lcom/seven/util/Z7ErrorCode;Lcom/seven/util/Z7Result;Ljava/lang/String;Lcom/seven/util/Z7Error;)V

    .line 67
    iput-object p4, p0, Lcom/seven/util/Z7Error;->m_cause:Ljava/lang/Throwable;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/seven/util/Z7ErrorCode;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "errorCode"
    .parameter "thr"

    .prologue
    .line 77
    sget-object v0, Lcom/seven/util/Z7ErrorCode;->Z7_ERR_NOERROR:Lcom/seven/util/Z7ErrorCode;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/seven/util/Z7Result;->Z7_OK:Lcom/seven/util/Z7Result;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/seven/util/Z7Error;-><init>(Lcom/seven/util/Z7ErrorCode;Lcom/seven/util/Z7Result;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void

    .line 77
    :cond_0
    sget-object v0, Lcom/seven/util/Z7Result;->Z7_E_FAIL:Lcom/seven/util/Z7Result;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "thr"

    .prologue
    .line 71
    sget-object v0, Lcom/seven/util/Z7ErrorCode;->Z7_ERR_INTERNAL_ERROR:Lcom/seven/util/Z7ErrorCode;

    invoke-direct {p0, v0, p1}, Lcom/seven/util/Z7Error;-><init>(Lcom/seven/util/Z7ErrorCode;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method private init(Lcom/seven/util/Z7ErrorCode;Lcom/seven/util/Z7Result;Ljava/lang/String;Lcom/seven/util/Z7Error;)V
    .locals 0
    .parameter "errorCode"
    .parameter "resultCode"
    .parameter "description"
    .parameter "nestedError"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/seven/util/Z7Error;->m_errorCode:Lcom/seven/util/Z7ErrorCode;

    .line 101
    iput-object p2, p0, Lcom/seven/util/Z7Error;->m_resultCode:Lcom/seven/util/Z7Result;

    .line 102
    iput-object p3, p0, Lcom/seven/util/Z7Error;->m_description:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/seven/util/Z7Error;->m_nestedError:Lcom/seven/util/Z7Error;

    .line 104
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/seven/util/Z7Error;->m_cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    iget-object v0, p0, Lcom/seven/util/Z7Error;->m_cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "javax.mail.MessagingException"

    iget-object v1, p0, Lcom/seven/util/Z7Error;->m_cause:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/seven/util/Z7Error;->m_cause:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/seven/util/Z7Error;->m_nestedError:Lcom/seven/util/Z7Error;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/seven/util/Z7Error;->m_nestedError:Lcom/seven/util/Z7Error;

    invoke-virtual {v0}, Lcom/seven/util/Z7Error;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "Error(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    iget-object v1, p0, Lcom/seven/util/Z7Error;->m_errorCode:Lcom/seven/util/Z7ErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 168
    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    iget-object v1, p0, Lcom/seven/util/Z7Error;->m_resultCode:Lcom/seven/util/Z7Result;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 170
    iget-object v1, p0, Lcom/seven/util/Z7Error;->m_description:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 171
    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    iget-object v1, p0, Lcom/seven/util/Z7Error;->m_description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/seven/util/Z7Error;->m_nestedError:Lcom/seven/util/Z7Error;

    if-eqz v1, :cond_1

    .line 176
    const-string v1, ", nested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    iget-object v1, p0, Lcom/seven/util/Z7Error;->m_nestedError:Lcom/seven/util/Z7Error;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 179
    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
